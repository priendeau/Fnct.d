function GetSpacer( intnum , DefaultSpacer )
{
    StrSpacer="" ;
    for( intx=0 ; intx <= intnum-1 ; intx++ )
    {
      StrSpacer=sprintf("%s%s",StrSpacer,DefaultSpacer) ;
    }
    return StrSpacer ;
}

function Extremity( ArrayName )
{
 split(ArrayName,ArrayTest,/:/) ;
 IntMax=0 ;
 IntMin=0 ;
 for( Item in  ArrayTest )
 {
   if ( ArrayTest[Item] > IntMin  )
   {
     if ( ArrayTest[Item] < IntMax )
     {
       IntMin = ArrayTest[Item] ;
     }
     else
     {
      IntMax = ArrayTest[Item] ;  
     }
   }
 }
 return sprintf("%d:%d",IntMin,IntMax) ;
}
function BodyInspection( StrShow )
{
  for( intx=1 ; intx <= NF ; intx++ )
  { 
    CurItem=$(intx) ;
    intLnAPartItem=split( CurItem, ArrayPartItem, /=/ ) ;
    if ( intLnAPartItem == 2 )
    { 
      NbFunc=0;
      for ( Item in ArrayPartItem)
      { 
        if(Item == 1)
        {
          if( ArrayPartItem[Item] == StrShow && NbFunc == 0)
          {
            printf("%s\n",ArrayPartItem[Item+1] ) ; 
          }
          if( ArrayPartItem[Item] ~ /function/ )
          {
            NbFunc += 1;
          }
          
        }
        
      }
      NextItem=ArrayPartItem[1] ;
      if( ArrayPartItem[0] == ArrayExcept[3] )
      {
        ArrayOut[1]=NextItem ;
      }
      if( length(ArrayOut[1]) > 0 )
      {
        if( ArrayPartItem[0] == ArrayExcept[1] )
        {
          ArrayOut[2]=NextItem ;
        }
        if( ArrayPartItem[0] == ArrayExcept[2] )
        {
          ArrayOut[3]=NextItem ;
        }
      }
    }
  }
}
function TagSubstraction()
{
  for( intCa in ArrayTagList )
  {
    ArraySize[intSizeCount]-=length( ArrayTagList[intCa] ) ;
  }
}
function DetectTemplate( StrTemplateVar )
{
  if( length(ImportTemplate) <= 0 )
  {
    StrTemplateVar="Parameter %s%s|\n\t  DefaultValue: %s__CR____SPACE____DOC____CR____TAB__" ;
  }
  else
  {
    StrTemplateVar=ImportTemplate ;
  }
  return StrTemplateVar ;
}
function CharParser( StringStream )
{
  ArrayChar[1]="__CR__"
  ArrayChar[2]="__TAB__"
  ArrayCharConv[1]="\n"
  ArrayCharConv[2]="\t"
  for( ItemTurn in ArrayChar )
  {
    gsub( ArrayChar[ItemTurn], ArrayCharConv[ItemTurn], StringStream );
  }
  return StringStream
}
function FuncListTest( StrFuncName )
{
  ValueFind=0 ;
  for ( item in ArrayFunction )
  {
    if ( StrFuncName ~  ArrayFunction[item] )
    {
      ValueFind=1
    }
    if( ValueFind == 1)
    {
      return 1 ;
    }
  }
  return 0 ;
}
BEGIN{
  intSizeCount=0 ; 
  intArrayCommandLine=0;
  LimitVarExpression=30;
  ArrayExcept[1]="FParamVarName";
  ArrayExcept[2]="FParamDefaultValue";
  ArrayExcept[3]="__call_localityLocalName" ;
  ArrayTagList[1]="__SPACE__";
  ArrayTagList[2]="__DOC__";
  Template=DetectTemplate( Template );
  split( ArrayFuncList, ArrayFunction, / /) ;
}
{
  BodyInspection( ArgItemShow ) ;
  if( length(ArrayOut[1]) > 0 )
  {
    if ( length(ArrayOut[2]) > 0 )
    {
      if ( length(ArrayOut[3]) > 0 )
      {
        ArraySize[intSizeCount]=length( ArrayOut[1] + ArrayOut[2] );
        TagSubstraction();
        ArrayCommandLine[intArrayCommandLine]=sprintf( Template, ArrayOut[1], ArrayOut[2], ArrayOut[3] ) ;
        ArrayOut[3]="" ;
        intSizeCount+=1;
        intArrayCommandLine+=1;
      }
      ArrayOut[2]="" ;
    }
  }  
}
END{
  intCSpace=0;
  intSizeCount=0;
  for( IntAddr in ArrayCommandLine )
  {
    split(ArrayCommandLine[IntAddr],ArraySize,/|/) ;
    ArraySize[intSizeCount]=length( ArraySize[1] ) ;
    SizeLen=SizeLen+ArraySize[intSizeCount] ;
    intCSpace++ ;
    intSizeCount++ ; 
  } 
  for( item in ArraySize )
  { Avalue=sprintf( "%d:%d", ArraySize[item], Avalue ) ; }
  StrLimit=Extremity( Avalue );
  split(StrLimit,ArrayLimit,/:/) ;
  MinSpaceValue=ArrayLimit[1] ;
  MaxSpaceValue=ArrayLimit[2] ;
  # FinalSize=SizeLen/intCSpace ; 
  for( IntAddr in ArrayCommandLine )
  {
    split( ArrayCommandLine[IntAddr],ArrayResult,/|/ ) ;
    AStream=CharParser( ArrayResult[1] ) ;
    AStreamEnd=CharParser( ArrayResult[2] ) ;
    gsub(/\|/,"", AStream ) ;
    IntLineSpace=( MaxSpaceValue - LimitVarExpression )  ;
    LineSpacer=GetSpacer( IntLineSpace , " " ) ;
    gsub(/__SPACE__/,LineSpacer, AStream ) ;
    printf("%s%s\n", CharParser( AStream ), CharParser( AStreamEnd ) ) ;
  }
}
