#!/usr/bin/awk 
# -*- file : ifconfig-interface.awk -*-

### 
### 
### Main script call:
### 
### awk [OPTIONS] -f /home/maxiste/github/Fnct.D/awk-script/ifconfig-interface.awk
### 
### This script run 'ifconfig' and report information asked by the user command
### supply in variable. It require uses of '-vVAR=VALUE' where VAR is the  
### variable name and VALUE is the user information to query the interface .
### 
### 
### for [OPTIONS]
### 
### Passed after awk or gawk it allow calling the ifconfig and reduce uses
### of sed  / grep and some non trivial command to filter the network-interface.
###  
### awk-variable  
### 
### - A query for the interface
### -vQueryInterface :
### 
###   - usual query example : 
###   eth0, eth1, wlan0, wlan1, ppp0, ppp1. 
### 
### - A Query for item or element under this interface
### -vQueryElement :
### 
###  - usual query example :
###  link-encap, hwaddr, mtu, metric, rx-packets ... 
### 
### Somes elements inside this ifconfig-interface does 
### not show value for thems, acting like symbols, 
### calling QueryElement with '+' prefixed to element
### will report TRUE for being present or FALSE , being
### absent .
### 
### 
###  -vQueryElement=+RUNNING
### Other example: 
### up,broadcast,multicast
### 
### 
### 
@include "/etc/init.d/Fnct.D/awk-script/ApplicationParser.awk"

function GetColRange( StringStream, intStartCol, intEndCol , IsDisplayCol )
{
 if( IsDisplayCol == "" )
 {
  IsDisplayCol="False" ;  
 }
 printf("GetColRange: Should extract col %i to %i\n",intStartCol, intEndCol) ; 
 IntSplit=split( StringStream, ArrayLine, IntToChar(10) );
 StrLine="" ; 
 for( idxAL in ArrayLine )
 {
  #printf("%i:%s\n",idxAL,ArrayLine[idxAL] ) ; 
  if( strtonum(idxAL) <= intEndCol && strtonum(idxAL) >= intStartCol )
  {
   if( IsDisplayCol == "False")
   { 
    StrLine=sprintf("%s%s\n",StrLine,ArrayLine[idxAL]) ;
   }
   else
   {
    StrLine=sprintf("%03i : %s\n%s",idxAL,ArrayLine[idxAL],StrLine) ;
   }
  } 
 }
 return StrLine ; 
}

function FindInterface( StrName, StrStream )
{
 IsFound="False" ; 
 IntSplit=split( StrStream, ArrayLine, IntToChar(10) );
 AInterface["0"]["name"]="None" ; 
 AInterface["0"]["line"]="None" ; 
 
 IntStartInterface=0 ; 
 StrAllIface="" ;
 for( idxAL in ArrayLine )
 {
  printf("LINE:%04i :%s\n",idxAL,ArrayLine[idxAL]) ;  
  ### match(string, regexp [, array]) 
  if( match( ArrayLine[idxAL] , /^\w+/ ) == 1 )
  {
   split( ArrayLine[idxAL], AIfaceName, IntToChar(32) ) ; 
   AInterface[ ToStringValue(IntStartInterface) ]["name"]=AIfaceName[1] ; 
   AInterface[ ToStringValue(IntStartInterface) ]["line"]=ToStringValue( idxAL ) ; 
   if( length(StrAllIface) == 0 )
   {
    StrAllIface=sprintf("%s:%s",AIfaceName[1],idxAL) ; 
   }
   else
   {
     StrAllIface=sprintf("%s;%s:%s",StrAllIface,AIfaceName[1],idxAL) ; 
   }
   if( AIfaceName[1] == StrName )
   {
    IsFound=sprintf("True,%i",idxAL) ; 
   }
   #printf("Found Interface:%s\n",AIfaceName[0]) ;  
   IntStartInterface+=1 ;
  }
 }
 printf("IntSplit return length(%i)\n",IntSplit) ;
 for( idxAI in AInterface )
 {
  printf("Interface name:%s line number:%i\n",AInterface[idxAI]["name"], AInterface[idxAI]["line"] ) 
 }
 return sprintf("%s/%s/END,%i",IsFound,StrAllIface,length(ArrayLine)) ; 
}

