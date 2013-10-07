BEGIN{
}
{
  StrCharSplit=DefaultCSV ;
  strStream="" ;
  ArrayStopStart[1]=1;
  ArrayStopStart[2]=NF;
  for( intCx=ArrayStopStart[1];intCx<=ArrayStopStart[2];intCx++)
  {
    if( intCx == ArrayStopStart[1] )
    {
      strStream=sprintf("%s%s",$(intCx),StrCharSplit) ;
    }
    else 
    { 
        if( intCx == ArrayStopStart[2] )    
        {
          strStream=sprintf("%s%s",strStream,$(intCx)) ;
        }
        else
        {
          strStream=sprintf("%s%s%s",strStream,StrCharSplit,$(intCx)) ;
        }
  
   }
  }  
  StreamOut=sprintf("%s",strStream);
  printf("%s\n",StreamOut);
}
END{
}
