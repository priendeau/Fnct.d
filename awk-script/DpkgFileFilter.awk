#!/usr/bin/gawk 
# -*- file : DpkgFileFilter.awk -*-

@include "/etc/init.d/Fnct.D/awk-script/DpkgScript.awk"


function FilterFunctionMain( intDefautlAction,IsFilterInstall, IndexApps, idxItemAction)
{
 if ( IndexApps == "" ) 
 {
  idxItemAction=ToStringValue( intDefautlAction ) ; 
 }
 else
 {
  idxItemAction=ToStringValue(IndexApps) ; 
 }
 
}



### Using this example ActionOnQuery : 
###
###
### Example to use : 
### This script is equiped with 2 actions
### - One with 'dpkg --get-selections' 
###  - This one is flavoured with a string-search-ability
### - Result parsed and are directly into second action :
###   'dpkg-reconfigure __PACKAGE__'
###
### To do this it will be usefull to :
###
### - use Internal variable 'Query' and add your 
### search-string : 
###
### - Tell to script to Process the second action
### with Internal variable 'ProcessAction'
###
### - Tell also which action to execute. 
### It wil not refer to Internal variable 
### 'idxItemAction' but 'IdAction' .
### 
### idxItemAction ---> is used to execute the 
### first action choosed inside the ArrayCmd
### 
### vIdAction ----> is used to executes the
### second action and [ MAY ] require to add
### to your command a TAG allowing to replace 
### the tag by the name searched inside query .
### 
### As example , the default script 
###
### use :
### ArrayCmd["2"]="#dpkg-reconfigure __PACKAGE__" ;  
###
### - It require to use Internal Variable TagRepl
### to this purposes . 
###
### - Put Altogether it give following command.
###
### cmd : gawk -vidxItemAction=1     \
###            -vQuery=nvidia        \
###            -vProcessAction=True  \
###            -vIdAction=2          \
###            -vTagRepl=__PACKAGE__ \
###            -f ./DpkgFileFilter.awk
### 
### 
### Another example: 
### - having problems compiling module lupa from pythonm module, it require some 
### lua include-files, library and interface to lua, browsing accross all
### package having 'lua' in the filename and to process to our Third '3' options
### to process any package by running dpkg --listfiles __PACKAGE__ 
### 
### cmd: gawk -vidxItemAction=1      \ 
###           -vQuery=lua            \
###           -vProcessAction=True   \ 
###           -vIdAction=3           \
###           -vTagRepl=__PACKAGE__  \
###           -f ${FNCTDLIBPATH}/awk-script/DpkgFileFilter.awk
### 
### 
### 
### 


function AddFromStreamRead( StrStream , Array, ChCSV )
{
 IntSplit=split( StrStream , ArrayItem , ChCSV ) ; 
 IntIndexLoc=length( ArrayCmd ) ;
 ### for
}

BEGIN{
 
 FilterFunctionMain( 1 ) ; 
 localStdErr="/dev/stderr" ; 
 ArrayCmd["1"]="#dpkg --get-selections" ; 
 ArrayCmd["1", "redir"]="/dev/stderr" ; 
 ArrayCmd["1", "stream-return"]="" ; 
 ArrayCmd["2"]="#dpkg-reconfigure __PACKAGE__" ; 
 ArrayCmd["2", "redir"]="/dev/stderr" ; 
 ArrayCmd["2", "stream-return"]="" ; 
 ArrayCmd["3"]="#dpkg --listfiles __PACKAGE__" ; 
 ArrayCmd["3", "redir"]="/dev/stderr" ; 
 ArrayCmd["3", "stream-return"]="" ; 
 ArrayCmd["4"]="#dpkg-query --search __TEXT__" ; 
 ArrayCmd["4", "redir"]="/dev/stderr" ; 
 ArrayCmd["4", "stream-return"]="" ; 
 ArrayCmd["5"]="#/usr/bin/uuidgen -t" ; 
 ArrayCmd["5", "redir"]="/dev/stderr" ; 
 ArrayCmd["5", "stream-return"]="" ; 
 
 
 
 
 printf("Information in ArrayCmd[1][redir]:%s\n",ArrayCmd["1","redir"]) > localStdErr ; 
 
 ArrayCmd["1", "stream-return"]=ExpandAppsCall( ArrayCmd, idxItemAction, ArrayCmd[idxItemAction,"redir"]) ;  
 
 ArrayCmd["1", "comma-value"]=ReturnByPackageStatus( "install" ,ArrayCmd, idxItemAction) ;  
 
 IntSplitPackInst=split( ArrayCmd["1", "comma-value"] , ASimplePackageInst , /,/ ) ; 
 
 ActionOnQuery( ArrayCmd,Query,ProcessAction,IdAction,TagRepl,ASimplePackageInst ) ; 
 for( idxStrReturn in ArrayCmd )
 {
  #[ IdAction, "stream-return" ]
  IntSplit=split( idxStrReturn, ArrayIdx, SUBSEP ) ; 
  if( IntSplit == 2 )
  {
   if( ( IdAction ) in ArrayCmd ) 
   {
    if( ArrayIdx[2] ~ /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/ )
    {
     printf("Index for IntSplit = %i, index:[ IdAction:%s, UUID:%s ]\nContent:\n%s\n", 
     IntSplit ,ArrayIdx[1] ,ArrayIdx[2] ,
     ArrayCmd[ArrayIdx[1], ArrayIdx[2]] ) > localStdErr  ; 
    }
   }
  }
  #if( IntSplit == 2 )
  #{
  # if( ( IdAction ) in ArrayCmd )
  # {
  #  printf("Index for IntSplit = %i, index:[ %s, %s ]\n", IntSplit, ArrayIdx[1] ,ArrayIdx[2] ) > localStdErr ; 
  # }
 }

 #printf("IntSplitPI return:%i\nSearch Query was: %s\n",IntSplitPI,Query) > localStdErr ;
 
 close(localStdErr) ; 

 

}
