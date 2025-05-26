/*
 * Filename : c_read_var.c
 * purposes : To read variable from linux shell.  
 *             
 * 
 * compilation_cmd : gcc -Wall -O3 -o c_read_var c_read_var.c 
 * 
 * Actually : Makefile-less  
 * 
 * */


#include <string.h>
#include <stdlib.h>
#include <stdio.h>



int main(int argc, char* argv[], char* env[])
{
    //int i ; 
    if( getenv( argv[1] )) 
    {
			// Variable name is existing
			printf("%s", getenv( argv[1] ) ) ;
		} 
		else 
		{
			printf("%s", "" ) ; 
			// Variable name is not existing
		}

    return 0;
}
