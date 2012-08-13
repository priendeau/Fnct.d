### Almost Identical Awk script involved in mutation of Script after 
### a Big screw-up @VDL2 shop in 2001 - 2001 while the Temporary left 
### OnSite Admin went back from pseudo Trainning at Ericsson lab in Mtl...
### Which is probably not and less than rennaping Accenture too from his
### family involved in NBFG from FBN and IBM-ltee division working to 
### fab's out some Wellington-West like shop to prepare some other 
### doubtfull widget like imported stuff from japan like New HTC...
### Not yet decontaminated from doomed Canduc Fission plan it spread-up
### Ebola among country... While This stuff was not decontaminated 
### He propably suffer a lot from last minutes Ebola-vaccin which is
### particulary tuff on healt by receiving it, almost 40 person over 
### 30 die by receiving it.... Comming back from some long vacation,
### He doom the original base64 last-arguments passthru for being too
### complex to understand while it holding almost all useful parameter
### and sometimes code injections to simplifies task... Explain him
### this part was important until some one have to code some better 
### monitoring tools ( nagios at this time was only working on old 
### libc, using also old binding to unpatched bind and offer poor
### performance with kernel 2.2 whas not whished to install any other
### nagios family like which is depending of php and python, sometimes 
### code like this permform more )... So widgetting some xml-like 
### transition parameter transmission, this was left because we had 
### news the Green Card allows us to move and upgrade server for some-
### thing more potent... cluster at least... So this tools was 
### simple xml extraction, this one take base64 information from
### dpkg-debian package ( like apt show <package>) and extract the
### pre-encoded base64 from desc field and decode it... 
### 

BEGIN{ 
 defaultregExptagTrim=/[\<\>\/]/ ;
 IntArrayTag=split(TagNameList,ArrayTag,/,/);
 printf("ArrayTag holding %i tag(s)\n",IntArrayTag); 
 TagRealDef=TagNameList ;
 gsub( /[\<\>\/]/ , "", TagRealDef ) ;
 printf("Cleaned Tag, Plain String is: %s\n", TagRealDef ) ;
 IntArrayRealTag=split(TagRealDef,ArrayTagTemp,/,/);
 IntStartCapture=1;
 for( item in ArrayTagTemp ) 
 {
  #printf("Parsing Element: %s\n", ArrayTagTemp[item] ) ;
  IntPerLoopScan=0 ;
  for ( PerItem in ArrayTagTempCapture )
  {
   if( ArrayTagTemp[item] == ArrayTagTempCapture[PerItem] )
   {
    IntPerLoopScan=1 ;
   }
  }
  if( IntPerLoopScan == 0 )
  {
   printf("Adding Element: %s in ArrayTagTempCapture\n", ArrayTagTemp[item]);
   ArrayTagTempCapture[IntStartCapture]=ArrayTagTemp[item] ;
   IntStartCapture++ ; 
  }
 }
 
 IntNbRealTag=length( ArrayTagTempCapture );
 printf("Nb of Element-Tag :%s\n", IntNbRealTag) ;
 
}
{
 printf("Initial content:%s\n",$0) ; 
 for( intx=1 ; intx <= IntArrayTag ; intx++ )
 { 
  tagName=ArrayTag[intx] ;
  tagID=tagName;
  gsub( /[\<\>\/]/,"" ,tagID) ; 
  
  if( tagName ~ /\// )
  {
   
   IntLengthCurrentTag=length( tagName ) ; 
   tagPos=match($0,tagName) ; 
   ArrayItem[tagID,"end"]=tagPos ; 
  }
  else
  {
   IntLengthCurrentTag=length( tagName ) ; 
   tagPos=match($0,ArrayTag[intx]) + IntLengthCurrentTag ; 
   ArrayItem[tagID,"start"]=tagPos ; 
  }; 
  ArrayItem[tagID,"id"]=tagID; 
  printf("Matching Tag:%s Id:%s Start at pos: %i\n",tagName,tagID,tagPos) ; 
 } 
}
END{
for( ItemArray in ArrayTagTempCapture )
{
 StrElementName=ArrayTagTempCapture[ItemArray] ;
 IntStartElement=ArrayItem[StrElementName,"start"] ;
 IntLengthElement=ArrayItem[StrElementName,"end"]-ArrayItem[StrElementName,"start"] ;
 StrElementContent=substr($0, ArrayItem[StrElementName,"start"] , IntLengthElement )
 if( StrElementName ~ /desc/ )
 {
   printf("Element Name: %s\nStart: %i, End at %i\nContent:\n",StrElementName,ArrayItem[StrElementName,"start"],ArrayItem[StrElementName,"end"]) ;
   system(sprintf("echo \"%s\" | base64 --wrap=0 --decode",StrElementContent)) ; 
 }
 else
 {
  printf("Element Name: %s\nStart: %i, End at %i\nContent:%s\n",StrElementName,ArrayItem[StrElementName,"start"],ArrayItem[StrElementName,"end"],StrElementContent) ;
 }
}
}
