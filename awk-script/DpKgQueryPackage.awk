ArrayBodyFunc[1]="" ;

function from_stream_parse_template_with_tag( Stream, Template, Tag )
{
  ArrayStream[1]=Stream;
  ArrayStream[2]=Template;
  ArrayStream[3]=Tag;
  return ArrayStream
}

function GrepPackageCommandParse( Stream, Template, Tag )
{
  if( Tag == "get_body_signature" )
  {
    return "GrepPackageCommandParse:from_stream_parse_template_with_tag:__FUNC__( __STREAM__, __TEMPLATE__, __TAG__ )" ; 
  }
  else
  { 
    gsub(/:/,"",Stream) ;  
    IntLength=split(Stream,ArrayPackage,/ /) ; 
    gsub(Tag,ArrayPackage[1],Template) ; 
    return sprintf("%s",Template) ; 
  }

}
function StatementReturnMode( CmdMode, StrFuncReturn , OnEvent )
{
  if( CmdMode == "ExecuteStatement" )
  {
    return system( StrFuncReturn ) ;
  }
  else
  {
    printf("%s\n",StrFuncReturn ) ;
  }
  
}

function FuncPreload( FuncName )
{
  ArrayCoreParser[1]="__STREAM__" ;
  ArrayCoreParser[2]="__TEMPLATE__" ;
  ArrayCoreParser[3]="__TAG__" ;  
  
  ArrayFuncName[1]=GrepPackageCommandParse( "" , "", "get_body_signature" ) ;
  ArrayFuncName[ length(ArrayFuncName)+1 ] = " __FUNC__" ; 
  

  for( IntCx=1 ; IntCx<=IntLengthFuncName ; IntCx++ )
  {
    if( FuncName ~ ArrayFuncName[IntCx]  )
    {
       intArrayFuncUnMarsh=split( ArrayFuncName[IntCx] , ArrayFuncUnMarsh , /:/ ) ;
       ArrayFunctionType[1]=ArrayFuncUnMarsh[3];
       ArrayFunctionType[2]=ArrayFuncUnMarsh[2];
       return ArrayFunctionType ;
    }
  }


}
function ParseInlineContent( Stream , item )
{
  gsub( /:/, "", Stream ) ; 
  CmdEval=sprintf( TemplateContent, item ) ; 
  gsub( /\|/,"\"|\"", CmdEval ) ;
  printf("%s=( %s )\n",VarNameOut,CmdEval) ; 
}
BEGIN{
TemplateDPKGIsInstall="dpkg --get-selections | egrep -ic __TAG__" ; 
StrTag="__TAG__" ; 
}
{ 
  /* The Function Name is used to implement a command Line Calling of Function */
  //FunctionName=FuncType ;
  //ArrayBodyFunc=FuncPreload( FunctionName ) ;
  //for( IntCx=1 ; intCx <= length( ArrayBodyFunc ) ; intCx++ )
  //{
  //  printf( "Array:ArrayBodyFunc[%i]:%s\n",IntCx,ArrayBodyFunc[IntCx] ) ;
  //}
  
  //StatementReturnMode( GrepReturnType, GrepPackageCommandParse( $0, TemplateDPKGIsInstall , StrTag ) ) 
  ParseInlineContent( $0 , $1 ) ; 
}
END{}
