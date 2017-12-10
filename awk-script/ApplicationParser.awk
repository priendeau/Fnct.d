#!/usr/bin/awk 
# -*- file : ApplicationParser.awk -*-

### Example of ApplicationParser:
### 
### First, an application require to be added inside
### an array in this followinf form:
### 
### Following can be runned by almost anyone 
### 
### ArrayCmd["1"]="#/sbin/ifconfig -a" ;
### ArrayCmd["2"]="#/bin/netstat -na --tcp" ;
### 
### Require some priviledge to run... it's the 
### Linux firewall... 
### 
### ArrayCmd["3"]="#/usr/bin/sudo -s /sbin/iptables -t filter -L"
### 
### 
### As seen for example of ArrayCmd from 1 to 3 it 
### does require to put an extra '#' at the 
### beginning. This is the choice of having not 
### interprettable String if it fall in the 
### bash mode... You will get an comment instead
### of couple of instruction and or error.  
### 
### Other things to consider. 
### ExpandAppsCall do use /dev/stderr from passed
### StdErr, where you should initialize it, if it's
### not open. By default the function ExpandAppsCall
### believe StdErr is open . In case it's not you
### may hit some redirection problems.
###


function IntToChar( intNumber )
{
 return sprintf("%c",intNumber) ; 
}

function ToStringValue( intValue )
{
 return sprintf("%s",intValue) ;  
} 

function ArrayToString( ArrayCmd,  CharSep,  StdErr )
{
 ### function ArrayToString
 ### 
 ### Cowardly return in a String from an 
 ### Array by using CharSep as separator.
 ### 
 ### Assuming, CharSep can be char(0) it
 ### will return a stream of sub-string. 
 ### Belong to awk litterature there is 
 ### enought to consider having 
 ### marshalling into a form of Array.
 ### Since Awk inform an array is made 
 ### of  substring and delimiter where 
 ### this one is a Char(0).
 result="" ; 
 start=0 ; 
 
 ArrayCharSep["0"]=32 ; 
 ArrayCharSep["1"]=34 ; 
 
 if ( CharSep == "")
 {
  ### Space = Char(32) ; 
  CharSep = IntToChar( ArrayCharSep["0"] ) ; 
 }
 else if (CharSep == SUBSEP) 
   { # magic value
     CharSep = IntToChar( ArrayCharSep["1"] ) ; 
   } 

 for ( idxArray in ArrayCmd )
 {
  printf("Reading index: %s\n",idxArray ) >  StdErr ; 
  result = sprintf( "%s%s%s" ,result,CharSep,ArrayCmd[ idxArray ] ) ; 
 }
 return result ;
}

