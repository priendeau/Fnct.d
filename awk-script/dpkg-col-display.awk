BEGIN{
}
{
 ColName=tolower(ColName) ;
 IntColSectionStart=0 ;
 IntColSectionEnd=0 ;
 if( ColName = "left" )
 {
  IntColSectionStart=0;
  if( NF > 1 )
  {
   IntColSectionEnd=NF/2 ;
  }
  else
  {
   IntColSectionEnd=NF;
  }
  
 }
 if( ColName = "right" )
 {
  IntColSectionEnd=NF;
  
  if( NF > 1 )
  {
   IntColSectionStart=NF/2 ;
  }
  else
  {
   IntColSectionStart=NF;
  }
 }
 Buffer="" ;
 for( intx=IntColSectionStart;intx<=IntColSectionEnd;intx++)
 {
  Buffer=sprintf( "%s %s",Buffer,$(intx) )
 }
 printf("%s\n",Buffer);
}
END{
}
