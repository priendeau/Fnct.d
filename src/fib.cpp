#ifndef __FIB_CPP__
#define __FIB_CPP__


// This program calculates the nth fibonacci number
// using alrogirhtm 1A: naive binary recursion
//
// compiled: g++ -std=c++0x -Wall -Wextra -pedantic -O2 -march=native -o f1a f1a.cc
// executed: ./f1a n
//

#include "fib.h"

using namespace std; 

// Naive binary recursion: F(n) = F(n-1) + F(n-2)
long fib(int n) 
{
  return n<2 ? n : fib(n-1) + fib(n-2);
}
// Function f(n) handles the negative arguments: F(-n) = F(n)*(-1)^(n+1) 
long f(int n) 
{
 if(n<0)
    return n%2 ? fib(-n) : -fib(-n);
 else
    return fib(n);
}
// Function f_print prints out n'th Fibonacci number
void fib_print(int n) 
{
	if ( getEnvVar("fReadOnlyNumber") == "True" ) 
	{
		cout << f(n) << '\n' ; 
	}
	else
	{
   cout << n << "th Fibonacci number is " << f(n) << '\n';
  }
}

string getEnvVar( std::string const & key )
{
    char * val = getenv( key.c_str() );
    return val == NULL ? std::string("") : std::string(val);
}
// entry point:
// convert the first argument to a number and calls fib_print
// if argument did not exist or wasn't a number, show usage information
int main(int argc, char** argv) 
{
 vector< string > args(argv, argv+argc);
 try 
 {
  fib_print(stoi(args.at(1)));
 } catch ( exception& ) 
   {
     cout << "Application to Generate Fibonnacci number\n\nUsage: \n\t" << args[0] << " <n>\n\n\tDisplay:\n\t<N>th Fibonacci number is <n>\n";
     cout << "\n\tfReadOnlyNumber=True " << args[0] << " <n>\n\n\tDisplay:\n\t<n>\n" ; 
   }
}


#endif // __FIB_CPP__
