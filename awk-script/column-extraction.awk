#column-extraction.awk
### Shell Variable :
#IntColExtract 
#ParseToVar
#InFuncName
#WithCarrier
BEGIN{
}
{
  if( tolower(WithCarrier) == "true" )
  {
   StreamCarrier="\n" ;
  }
  else
  {
   StreamCarrier=" " ; 
  }
  StreamOut=sprintf("%s%s",$(IntColExtract),StreamCarrier);
  printf("%s",StreamOut) ;
}
END{
}

