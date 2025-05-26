/*
 * Filename : prompt_md5_ssl.h
 * purposes : To read variable from linux shell and create a md5 digest.  
 *             
 * 
 * compilation_cmd : gcc -Wall -O3 -o prompt_md5_ssl.c prompt_md5_ssl.c 
 * 
 * Actually : Makefile-less  
 * 
 * */
 
#include <stdio.h>
#include <string.h>
//#include <openssl/md5.h>
#include "md5_check.h"
#include <stdbool.h> 

void compute_md5(char *str, unsigned char digest[16]);
