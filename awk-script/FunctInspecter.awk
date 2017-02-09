BEGIN{
if ( TypeInspect == "" )
{
 IsTypeInspect = "Variable" ;
}
else
{
 IsTypeInspect = TypeInspect ; 
}
 
 ### ENVIRON["FuncBody"]  ; 
}
{
 MatchingUniqueNumber="TRUE" ; 
 BoolGetNextSample="FALSE" ;
 StrShortPrefix=StrName ; 
 gsub( /[a-z_\-]+/,"",StrShortPrefix ) ; 
 RegStrName=sprintf("%s[0-9A-Za-z_]+",StrShortPrefix);
 
 if ( IsTypeInspect ~ /[Ff]unction/ )
 {
  RegStrName=sprintf("^function[ \t]+");
  RegFunctionName="[a-zA-Z0-9_]+" ; 
  BoolGetNextSample="TRUE" ; 
  
 }
 
 IntNF = split(ENVIRON["FuncBody"], ArrayFunc ) ; 
 
 IntArrayIndex=0 ; 
 for( IntX=1 ; IntX <= IntNF ; IntX++ )
 {
  StrIndex=ArrayFunc[IntX] ; 
  StrSecondIndex=ArrayFunc[IntX] ; 
  FuncMatch="FALSE" ; 
  if ( BoolGetNextSample == "TRUE" )
  {
   if( IntX+2 <= IntNF )
   { 
     StrSecondIndex=sprintf("%s %s %s",ArrayFunc[IntX],ArrayFunc[IntX+1],ArrayFunc[IntX+2]) ; 
   }
   StrIndex=StrSecondIndex ; 
  }
  #if( $0 ~ /()[\t ]*\>/ ) 
  if( StrIndex ~ RegStrName  )
  { 
   IsFullMatch="FALSE" ; 
   ### printf("Sample\n\tStrIndex:[%s]\n\tStrSecondIndex:[%s]\n",StrIndex,StrSecondIndex) ; 
   if ( BoolGetNextSample == "TRUE" )
   {
    if( StrSecondIndex ~ /$()/ ) 
    {
     IsFullMatch="TRUE" ; 
    }
    sub( RegStrName, "" ,StrSecondIndex) ; 
    match( StrSecondIndex ,RegFunctionName,ArrayRes ) ; 
   }
   else
   { 
    match( StrIndex,RegStrName,ArrayRes ) ; 
   }
   
   if( BoolGetNextSample=="TRUE" && IsFullMatch == "TRUE" )
   {
     ### Print Function With IsFullMatch condition
     ### Like respect end-word-boundary to be '()'
     ### printf("result:[%s], IsFullMatch:%s\n",ArrayRes[0],IsFullMatch);
     ArrayContent[IntArrayIndex]=ArrayRes[0] ; 
     IntArrayIndex+=1;
   }
   else if( BoolGetNextSample=="FALSE" )
   {
    ### Part of printing Variable member of a function. 
    ArrayContent[IntArrayIndex]=ArrayRes[0] ; 
    IntArrayIndex+=1;
    ###printf("%s ",ArrayRes[0]);
   }
  }
  #else
  #{
  # printf("[%s], failed\n",StrIndex) ;
  #}
 } 
}
END{
for( IntIndex in ArrayContent )
{
 printf("%s ",ArrayContent[IntIndex]) ;  
}
}
