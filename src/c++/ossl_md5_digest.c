/*
 * Filename : ossl_md5_digest.c
 * purposes : To create a md5sum from the information of the shell. 
 *            using prompt_md5_ssl.c mechanism to filter variable
 *            name from bash shell and providing an md5_digest.
 *            This version use openssl library and will help comparing
 *            excution perfomancy if prompt_md5_ssl does produce same 
 *            result. Which is special
 * 
 * compilation_cmd : gcc -Wall -O3 -o ossl_md5_digest ossl_md5_digest.c 
 * 
 * Actually : come with Makefile
 * 
 * */
 
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <openssl/evp.h>
#include "ossl_md5_digest.h"


#define DIGEST_TYPE_NAME		"MD5"
#define DIGEST_INIT_ERR			"Unable to init MD5 digest\n"

EVP_MD* md5_digest_init() 
{
  OpenSSL_add_all_digests();
  EVP_MD *md = EVP_get_digestbyname( DIGEST_TYPE_NAME );
  if(!md) 
  {
		 printf( DIGEST_INIT_ERR );
		 exit(1);
   }
  return md;
}

unsigned char* md5_digest_process(EVP_MD* md, unsigned char *input_text, int *hash_len) 
{
	unsigned char *hash = (unsigned char *) malloc(EVP_MAX_MD_SIZE);
	if (!hash) 
		return NULL;
	//EVP_MD_CTX mdctx;
	EVP_MD_CTX *md_ctx;
	md_ctx = EVP_MD_CTX_new();
	if (md_ctx != NULL)
	{
		EVP_MD_CTX_init(&md_ctx);
		EVP_DigestInit_ex(&md_ctx, md, NULL);
		EVP_DigestUpdate(&md_ctx, input_text, strlen(input_text)+1);
		EVP_DigestFinal_ex(&md_ctx, hash, hash_len);
		EVP_MD_CTX_cleanup(&md_ctx);
	}
	else
	{
		return NULL;
	}
	EVP_MD_CTX_free(md_ctx);
	return hash;
}

static void print_as_hex (const unsigned char *digest, int len) 
{
  int i;
  for(i = 0; i < len; i++)
  {
    printf ("%02x", digest[i]);
  }
}

int main( int argc, char* argv[], char* env[] ) 
{
  EVP_MD *md;
  md = md5_digest_init();
  //unsigned char* res;
  int hash_len = 0;
  unsigned char* res = md5_digest_process(md, "foobar", &hash_len);
  // res = md5_digest_process(md, "foobar");
	if ( res ) 
	{
    print_as_hex(res , &hash_len ) ;  
    //{
    //  printf("%02x", res[i]);
    //}
    free(res) ;
  }
  return 0;
}