function GetColInterface( StrInterface, StrStreamFI )
{
 if( StrStreamFI !~ /^False/)
 { 
  StdErr=ToStringValue("/dev/stderr") ; 
  
  ###
  ### Tested query: 
  ### gawk -vIndex=1 -vQueryElement="hwaddr" \
  ### -vQueryInterface="lo" \
  ### -vStrCmd="#/bin/netstat -na --tcp;#/usr/bin/sudo -s /sbin/iptables -t filter -L" \
  ### -f awk-script/ifconfig-interface.awk  ;
  ###
  
  printf("FindInterface report:[%s]\n",StrStreamFI) > StdErr;  
  split( StrStreamFI, AIfaceContext, /\// );
  AContext["start"]=AIfaceContext["1"] ; 
  AContext["end"]=AIfaceContext["3"] ;

  for( idxAC in AContext )
  {
   StrValue=AContext[ idxAC ] ; 
   gsub(/^\w*,/,"",StrValue) ; 
   AContext[ idxAC ]=StrValue ;
   printf("Array AContext: index:%s : %s\n",idxAC,StrValue) > StdErr; 
  }      
  IntRankInSort=0 ; 

  printf("IntRankInSort value:%i\n",IntRankInSort) > StdErr ; 
  ### gensub(regexp, replacement, how [, target]) # 
  ### do a general replacement of first-words + ',' and
  ### erase it. 

  split(AIfaceContext["2"],AIfaceInspec,/;/) ; 
  ### Force sorting array and make result
  ### ascending, starting from lower to higher.
  ### This sort is usefull in :
  ### Expecting dicovering real interface-line end.
  ### By default process only report end-of-line 
  ### for the ifconfig interface cost-you on prompt
  ### but finding to next interface result in a 
  ### sort and filtering value. 
  ### for sorting, see Chapter 8: Arrays in awk 
  ### page 165, there is numerous way to sort.
  ### 
  PROCINFO["sorted_in"]="@ind_num_desc" ; 
  asort( AIfaceInspec )
  
  for( idxAII in AIfaceInspec)
  {
   ### match(string, regexp [, array])
   if( ! match( AIfaceInspec[ idxAII ],StrInterface ) == 1  )
   {
    printf("Array AIfaceInspec %s\n",AIfaceInspec[ idxAII ]) > StdErr ; 
   }
   split(AIfaceInspec[ idxAII ],AIndexEndBlock,/:/) ;
   ### Array : AIndexEndBlock
   ### Hold in form A[1], A[2] , where 
   ### A[1] --> the interface name 
   ### A[2] --> the line-number of this 
   ### interface.  
   ### MUST-FIX
   
   ### Filter to exchange AContext["end"]
   ### to become last-lines of an interface.
   ### By default AContext["end"] get 
   ### last-line number as value. 
   if( IntRankInSort < AIndexEndBlock[2] )
   {
     if( IntRankInSort > AContext["start"] )
     {
      IntRankInSort=AIndexEndBlock[2] ; 
     }
   }
   
  }
  printf("IntRankInSort value:%i",IntRankInSort) > StdErr ; 

  #if ( IntRankInSort-1 < AContext["start"] )
  #{
   #IntRankInSort=AContext["end"]; 
  #}
  
  ### After filtering Higher than
  ### clause in a descendant-filtered array
  ### giving highest rank first, a match not
  ### higher than the end will be substitued.
  ### Usually, a ifconfig-interface is about
  ### 8 to 9 lines of tet to express about
  ### everything, so sorting from END highest
  ### value for a end of a block will be 
  ### ( boundary - 1 ) which might be around 
  ### your value + 9 lines aheads...  
  AContext["end"]=IntRankInSort-1; 

  #for( idxIfC in AIfaceContext )
  #{
  # printf("Array AIfaceContext index:%s, %s\n",idxIfC,AIfaceContext[idxIfC])  ; 
  #}
  
 }
 close(StdErr) ;  
 return sprintf("%i,%i",AContext["start"],AContext["end"] ) ;
}

BEGIN{
 StdErr=ToStringValue("/dev/stderr") ; 
 
 ArrayCmd["1"]="#/sbin/ifconfig -a" ; 
 
 IntIndexCurr=( length( ArrayCmd ) )  ; 
 AMainMsg["0"]="Cmd:[%s] being Added.\n\tUpdating ArrayCmd to index [%i]\n\tCurrent selected index: %i\n";
 AMainMsg["1"]="\nReturn from ExpandAppsCall:[\n%s]\n";
 AMainMsg["2"]="";
 AMainMsg["3"]="";

 if( Index == "" )
 {
  IntIndexQuery=1 ;
 }
 else
 {
  IntIndexQuery=Index;
 } ;
 
 if ( QueryInterface == "" ) 
 {
  QueryInterface="eth0" ; 
 }

 if( StrCmd != "" )
 {
  if( ! IntIndexCurr+1 in ArrayCmd )
  {
   IntIndexCurr+= 1 ; 
   ### 
   ### At thi level there is many information to be passed to StrCmd
   ### and splitting with ';' or colon will allow adding more than
   ### one command at the time. Imaginating all the network command
   ### to be available to a network interface : 
   ### example : 
   ### 
   ### gawk -vIndex=1 -vQueryInterface="eth0" \
   ### -vStrCmd="#/bin/netstat -na --tcp;#/sbin/iptables -t filter -L" -f \
   ### awk-script/ifconfig-interface.awk
   ### 
   ### 
   ### 
   ### split(string, array [, fieldsep [, seps ] ]) 
   IntSplit=split( StrCmd, AAddCmd, IntToChar( 59 ) );
   if ( IntSplit > 0)
   {
    ### A this level Array of String is generated and ready
    ### to filter-out . 
    for( idxAddCmd in AAddCmd )
    {
      if( length(AAddCmd[idxAddCmd]) > 1 )
      {
        printf("Sub-Command added:\n\tCmd:%s\n\tfrom CSV('%s') separated value extracted.\n\tArrayCmd index updated to %i\n",AAddCmd[idxAddCmd], IntToChar( 59 ),IntIndexCurr) > StdErr ; 
        ArrayCmd[IntIndexCurr]=AAddCmd[idxAddCmd] ;
        IntIndexCurr+=1 ;
      }
    }
   }
   else
   {
    ### Because AAddCmd return no value inside IntSplit
    ### it preferrable to use standard Command Addition. 
    ArrayCmd[IntIndexCurr]=StrCmd ;
   }
  }
  if( length(ArrayCmd) < 2 )
  { 
    ### We do print all the command in old-fashion is there is less than
    ### 2 command (1- ifconfig and your... ) 
    ### and if there is many application parsed inside StrCmd they are already 
    ### printed.... 
    printf(AMainMsg["0"], ArrayCmd[ IntIndexCurr ],IntIndexCurr,IntIndexQuery) > StdErr ; 
  }
 } 
 
 ### Loop Allowing Filtering information from passed 
 ### switches'-v', like Index, set to 1 it read the 
 ### default ifconfig-interface, specifying other 
 ### switches like -vStrCmd will:
 ###  
 ### example : gawk -vIndex=1 -vQueryInterface="wlan1" -vStrCmd="/bin/netstat" \
 ###             -f ifconfig-interface.awk
 ###  
 ### -Add inside ArrayCmd another command available:
 ###  - let ArrayCmd["1"] ---> do the ifconfig call.
 ###  - add at ArrayCmd["2"], the command '/bin/netstat'
 ###  
 ###  Notice : 
 ###  -vIndex=1 Is by default associated to first action which
 ###  is already formatted to '#/sbin/ifconfig -a' and
 ###  asking to use Index 1 or command inside ArrayCmd["1"]
 ###  will not throw error in command formatting for 
 ###  ArrayCmd["2"] because there is no check. 
 ###  
 ###  
 ### example : gawk -vIndex=2 -vQueryInterface="wlan1" -vStrCmd="/bin/netstat" \
 ###             -f ifconfig-interface.awk
 ###  
 ###  
 ### Adding more than one command to 'possibly' process one  
 ### of them.
 ###  
 ### example1 : gawk -vIndex=1 \
 ###                 -vQueryInterface="eth0" \
 ###                 -vStrCmd="#/bin/netstat -na --tcp;#/usr/bin/sudo -s /sbin/iptables -t filter -L" \
 ###                 -f awk-script/ifconfig-interface.awk
 ###  
 ### Will process from StrCmd 2 command separated by ';' 
 ###  - /bin/netstat -na --tcp
 ###  - /usr/bin/sudo -s /sbin/iptables -t filter -L 
 ###  
 ###  

 for( itemAction in ArrayCmd )
 {
   #printf("itemAction: %i, cmd: %s\n", itemAction, ArrayCmd[itemAction] ) > StdErr ;
   if ( itemAction == IntIndexQuery )
   {
    StringStreamReturn=ExpandAppsCall( ArrayCmd, itemAction, StdErr) ;
    printf( AMainMsg["1"], StringStreamReturn ) > StdErr ;
    if ( itemAction == 1 )
    {
     printf("Extracting requested interface: %s\n",QueryInterface) > StdErr ;  
     IsFound=FindInterface( QueryInterface, StringStreamReturn ) ; 
     StringStrCol=GetColInterface( QueryInterface, IsFound ) ; 
     printf("StringStrCol return:%s\n",StringStrCol) > StdErr ;
     split(StringStrCol,ArrayPos,/,/) ; 
     printf("ArrayPos return Pos1:%i, Pos2:%i\n",ArrayPos[1],ArrayPos[2]) > StdErr ;  
     StrStreamIface=GetColRange(StringStreamReturn,ArrayPos[1],ArrayPos[2], "False" ) ;
     gsub( QueryInterface ,"",StrStreamIface) ; 
     gsub( /[\t\ ]+/ ," ",StrStreamIface) ; 
     printf("StrStreamIface return:\n%s\n",StrStreamIface) > StdErr ; 
    }
   }
 }
 close( StdErr ) ; 
}

