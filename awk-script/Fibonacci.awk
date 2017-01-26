###
### Library Sample to make trivial this application.
### 
function randint(n)
{
 srand(systime())
 return int(n * rand())
}
function DisplayHelper( IntN )
{
 if( randint( IntN ) == 1 )
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
 for( IntX=1 ; IntX <= IntLevel-1; ++IntX) 
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

function l_func_fibonacci_NBR( n1, n2, n )
{ 
 return( n<2 ? n1 : l_func_fibonacci_NBR( n1 + n2 ,n1, n-1) ) ; 
}

function fibonacci_print( n, FuncName )
{ 
 DisplayHelper( 10 ) ; 
 printf "Using Function:%s\n%dth Fibonacci number is %d\n",FuncName,n,@FuncName( n ) ; 
} 

BEGIN{ 
 IsProcess="True" ;
 if ( FuncType ~ /[LlHH][IiEe][SsLl][TtPp]/ )
 {
  printf("Help:\nScript Fibonacci.awk (Awk-script)\nName\nFibonacci.awk    Different type of algorithms to Generate number from Fibonacci\n                 Seqence.\n\nSummary\n  Does produce only Positive Fibonnacci Number. Not to use the term Integer \n  because they are much « Greater » than simple Integer. There is major time\n  improvement in Awk-Script since many generation. Thus I decide to open the \n  code to be familiar with such improvement. There is no memmoize function \n  inside actual script, but suggest it may exist form of memoization. Proof\n  of generating Fibonacci number higher than level '70' start to take time \n  while, awk can generate it in fraction of seconds. \n\n\nFunction Member:\n fibonacci_LT, fibonacci_NBR, l_func_fibonacci_NBR\n\nDefault Variable Value:\nVariable  FuncType,\n Default Value:LT           String Type, actual Possible value are LT to call \n  Choice [LT|NR]            fibonacci_LT (Loop Technique), and NBR to call \n                            fibonacci_NBR ( Naive Binary Recursion ). Function\n                             l_func_fibonacci_NBR is part of FuncType=NBR.\nVariable OutputFibOnly,\n Default Value:False        Set True/False, Default value to False, will generate\n                            an detailed output of Level of Fibonacci choosed and\n                            it's result. Setting it to True will only generate\n                            the result.\n\n") ; 
  IsProcess=False ; 
 }
 if ( FuncType == "NBR" )
 {
  StrFuncType="fibonacci_NR";
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
 }else
 {
  IsOutputFib="False" ; 
 }
 
}
{ 
 if ( IsProcess == "True" )
 {
  if( IsOutputFib == "True")
  {
   printf("%d\n",@StrFuncType($(1))); 
  }
  else
  {
   fibonacci_print($(1),StrFuncType)  ; 
  }
 }
}
END{
}
