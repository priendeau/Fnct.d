BEGIN{ 
 x=0 ; 
}
{ 
 Buffer="" ; 
 for( intx = 0 ; intx <= NF ; intx++ )
 { 
  if( ( intx >= StartCol ) && ( intx <= EndCol ) )
  { 
   Buffer=sprintf("%s %s",Buffer,$(intx)) ; 
  } 
 } ; 
 printf("%s\n",Buffer) ; 
}
END{
}
