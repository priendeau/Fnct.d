### 
###  This function return 
### 
function DuplicateArrayFilter( ArrayIn, StrElement, IntCurrIndex )
{
 IsFindDuplicate="False" ;
 ValueReturn="" ; 
 for( IntNewIndex in ArrayIn )
 {
  if( ArrayIn[IntNewIndex] ==  StrElement )
  {
   IsFindDuplicate="True" ; 
   IntCurrIndex=-1 ; 
   ValueReturn=sprintf("None:-1",IntCurrIndex)
  }
 }
 if ( IsFindDuplicate == "False")
 {
  IntCurrIndex+=1 ; 
  ValueReturn=sprintf("%s:%d",StrElement,IntCurrIndex) ; 
 }
 return ValueReturn ; 
}
function toArrayContent()
{
 ###
 ### This function work globally. Since no argument added to
 ### function it does take actual variable and play/mangle with it. 
 ###
 StrReturnDuplicate = DuplicateArrayFilter( ArrayContent, ArrayRes[0], IntArrayIndex )
 IntIndexArray = split(StrReturnDuplicate, ArrayNewInsertion, ":" ) ; 
 if( ArrayNewInsertion[2] > 0 )
 {
  IntArrayIndex=ArrayNewInsertion[2] ; 
  ArrayContent[IntArrayIndex]=ArrayNewInsertion[1] ;
  VerboseMsg( sprintf("\tMatch is Added to ArrayContent:[%s]\n",ArrayNewInsertion[0]) ) ;  
 }
 else
 {
  VerboseMsg( sprintf("\tMatch is duplicated:[%s]\n",ArrayRes[0]) ) ;  
 } 
}

function CreateIndexRefBoolGNS()
{
 ###
 ### This function work globally. Since no argument added to
 ### function it does take actual variable and play/mangle with it. 
 ###
 if ( BoolGetNextSample == "True" )
 {
  if( IntX+2 <= IntNF )
  { 
    StrSecondIndex=sprintf("%s %s %s",ArrayFunc[IntX],ArrayFunc[IntX+1],ArrayFunc[IntX+2]) ; 
  }
  StrIndex=StrSecondIndex ; 
 }
}

function EndMatchFunction()
{
 if( StrSecondIndex ~ /$()/ ) 
 {
  IsFullMatch="True" ; 
 }
 sub( RegStrName, "" ,StrSecondIndex) ; 
 match( StrSecondIndex ,RegFunctionName,ArrayRes ) ; 
}

function VerboseMsg( StrMsg )
{
 if( DisplayDebug == "True" )
 {
  printf("%s",StrMsg) ;  
 }
}

function ArgumentOptionFilter()
{
 ###
 ### This function work globally. Since no argument added to
 ### function it does take actual variable and play/mangle with it. 
 ###
 ### Function Context: Does filter option passed with --assign=VAR=VALUE
 ### And does provide a default value when variable N was not used in 
 ### awk --assign declaration . 
 ###
 ### from prompt calling gawk :
 ### gawk --assign=BoolDisplayDebug=True
 ### - assign DisplayDebug=True, if gawk was called without '--assign=BoolDisplayDebug'
 ### like :
 ### FuncBody="$( declare -f TagParser )" /usr/bin/gawk \
 ### --assign=StrName=TagParser -F ' '  -f \
 ### /etc/init.d/Fnct.D/awk-script/FunctInspecter.awk
 ###
 ### DisplayDebug will be initialized to False instead of True . 
 ###
 ### Another variable : TypeInspect
 ### from prompt using --assign=Function will assign IsTypeInspect=Function and 
 ### will curse inside the variable ENVIRON["FuncBody"] transformed into an 
 ### Array with space separated value and will try to find about any function 
 ### delcaration inside this function specified inside 'StrName'  
 ###
 ###
 StrExportNameBody="FuncBody"
 if ( ExportNameBody != "" )
 {
  StrExportNameBody=ExportNameBody ; 
 } 
 DisplayDebug="False" ; 
 if ( BoolDisplayDebug == "True" )
 {
  DisplayDebug="True" ;  
 }

 if ( TypeInspect == "" )
 {
  IsTypeInspect = "Variable" ;
 }
 else
 {
  IsTypeInspect = TypeInspect ; 
 }
 
}

BEGIN{
 
 ArgumentOptionFilter() ; 
 
 ### ENVIRON["FuncBody"]  ; 
 MatchingUniqueNumber="True" ; 
 BoolGetNextSample="False" ;
 StrShortPrefix=StrName ; 
 gsub( /[a-z_\-]+/,"",StrShortPrefix ) ; 
 RegStrName=sprintf("%s[0-9A-Za-z_]+",StrShortPrefix);
 
 if ( IsTypeInspect ~ /[Ff]unction/ )
 {
  RegStrName=sprintf("^function[ \t]+");
  RegFunctionName="[a-zA-Z0-9_]+" ; 
  BoolGetNextSample="True" ; 
  
 }
 
 if ( StrName != "" )
 {
  IntNF = split(ENVIRON[StrExportNameBody], ArrayFunc ) ; 
  
  IntArrayIndex=0 ; 
  for( IntX=1 ; IntX <= IntNF ; IntX++ )
  {
   StrIndex=ArrayFunc[IntX] ; 
   StrSecondIndex=ArrayFunc[IntX] ; 
   FuncMatch="False" ; 
   
   CreateIndexRefBoolGNS() ; 
   
   #if( $0 ~ /()[\t ]*\>/ ) 
   if( StrIndex ~ RegStrName  )
   { 
    IsFullMatch="False" ; 
    VerboseMsg( sprintf("Sample\n\tStrIndex:[%s]\n\tStrSecondIndex:[%s]\n",StrIndex,StrSecondIndex) ) ; 
    
    if ( BoolGetNextSample == "True" )
    {
    EndMatchFunction()
    }
    else
    { 
     match( StrIndex,RegStrName,ArrayRes ) ; 
     VerboseMsg( sprintf("\tFiltered:[%s]\n",ArrayRes[0] ) ) ; 
    }
    
    if( BoolGetNextSample=="True" && IsFullMatch == "True" )
    {
      ### Print Function With IsFullMatch condition
      ### Like respect end-word-boundary to be '()'
      ### printf("result:[%s], IsFullMatch:%s\n",ArrayRes[0],IsFullMatch);
      
      toArrayContent()
      ##3ArrayContent[IntArrayIndex]=ArrayRes[0] ; 
      ###IntArrayIndex+=1;
    }
    else if( BoolGetNextSample=="False" )
    {
     ### Part of printing Variable member of a function. 
     ### ArrayContent[IntArrayIndex]=ArrayRes[0] ; 
     ### IntArrayIndex+=1;
     ###printf("%s ",ArrayRes[0]);
     
     toArrayContent() ; 
    }
   }
   #else
   #{
   # printf("[%s], failed\n",StrIndex) ;
   #}
  } 
 }

 for( IntIndex in ArrayContent )
 {
  printf("%s ",ArrayContent[IntIndex]) ;  
 }
}
