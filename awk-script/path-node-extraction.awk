BEGIN{
}
{
  if( $1 != 0)
  { 
    intLength=split($2,Array,/\//); 
    printf("%s ",Array[intLength-$1+1]) ; 
  } 
}
END{
printf("\n") ; 
}
