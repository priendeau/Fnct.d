BEGIN{
intx=1 ;
ArrayPage[1]="" ;
}
{
 IsFound=0;
 IsInserted=-1;
 #if ( length( ArrayPage ) <= 0 )
 #{
 #   ArrayPage[intx]=$1;
 #   Arrayrecr[intx]=$2;
 #   intx+=1;
 #}
 
 for( Item in ArrayPage )
 {
  if( $1 == ArrayPage[Item] && IsFound != 1 )
  {
   IsInserted=Item ;
   IsFound=1 ;
   oldIntx=intx;
   intx=Item;
  }
 }
  
 if( IsFound == 1 )
 {
  StringAdd=sprintf("%d,",$2);
  Arrayrecr[intx]=Arrayrecr[intx]+StringAdd ;
  IsInserted=-1 ;
 }
 else
 {
  ArrayPage[intx]=$1;
  intx=length(ArrayPage)+1 ;
 }
 
}
END{
 for( Item in ArrayPage )
 {
   StringOut="";
   for( itemRecr in Arrayrecr )
   {
    StringOut=sprintf("%s,%s",StringOut,Arrayrecr[itemRecr]) ;
   }
   printf( "%s:[ %s ]\n",ArrayPage[Item],StringOut) ;
 }
}
