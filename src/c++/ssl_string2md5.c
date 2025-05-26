/*
 * Filename : ssl_string2md5.c
 * purposes : To read variable from linux shell and create a md5 digest.  
 *             
 * 
 * compilation_cmd : gcc -Wall -O3 -o ssl_string2md5 ssl_string2md5.c
 * 
 * Actually : come with Makefile
 * 
 * */


#define MSG_ERROR_HELPER 				"ssl_string2md5 use:\n\nPassing to Argument 1 a Bash or Shell\nvariable name  without dollar sign or\nbrace and in  export mode or from the\nprompt variable,  or  starting  with  \nguillemets a full string will be turn\ninto md5\ndigest. at stdout. See the example:\n  Example :\n  $> StrText=\"This is a test\" ssl_string2md5 StrTest\n  $> ssl_string2md5 \"This is a test\"\n  Should give the same digest.\n\n"
#define DIGEST_BUFFER						512


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h> 

#if defined(__APPLE__)
#  define COMMON_DIGEST_FOR_OPENSSL
#  include <CommonCrypto/CommonDigest.h>
#  define SHA1 CC_SHA1
#else
#  include <openssl/md5.h>
#endif

#include "ssl_string2md5.h"

char *str2md5(const char *str, int length) 
{
    int n;
    MD5_CTX c;
    unsigned char digest[16];
    char *out = (char*)malloc(33);

    MD5_Init(&c);

    while (length > 0) 
    {
			if (length > DIGEST_BUFFER) 
			{
				MD5_Update(&c, str, DIGEST_BUFFER);
			} 
			else 
			{
				MD5_Update(&c, str, length);
			}
        length -= DIGEST_BUFFER;
        str += DIGEST_BUFFER;
    }

    MD5_Final(digest, &c);

    for (n = 0; n < 16; ++n) 
    {
			snprintf(&(out[n*2]), 16*2, "%02x", (unsigned int)digest[n]);
    }

    return out;
}

int main(int argc, char* argv[], char* env[]) 
{
	//char *output = str2md5("hello", strlen("hello"));
	//printf("%s\n", output);
	//free(output);
	//return 0;
	unsigned int iError=0;
	char *cVariableValue ;

	if( argv[1] == NULL )
	{
		iError=1 ; 
		fprintf(stderr, MSG_ERROR_HELPER "prompt_md5_ssl use:\n\nPassing to Argument 1 a Bash or Shell\nvariable name without dollar sign or\nbrace. See the example\n\nexample 1: - inline uses of Variable:\n\n  StrTest=\"This is a test\" ./prompt_md5_ssl StrTest\n\nexample 2: - uses of export \n\n  StrTest=\"This is a test\";\n  export StrTest;\n  ./prompt_md5_ssl StrTest;\n  export -n StrTest\n" );
	}
	else
	{
		cVariableValue=malloc( (size_t)( strlen( getenv( argv[1] ) ) * sizeof(char)  ) );
	}



}
