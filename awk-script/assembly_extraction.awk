BEGIN{
}
{ 
  eos=0 ; 
  for( intx=1 ; intx <= NF; intx++ )
  { 
    if( $(intx) ~ /[A-Z]+\ / )
    { 
      startpoint=intx ; 
    } ; 
    if( startpoint > 0 )
    { 
      for( inty=startpoint; inty<=NF; inty++ )
      { 
        printf("%s ",$(inty) ) ; 
      } ; 
      intx=inty ; 
      startpoint=0;
      printf("\n") ; 
    } ; 
  }
}
END{
}
