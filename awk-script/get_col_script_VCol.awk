BEGIN{ 
}
{ 
 IntLenArray=split(VCol,ArrayItem,/:/) ; 
 for( intx=1 ; intx <= IntLenArray ; intx++ )
 { 
  Buffer=sprintf("%s %i:[%s]",Buffer,ArrayItem[intx]+skipline,$((ArrayItem[intx])+skipline)) ; 
 } ; 
 printf("%s\n",Buffer) ; 
 Buffer="" ; 
}
END{
}
