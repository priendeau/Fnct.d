BEGIN{
 
}
{ idcount=0 ;
  for( intx=IntstartX ; intx >= IntstopX ; intx-- )
  { 
    CopyTpl=URLTPL ; 
    UUIDSession=$(idcount++) ;
    printf("New Session: %s\n", UUIDSession ) ;
    gsub(/__1__/,Format,CopyTpl) ; 
    CopyTpl=sprintf(CopyTpl,intx) ; 
    CopySysexec=SysTpl; 
    Sysexec=sprintf(SysTpl,CopyTpl);
    gsub(/__UUID__/,UUIDSession,Sysexec) ; 
    printf("System Command: %s\n",Sysexec ); 
    system(Sysexec) ;
  } 
}
END{}
