#
# This function take Stream from 1-lined fstab or grep-reduced to 1 line 
# to produce a mount command...
# Usefull, for Variable embedded fstab... not really allowed, MountParser, 
# cat take the form of eval echo "Grepped-Fstab-line" | awk -vIsExec=False -vIsPrint=False -f MountDeviceParsed.awk 
# to mount the device without displaying the command...
# 
function MountParser( FieldFstab, IsExec, IsPrint )
{
  TplMount="mount -t %s %s %s -o%s";
  ParseTpl=sprintf(TplMount,$3,$1,$2,$4); 
  if ( IsExec == "True")
  {
    system( ParseTpl ) ;
  }
  if ( IsPrint == "True")
  {
    printf("Evaluated MountDevice:\n\t[ %s ]\n",ParseTpl);
  }
}
BEGIN{
  
}
{
  if( IsExec == "" )
  {
   IsExec="False" ;
  }
  if( IsPrint == "" )
  {
   IsPrint="True" ;
  }
  MountParser( $0, IsExec, IsPrint)
}
END{}
