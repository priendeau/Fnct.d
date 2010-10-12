function ParseTarFile( StreamBuffer )
{
  Buffer="";
  IntLength=split( StreamBuffer , ArrayStreamBuffer, /[\t\ ]?/ ) ;
  
  EvalCurse="True" ; 
  intx=IntLength
  while( EvalCurse == "True" )
  { 
      if ( ArrayStreamBuffer[intx] ~ /[0-9]+:[0-9]+/ )
      {
        EvalCurse="False" ;
      }
      else
      {
        Buffer=sprintf ("%s%s ",Buffer,ArrayStreamBuffer[intx] );
      }
      intx=intx-1;
  }
  return Buffer;
  
}
BEGIN{
  PBuffer="";
  Buffer=""
  DefaultStartHeader=DefaultStartHeader;
  DefaultEndHeader=DefaultEndHeader;
     
}
{
  PBuffer=sprintf( "%s\n\"%s\"" , PBuffer,  ParseTarFile( $0 ) ) ;
}
END{ 
  printf("%s\n",PBuffer);
}
