SHELL=/bin/bash

GCC 					:= /usr/bin/gcc
GCC_OPT				:= -Wall -O3 
SSL_OPT				:= -lssl -lcrypto
SSL_WARN_OPT	:= -Wunused-but-set-variable -Wdeprecated-declarations -Wpedantic -Wno-unused-result -Wno-pointer-sign
VERBOSE_OPT		:= -ne
VERBOSE				:= /bin/echo $(VERBOSE_OPT)
CHMOD					:= /usr/bin/chmod 775 
FILE_EXISTS		:= 0

source_file_c := $(filter %.c,$(shell find ./ -type f -printf "%f "))


setvar:
	@$(VERBOSE) "\nSetup variable for testing.\n"
	@objects := $(patsubst %.c,%.o,$(wildcard ./prompt_md5_ssl))
	@$(VERBOSE) "\nContent of object:[$(objects)]\n"
	@$(VERBOSE) "\nFILE_EXISTS=$(FILE_EXISTS)\n"
	ifeq ($(FILE_EXISTS), 1 )
		### Verified with HashBruterTest than prompt_md5_ssl does report correct cipher.
		### and using strTest="TEST" .prompt_md5_ssl strTest
		### - Give the 033BD94B1168D7E4F0D644C3C95E35BF as digest and the command to 
		### HashBrute-Force the answer is : 
		### time java HashBruteTest --min-search=3 --max-search=5 --noLowerC --noSpecialC --noDigit --type="md5" --hash=033BD94B1168D7E4F0D644C3C95E35BF
		### and does a correct hash rather than colission.
		### and spend 12001217 key before finding-it in the good condition. 
		### as prompt_md5_check report ZZZZ as colision and possibly give weird answer. 
		MemberA := $(shell StrSkipLabel="upload;inspector;completion;daemon;debug;monitor;outdated;" ./prompt_md5_ssl  StrSkipLabel )
		MemberB := $(shell StrForwardLabel="upload;inspector;completion;daemon;debug;monitor;outdated;" ./prompt_md5_ssl  StrForwardLabel )
		MemberC := $(shell StrSkipLabel="upload;inspector;completion;daemon;debug;monitor;outdated;" ./prompt_md5_ssl  StrSkipLabel )
		MemberD := $(shell StrForwardLabel="upload;comple1ion;inspec1or;;daemon;debug;moni1or;ou1da1ed;" ./prompt_md5_ssl  StrForwardLabel )
		MemberE := $(shell StrSkipLabel="upload;inspector;completion;daemon;debug;monitor;outdated;" ./prompt_md5_check  StrSkipLabel )
		MemberF := $(shell StrForwardLabel="upload;inspector;completion;daemon;debug;monitor;outdated;" ./prompt_md5_check  StrForwardLabel )
		MemberG := $(shell StrSkipLabel="upload;inspector;completion;daemon;debug;monitor;outdated;" ./prompt_md5_check  StrSkipLabel )
		MemberH := $(shell StrForwardLabel="upload;comple1ion;inspec1or;;daemon;debug;moni1or;ou1da1ed;" ./prompt_md5_check  StrForwardLabel )

	endif

#~ 	ifneq (  )
#~ 			@$(VERBOSE) "\nFile absent.\n"
#~ 			FILE_EXISTS = 0
#~ 	else
#~ 			@$(VERBOSE) "\nFile present.\n"
#~ 			FILE_EXISTS = 1
#~ 	endif

compiling:
	@$(VERBOSE) "\nCompiling\n" 

erasing:
	@$(VERBOSE) "\nErasing\n"

crc16: compiling
	@$(VERBOSE) "Processing $@\n"
	$(GCC) $(GCC_OPT) -lm -o crc16 crc16.c
	$(CHMOD) crc16

c_read_var: compiling
	@$(VERBOSE) "Processing $@\n"
	$(GCC) $(GCC_OPT) -o c_read_var c_read_var.c
	$(CHMOD) c_read_var
	
prompt_md5_check: compiling
	@$(VERBOSE) "Processing $@\n"
	$(GCC) $(GCC_OPT) -o prompt_md5_check prompt_md5_check.c
	$(CHMOD) prompt_md5_check

md5_check: compiling
	@$(VERBOSE) "Processing $@\n"
	$(GCC) $(GCC_OPT) -o md5_check md5_check.c 
	$(CHMOD) md5_check

### removed option: -Wno-implicit-function-declaration
prompt_md5_ssl: compiling
	@$(VERBOSE) "Processing $@\n"
	$(GCC) $(GCC_OPT) -o prompt_md5_ssl prompt_md5_ssl.c
	$(CHMOD) prompt_md5_ssl

ossl_md5_digest: compiling 
	@$(VERBOSE) "Processing $@\n"
	$(GCC) $(GCC_OPT) -o ossl_md5_digest ossl_md5_digest.c $(SSL_OPT)
	$(CHMOD) ossl_md5_digest

### removed options: 
ssl_string2md5: compiling
	@$(VERBOSE) "Processing $@\n"
	$(GCC) $(GCC_OPT) $(SSL_WARN_OPT) -o ssl_string2md5 ssl_string2md5.c $(SSL_OPT)
	$(CHMOD) ssl_string2md5

list: $(wildcard *.c)
	@ls -la  $?

failed-test:
	@$(VERBOSE) "\nAssertion test failed.\n" 
	
success-test:
	@$(VERBOSE) "\nAssertion test succesfull, item match.\n"


test: setvar
	@$(VERBOSE) ====================TEST 1====================\\n\\n
	@$(VERBOSE) Using variable StrSkipLabel and StrForwardLabel\\n\\nholding exact same things, will be compared with\\nprompt_md5_ssl\\n\\nStrSkipLabel report $(MemberA)\\nStrForwardLabel report $(MemberB)\\n
ifeq ($(MemberA), $(MemberB))
	@$(VERBOSE) "Same value inside StrSkipLabel, StrForwardLabel\\n\\nshould return the same digest and does it's Assertion OK.\\n"
else
	@$(VERBOSE) "Value was the same for StrSkipLabel, StrForwardLabel\\n\\nbut digest FAILED ! check-up the code."
endif
	@$(VERBOSE) ====================TEST 2====================\\n\\n
	@$(VERBOSE) Using variable StrSkipLabel and StrForwardLabel\\n\\nholding different things, will be compared with\\nprompt_md5_ssl\\n\\nStrSkipLabel report $(MemberC)\\nStrForwardLabel report $(MemberD)\\n
ifeq ($(MemberC), $(MemberD))
	@$(VERBOSE) "Same value inside StrSkipLabel, StrForwardLabel\\n\\nAssertion Failed it should be different."
else
	@$(VERBOSE) "Value was different for StrSkipLabel, StrForwardLabel\\n\\nIt give incorrect result, Assertion OK\\n"
endif

#begin_decl_file :=@$(VERBOSE) \\nFound these source localy : $(source_file_c)\\n
	
	
.PHONY: all
all:  c_read_var md5_check prompt_md5_check prompt_md5_ssl ssl_string2md5 crc16
	#$(begin_decl_file)

.PHONY: clean
clean: erasing
	rm -f c_read_var prompt_md5_check md5_check prompt_md5_ssl ssl_string2md5 crc16