function ExpandAppsCall( ArrayCmd , IntIndex , StdErr )
{
 ArrayMsg["0"]="Element from index '%i'\n\t cmd:%s\nError not formatted properly.\n" ; 
 ArrayMsg["1"]="--ExpandAppsCall--:[Return\n[%s]\n]" ; 
 ArrayMsg["2"]="Using application :[%s]\n" ; 
 ArrayMsg["3"]="Information on VarReturn:\n\tlength:%s\n" ;
 ArrayMsg["4"]="Current information inside VarReturn:\n\t:[%s]\n" ;
 ArrayMsg["5"]="Entry in function ExpandAppsCall\n" ; 
 ArrayMsg["6"]="Index request:%s\n" ; 
 ArrayMsg["7"]="--DEBUG-STATEMENT--\n" ;
 
 VarReturn="" ; 
 printf( ArrayMsg["5"] ) >  StdErr ; 
 StrIndex=ToStringValue( IntIndex ) ;
 VarReturn="" ;
 StrExprCmd="" ; 
 if ( StrIndex in ArrayCmd )
 {
  StrExprCmd=ArrayCmd[StrIndex] ; 
  printf(ArrayMsg["2"],StrExprCmd) > StdErr; 
  IntGsub=gsub( /^#/, "", StrExprCmd ) ;
  if( IntGsub > 0 )
  {
   
   #SUBSEP=IntToChar( 0 ) ; 
   ### This Handling of VarReturn, avoid using getline
   ### with embedded while, and filtering no return 
   ### value in case the "application" does return 
   ### somes lines with '\0' all alone. Previous method
   ### to filter VarReturn in a while against value
   ### 0 returned with length . This method change the 
   ### Record Separator variable (RS) to filter '\0'
   ### as a new line and not only provide first-line.
   ### This usually out of awk-box can be done with 
   ### ifconfig | tr '[:cntrl:]' ' ' which remove 
   ### control caracter like \0, \n and even \l . 
   ### 
   ORS=RS ;
   RS=IntToChar( 0 ) ;
   ToStringValue( StrExprCmd ) |& getline VarReturn ;
   ### 
   ### Because RS is important it was saved inside ORS
   ### ans will be restitued after the operation. 
   RS=ORS ; 
   
   #printf(ArrayMsg["3"],length(VarReturn)) > StdErr ; 
   #printf(ArrayMsg["4"],VarReturn) > StdErr ; 
   
   ### Once splitted, the function don't allow to return 
   ### this array ... 
   ### split( VarReturn, ArrayRet , IntToChar( 0 ) ) ;
   #printf(ArrayMsg["1"],VarReturn ) ; 
  }
  else
  {
   ### At this level we have a command with formatting 
   ### problems. All Command-line should start with '#'
   printf(ArrayMsg["0"],StrIndex,StrExprCmd )  > StdErr ; 
  }
 
 }
 else
 {
  ### At this level no command fit inside the 
  ### request and do only forward to screen to 
  ### display only the request, index is the only
  ### value show. 
  printf( ArrayMsg["6"],StrIndex) >  StdErr ; 
  
 }

 close( ToStringValue(StrExprCmd) ) ; 
 return VarReturn ;
}

### 
###  Function ArrayScanFind
### 
###  This function is a method to Traverse an 
### Array from a 1st level of index to traverse.
### It also require passing A String to search 
### and this function will return the index found
### if this one have found. 
### 
### 
### Warning: Parameter inside ArrayScanFind are
### 
### - Array      }
### - StrSearch  } --- Only theses 2 parameters.
### 
### - The parameter result consist in a sharing of
### result variable as member from another function
### having it's variable handled in declaration of 
### this function. 
### 
### - This is also why result is a the end and
### it's writen with a tab.
### 
### visit page 204 from online book : 
### 'GAWK: Effective AWK Programming', 
### published by 'Free Software Foundation'. 
### It explain at the end of the page 2 functions 
### sharing sames variable and it's contents.
### 

### Function signature sharing 
### information with variable 'result' 
### you don't have to call it but it should
### exist inside the other function .
#function ArrayScanFind( Array, StrSearch,  result )
#{
 #if( result == "" )
 #{
  
 #} ; 
 
 
 #if( length( Array ) > 1 )
 #{
  #for( idxArray in Array ) 
  #{
  
  #}
 #}
 #else
 #{
  
 #}
 
 
#}


###
### Function ActionOnQuery
### Declaration :
### ActionOnQuery( ArrayCmd, 
###                Query,
###                ProcessAction,
###                IdAction,
###                TagRepl,
###                ArrayStream )
###
### Definition:
### ArrayCmd       --->  Array holding CMD
###
### Query          ---> The Query String to filter
###
### ProcessAction  ---> It's a True/False value and 
###                     may accept to not execute the
###                     second action 
### IdAction       ---> Which action to run inside 
###                     ArrayCmd
### TagRepl        ---> Default Tag replacement to 
###                     exchange the tag by the result.
###
### ArrayStream    ---> StringStream from ExpandAppsCall 
###                     converted in array
### This function return in String-format and comma 
### value delimited, you need to split it with 
### function split( String, Array, regexp), where
### String is the returned information, Array is
### the new Array Holding all the information.
### Regexp is the default comma value ',' so 
### usually give /,/ . 
###


### Using this example ActionOnQuery : 
###
###
### Example to use : 
### This script is equiped with 2 actions
### - One with 'dpkg --get-selections' 
###  - This one is flavoured with a string-search-ability
### - Result parsed and are directly into second action :
###   'dpkg-reconfigure __PACKAGE__'
###
### To do this it will be usefull to :
###
### - use Internal variable 'Query' and add your 
### search-string : 
###
### - Tell to script to Process the second action
### with Internal variable 'ProcessAction'
###
### - Tell also which action to execute. 
### It wil not refer to Internal variable 
### 'idxItemAction' but 'IdAction' .
### 
### idxItemAction ---> is used to execute the 
### first action choosed inside the ArrayCmd
### 
### vIdAction ----> is used to executes the
### second action and [ MAY ] require to add
### to your command a TAG allowing to replace 
### the tag by the name searched inside query .
### 
### As example , the default script 
###
### use :
### ArrayCmd["2"]="#dpkg-reconfigure __PACKAGE__" ;  
###
### - It require to use Internal Variable TagRepl
### to this purposes . 
###
### - Put Altogether it give following command.
###
### cmd : gawk -vidxItemAction=1     \
###            -vQuery=nvidia        \
###            -vProcessAction=True  \
###            -vIdAction=2          \
###            -vTagRepl=__PACKAGE__ \
###            -f ./DpkgFileFilter.awk
###
###
###
function ActionOnQuery(ArrayCmd, Query,ProcessAction,IdAction,TagRepl,ArrayStream )
{
	localStdErr="/dev/stderr" ; 
	IntSplitPI=split( SortingArrayNumDesc( ArrayStream ), ArraySplit, /,/ ) ; 
	if( length(Query) > 0 )
	{
	 printf("Scanning for Pattern: %s\n",Query) > localStdErr ;
	 DevStdOut="" ; 
  if( (idxItemAction,"redir") in  ArrayCmd )
  {
   DevStdOut=ArrayCmd[idxItemAction,"redir"] ;  
  }
  else
  {
    DevStdOut=localStdErr ; 
  }
  for( idxAS in ArraySplit )
	 {
			if( match( ArraySplit[idxAS], Query ) > 0 )
			{
	   #printf("Package-Query: %s\n",ArraySplit[idxAS]) > localStdErr  ; 	
	   if( tolower( ProcessAction ) == "true" )
	   {
     printf("ProcessAction=True: Match:%s\n",ArraySplit[idxAS]) > localStdErr  ; 	
				 if( IdAction != "" )
				 {
						OldApps=ArrayCmd[IdAction] 
						if( TagRepl == "" )
						{
						 TagRepl="__TAG__" ; 	
						}
						gsub( TagRepl, ArraySplit[idxAS] , ArrayCmd[IdAction] ) ; 
					 if( (idxItemAction,"redir") in  ArrayCmd )
      {
       ArrayCmd[IdAction, "stream-return"]=ExpandAppsCall( ArrayCmd, IdAction, DevStdOut ) ;  
      }
					 ArrayCmd[IdAction]=OldApps ; 
					}	
				}
    if( tolower(ProcessAction) == "false" )
    {
      ### In case ProcessAction==False
      printf("ProcessAction=False: Match:%s\n",ArraySplit[idxAS]) > localStdErr  ; 	
    }
	  }
		}	
	}
	else
	{
	 for( idxAS in ArraySplit )
	 {
			printf("Package: %s\n",ArrayPackageInstalled[idxAS]) > localStdErr  ; 	
		}	
	}
	close( localStdErr );
}

