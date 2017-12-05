#!/usr/bin/gawk 
# -*- file : NetworkClientConnection.awk -*-

### 
### UUID:c3a27994-42ab-11e7-8b1d-001e4c8856d6
### Example of NetworkClientConnection in awk.
### Having severals latency in network-client 
### send-message in a non-forwarding event 
### rather than having a no-connection to 
### Addresses ; Remaind a big question in 
### simple Network Client Connection that 
### simply send information in awk-fashion to
### conceive we have an API allowing connection
### to external, including memory, socket , pipe
### handler, and do accept to split in program
### convention to own connector and actor in
### separate semantics. This give possibility
### to send a command and to wait for and in
### opposite case of severity, sending and 
### not asking for confirmation or element to
### return to be filtered. 
### 
### Using parameter '--assign' or '-v' to tel 
### to this awk-script to chose between send-token
### and wait for receipt and only send the 
### command after connection and close the socket.
### The variable is NCCIsReturn is by default to
### "true", set it to "false" let the application
### not waiting to receipt which reduce in time 
### process latency seed in __old_vlc_rate and 
### StartSlewAnalysis. 

### example of command that not waiting a receipt:
### gawk -vNCCCmd="volume" -vNCCIsReturn=true -vNSSAddresses=127.0.0.1 -f NetworkClientConnection.awk

function RandomLocalPort( localport, randomRange )
{
 srand(systime()) ;
 IntReturn=int( randomRange * rand() )+localport ;
 if( IntReturn > 65535 )
 {
   printf("Random range starting value exceed MAXIMUM port-value.\n\t, please review variable NccLocalPortRange\n",IntReturn) > StdErr;
 }
 else
 {
  if( tolower(NCCVerbose) == "true" )
  {
   printf("Local Port used:%i\n",IntReturn) > StdErr;
  }
 }
 
 return IntReturn
}
function Connection( protocol, localport, addr, destport, fileDecl )
{
 ### default example connection String:
 ### "/inet4/tcp/45000/127.0.0.1/5083"
 Service=sprintf(fileDecl ,protocol, localport, addr, destport ) ; 
 return Service ;
}
function TimeOutService( Service , defaultTimeOut )
{
  PROCINFO[Service, "READ_TIMEOUT"] = defaultTimeOut
}
function CommandSend( srvConnection, strCmd , returnElement, OutPutDev )
{
 StrReturn="" ;
 
 printf("%s\n",strCmd) |& srvConnection ;
 if( tolower(returnElement) == "true" )
 {
  
  if( tolower(NCCVerbose) == "true" )
  {
   printf("Sending command(return receipt):%s\n",strCmd) > OutPutDev ; 
  }
  #print VSCCmd |& srvConnection ;
  
  srvConnection |& getline ;
  StrReturn=$0 ; 
  printf("%s\n",StrReturn);
 }
 else
 {
  if( tolower(NCCVerbose) == "true" )
  {
   printf("Sending command(not waiting receipt):%s\n",strCmd) > OutPutDev;  
  }
 }
 return StrReturn ; 
}
BEGIN{ 
 tcp="tcp"; 
 udp="udp";
 StdErr="/dev/stderr" ; 
  
 if( NccLocalPortRange == "" )
 {
  NccLocalPortRange=45000 ; 
 }

 if( NCCVerbose == "" )
 {
  NCCVerbose="false" ; 
 }
 else if( tolower(NCCVerbose) == "true" )
 {
  printf("Warning Verbose configured.\n") > StdErr; 
 }
 
 if ( NCCCmd == "" )
 {
  NCCCmd="get_length" ; 
 } 
 if( NCCIsReturn == "" )
 {
  NCCIsReturn="True"
 }
 if( NSSAddresses == "" )
 {
  NSSAddresses="127.0.0.1" ; 
 }
 else
 {
   if( tolower(NCCVerbose) == "true" )
   {
    printf("Addresse specified from cmdline:(%s)\n",NSSAddresses) > StdErr ;
   } 
 }
 if( NSSTimeOut == "" )
 {
   NSSTimeOut=100 ; 
 }
 else
 {
   if( tolower(NCCVerbose) == "true" )
   {
     printf("Connection configured with timeout of %i ms\n",NSSTimeOut) > StdErr ; 
   } 
 }
 if( NSSPort == "" )
 {
  NSSPort=5083 ; 
 }
 if( NSSUseStdIn == "" )
 {
  NSSUseStdIn="False" ; 
 }
 if( NCCFileDecl == "" )
 {
  NCCFileDecl="/inet4/%s/%d/%s/%d" ; 
 }
 #"/inet4/tcp/45000/127.0.0.1/5083"; 
 #Service=Connection( tcp, 45000, "127.0.0.1", 5083 );
 IntRandomPort=RandomLocalPort( NccLocalPortRange , 1024 ) ; 
 Service=Connection( tcp, IntRandomPort, NSSAddresses, NSSPort , NCCFileDecl ) ;
 TimeOutService(Service,NSSTimeOut) ;
 CommandSend( Service , NCCCmd, NCCIsReturn, StdErr ) ;
 
 #print VSCCmd |& Service ; Service |& getline ; printf("%s\n",$0); close(Services); 
 close(Service);
 close(StdErr) ;
}
