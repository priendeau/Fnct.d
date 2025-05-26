/*
 * Filename : ossl_md5_digest.c
 * purposes : To create a md5sum from the information of the shell. 
 *            using prompt_md5_ssl.c mechanism to filter variable
 *            name from bash shell and providing an md5_digest.
 *            This version use openssl library and will help comparing
 *            excution perfomancy if prompt_md5_ssl does produce same 
 *            result. Which is special
 * 
 * compilation_cmd : gcc -Wall -O3 -o md5_check md5_check.c 
 * 
 * Actually : come with Makefile
 * 
 * */
 

unsigned char* md5_digest_process(EVP_MD* md, unsigned char *input_text, int *hash_len) ;
