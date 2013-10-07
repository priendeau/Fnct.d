# jack_lst_to_jack_plumbing.awk
BEGIN{
NbConnection=1 ;
IntLSP=1;
issource="false";
isdest="false";
DebugLine="false";
}
{
 if ( $1 ~ /[a-zA-Z]+:/ )
 {
  if( DebugLine == "true" ) printf("Line Detected.[ %s ]\n",$0); 
  if ( issource != "true" && $1 ~ /^[a-zA-Z]+:/  )
  {
   if( DebugLine == "true" ) printf( "At line %s, source is detected Stream:[ %s ]\n", IntLSP, $1 ) ; 
   ArrayJackLsp[IntLSP , "source" ]=$1;
   issource="true";
  }
  if ( isdest != "true" && $0 ~ /^[\t\ ]+/ )
  {
   if( DebugLine == "true" ) printf( "At line %s, destination is detected Stream:[ %s ]\n", IntLSP, $1 ) ; 
   ArrayJackLsp[IntLSP , "dest" ]=$1;
   isdest="true";
  }
  if ( issource == "true" && isdest == "true" )
  {
   IntLSP+=1 ;
   NbConnection+=1 ;
   issource="false";
   isdest="false";
  }
 }
}
END{
for( x = 1 ; x<= NbConnection ; x++ )
{
 if( ArrayJackLsp[x,"source"] != "" )
 {
  varconnection=sprintf("(connect \"%s\" \"%s\"  )\n",ArrayJackLsp[x,"source"],ArrayJackLsp[x,"dest"],x-1) ;
  if( UsingJackConnect == "True" )
  {
   ExecCmd=sprintf("jack_connect %s %s",ArrayJackLsp[x,"source"],ArrayJackLsp[x,"dest"]) ;
   printf( "Variable UsingJackConnect Set to : %s\nExecuting command:[ %s]\n",UsingJackConnect, ExecCmd) ; 
   system( ExecCmd) ; 
  }
  else
  {
   printf("%s",varconnection);
  }
 }
}
}
