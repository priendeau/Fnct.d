BEGIN{}
{ 
 split( TagName, ArrayTag, /,/ ) ; 
 for( intx=1 ; intx <= NF-1  ; intx++ )
 { 
   value="" ;
   currline=$intx
   for( itemtag in ArrayTag )
   { 
     ctag=ArrayTag[itemtag] ; 
     if( currline ~ ctag )
     {
      #printf( "At item %i, tag %s detected\n", intx, ctag ) ; 
      value=$( intx+1 ) ; 
     }
     printf("Tag: %s value :%s\n", ctag , value ) ;
     ArrayInfo[ctag]=value ; 
     #print sprintf( "Inspecting following tag: %s\n" , ArrayTag[itemtag] ) ; 
   }
 }
}
END{
 printf("Output:\n") ; 
 for( itemarray in ArrayInfo )
 {
  printf("Tag:%s, value:%s", itemarray, ArrayInfo[itemarray]) ; 
 }
}
