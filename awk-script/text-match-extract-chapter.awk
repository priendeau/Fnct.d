#text-match-extract-chapter.awk
BEGIN{
}
{
 intlength=split($0,Array,/:/) ;
 printf("%s\n")
}
END{
}
