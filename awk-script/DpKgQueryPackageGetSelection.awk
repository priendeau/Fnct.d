BEGIN{}
{
 gsub(/[\t\ ]?deinstall[\t\ ]?/,"TRUE",$0); 
 gsub(/[\t\ ]?install[\t\ ]?/,"FALSE",$0) ; 
 printf("%s %s ",$2,$1);
}
END{}
