#!/usr/bin/awk 
# -*- file : DpkgScript.awk -*-

@include "/etc/init.d/Fnct.D/awk-script/ApplicationParser.awk"

function SortingArrayNumDesc( Array, StrCsv ) 
{
	if( StrCsv == "" )
	{
	 StrCsv="," ; 	
	}
	PROCINFO["sorted_in"]="@ind_num_desc" ; 
	asort( Array ) ; 
 StrReturn="" ; 
 for( idxA in Array )
 {
	 StrReturn=sprintf("%s%s%s",StrReturn,Array[idxA],StrCsv)	
	} 
	return StrReturn; 
}

### 
###
### Function ReturnByPackageStatus 
### 
### Once ExpandAppsCall have return a Stream of String, 
### ReturnByPackageStatus will return a String Comma 
### formated value of all the package matching the 
### string StrKey. The default example consist to 
### filter all the 'install' and leaving, status 
### 'deinstall', 'broken' and even 'pendinginstall' 
### discarded.  
### 
###
###
function ReturnByPackageStatus(StrKey, ArrayCmd, idxItemAction )
{
	###printf("ArrayProperty[stream-return] return:\n%s\n",ArrayCmd[GetIndex( idxItemAction), "stream-return"]) ; 
	localStdErr="/dev/stderr" ; 
	IntStart=0;
	StrPackage="" ;
	IntSplit=split( ArrayCmd[idxItemAction, "stream-return"] , ArrayPackageInspect, IntToChar(10)) ; 
	###  
	for( idxAPI in ArrayPackageInspect )
	{
	  IntSplitSegment=split( ArrayPackageInspect[idxAPI] , ArrayPackage, /[[:space:]]+/ ) ;   
	  if ( ArrayPackage[ToStringValue(2)] == StrKey  )
	  {
		  StrPackage=sprintf("%s%s,",StrPackage,ArrayPackage[ToStringValue(1)] ) ; 
	  }
	}
	if( ( idxItemAction, "redir" ) in  ArrayCmd )
	{
	 printf("IntSplit return %i\n",IntSplit) > ArrayCmd[idxItemAction, "redir"]  ;
 }
	return substr(StrPackage, 1 , length(StrPackage )-1 ) 
 close(localStdErr) ; 
}

