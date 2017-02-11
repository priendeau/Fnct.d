###
### Library Sample to make trivial this application.
### 
### file Fibonacci.awk 
### 
### 

###
### A pure random-funtion to generate random number based on time and 
### random, which increase the chance of having same number crunch after 
### crunch.
###
function RandInt(n)
{
 srand(systime())
 return int(n * rand())
}

### 
### 
### 
### 
function DisplayHelper( IntN )
{
 if( RandInt( IntN ) == 1 )
 {
  printf("<<< Don't hesitate, use this script with '-v FuncType=Help' >>>\n") ;  
 }
 
}

### Based on Python Sample
### Loop-Type Fibonacci level expression
### 
### Python Sample
### def Fibonacci_LT(n):
### a,b = 1,1
### for i in range(n-1):
###  a,b = b,a+b
### return a}
function fibonacci_LT( IntLevel )
{
 IntA=1 ; IntB=1 ; IntC=0 ; 
 for( IntX=1 ; IntX <= IntLevel-1; ++IntX ) 
 {
  IntC=IntA ;
  IntA=IntB ; 
  IntB=( IntC + IntB ) ; 
 }
 return(IntA)
}

### Based on effort of Cubbi(  Morgan Stanley )
### Naive binary recursion. 
### - For Positive only Fibonacci level expression.
### 
function fibonacci_NBR( n )
{ 
 return( l_func_fibonacci_NBR( 1, 1, n ) ) ; 
}

### Second function used inside NBR engine. It does call back the 
### same function l_func_fibonacci_NBR with a test of having a level
### computed lower than 2 or equal to n1. and does call itself
### with embedded addition of n1+n2 and does provide a level 
### downard to compute .
### 
function l_func_fibonacci_NBR( n1, n2, n )
{ 
 return( n<2 ? n1 : l_func_fibonacci_NBR( n1 + n2 ,n1, n-1) ) ; 
}

### 
### function using pass-through. This function attach a meaning to 
### computed Fibonacci level. It does use @FuncName computing the 
### number with a Naive Binary Recursion , or Loop Technique . 
### The display is based on choosed level and the answer an give the
### information about function used. ProcessFibonacci is doing almost
### the same except it only compute the level and return the result. 
### 
function fibonacci_print( n, FuncName )
{ 
 ValueReturn="" ; 
 ValueReturn=sprintf( "Using Function:%s\n%dth Fibonacci number is %d\n",FuncName,n,@FuncName( n ) ) ; 
 return ValueReturn ; 
} 

###
### This function work globally. Since no argument added to
### function it does take actual variable and play/mangle with it. 
###
function ArgumentOptionFilter()
{
 ### RegExp filter to match word :
 ### - List, list, help, Help .
 ### but can also match :
 ### - Hist, hist. 
 ### And may match non-word expression :
 ### - lisp, Lisp, Lest, lest, Lilp, lilp, lilt, Lilp....
 ### - where it's fast way to find expression Help, List at once. 
 if ( FuncType ~ /[LlHh][IiEe][SsLl][TtPp]/ )
 {
  printf(StrHelper) ; 
  IsProcess=False ; 
 }
 ### 
 ### StrFuncType is a function pass-through, using the '@' and the StrFuncType
 ### it allow to use a pre-defined function 'flavor' to compute the fibonacci 
 ### level from theses candidate. NBR and LT. fibonacci_print will receive the  
 ### fibonacci-level to compute and both function to use to provide the result.
 ### 
 if ( FuncType == "NBR" )
 {
  StrFuncType="fibonacci_NBR";
 } 
 else if ( FuncType == "LT" )
 {
  StrFuncType="fibonacci_LT";
 }
 else
 {
  StrFuncType="fibonacci_LT" ;  
 }
 
 if( OutputFibOnly=="True")
 {
  IsOutputFib="True"  ; 
 }
 else
 {
  IsOutputFib="False" ; 
 }
}

###
### This function work globally. Since no argument added to
### function it does take actual variable and play/mangle with it. 
###
function ProcessFibonacci( ArgField )
{
 ValueReturn="" ; 

 if( IsOutputFib == "True")
 {
  ValueReturn=sprintf("%d",@StrFuncType(ArgField)); 
 }
 else
 {
  ValueReturn=fibonacci_print(ArgField,StrFuncType)  ; 
 }
 return ValueReturn ; 
}

BEGIN{
 StrHelper="Help:\nScript Fibonacci.awk (Awk-script)\nName\nFibonacci.awk    Different type of algorithms to Generate number from Fibonacci\n                 Seqence.\n\nSummary\n  Does produce only Positive Fibonnacci Number. Not to use the term Integer \n  because they are much « Greater » than simple Integer. There is major time\n  improvement in Awk-Script since many generation. Thus I decide to open the \n  code to be familiar with such improvement. There is no memmoize function \n  inside actual script, but suggest it may exist form of memoization. Proof\n  of generating Fibonacci number higher than level '70' start to take time \n  while, awk can generate it in fraction of seconds. \n\n\nFunction Member:\n fibonacci_LT, fibonacci_NBR, l_func_fibonacci_NBR\n\nDefault Variable Value:\nVariable  FuncType,\n Default Value:LT           String Type, actual Possible value are LT to call \n  Choice [LT|NBR]           fibonacci_LT (Loop Technique), and NBR to call \n                            fibonacci_NBR ( Naive Binary Recursion ). Function\n                             l_func_fibonacci_NBR is part of FuncType=NBR.\nVariable OutputFibOnly,\n Default Value:False        Set True/False, Default value to False, will generate\n                            an detailed output of Level of Fibonacci choosed and\n                            it's result. Setting it to True will only generate\n                            the result.\n\n" ;  
 IsProcess="True" ;
 ArgumentOptionFilter() ; 
}
{ 
 if ( IsProcess == "True" )
 {
  for( IntFC=1 ; IntFC <= NF ; IntFC++ )
  {
   printf("%s ",ProcessFibonacci( $(IntFC) )) ; 
  }
 }
}
END{
}
