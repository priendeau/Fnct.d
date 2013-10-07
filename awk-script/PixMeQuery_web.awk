BEGIN{}
{
  for(intx=IntScaleStart;intx>=IntScaleStop;intx--)
  { 
    Template=WTPL ; 
    gsub(/__INT__/,intx,Template) ; 
    GetTpl="wget --directory-prefix=%s \"%s\" " ;  
    stream=sprintf(GetTpl,PathDest,Template); 
    printf("Query: %s\n",stream) ; 
    system( stream ) ; }}END{}
