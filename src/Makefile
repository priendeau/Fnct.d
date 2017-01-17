


### 
###  Makefile to  generated  fast-efficient  C source,  some 
###  C++ code and  mostly Assembly  code where  some Assembly  
###  code coming  from C-Source code  Assembled with gcc,  
###  this  make  file  give possibility to a C-Source  file  
###  to be de-compiled and graffed with Source and Assembly 
###  code for  comparaison.  There is  some  NASM Code  not 
###  intended to support are ideally code from Jon Erickson
###  Computer science teacher from No Starch Press Book Akin
###  to convert into Gnu AS and tell if it's protected 
###  against non-regular unistd call . 
###
.DEFAULT_GOAL 					:= 

SHELL										= /bin/bash 
.SHELLFLAGS 						=  --norc
EXTERN_CSV							=,

### 
### Important Path information 
### This project own source in current directory and dump object inside 
### a specific path and binary file somewhere else. 
### 

OBJ_PATH								:= obj
BIN_PATH								:= bin

### 
### Essential Shell mecanisn, used in both rules and target.  
### 
#SEARCH_DEFINE					:= $(findstring $(HAVE_INTERNAL_GCC), $(shell cat $(subst .o,.c,__FILE__)))
#ISDEFINE_IGCC					:= $(shell egrep -ic __INTERNALGCC__ $@ )

SIGNATURE								:=/usr/bin/openssl
BASE64									:=/usr/bin/base64
SHA1SUM 								:=/usr/bin/sha1sum
CUT											:=/usr/bin/cut
PKG_CFG_BROWSER					:=/usr/bin/pkg-config --list-all | cut -d ' ' -f1
PKG_CFG_BROWSER_LIB			:=/usr/bin/pkg-config __PACKAGE__ --libs
DISPLAY_FILE						:=/bin/cat __FILE__ | /bin/more
BASE64_ENCODER					:=base64 --wrap=0 __SRC__ > __FILE__
BASE64_DECODER					:=base64 -d __FILE__
MKDIR 									:=${FNCTDLIBPATH}/md_cd
TARGET									:=%
HAVE_INTERNAL_GCC				:=__INTERNALGCC__
PATH_BIN								:=test ! -d ./$(BIN_PATH) && $(MKDIR) ./$(BIN_PATH) && echo > /dev/null
PATH_OBJ								:=test ! -d ./$(OBJ_PATH) && $(MKDIR) ./$(OBJ_PATH) && echo > /dev/null
DETECT_BIN							:=test -d ./$(BIN_PATH)
DETECT_OBJ							:=test -d ./$(OBJ_PATH)
RM											:=rm -f 
ECHO 										:=echo
PRINTF_DEF_FMT					:=[ %s ]\n
PRINTF									:=printf "__FMT__" __TAG__
CLEARSCR								:=clear
MACHINE_TYPE						:=$$( /bin/uname --machine )

### Reserved for target protect / unprotect :
### This is the file signature :
include signed_file.mk
include Fnct_D.mk

### Uses of ''arithmetic expression'' is only valid by 
### defining SHELL to /bin/bash  or compatible shell
### handling ''arithmetic expression'', 
### example : 
###           ksh ( korn shell), 
###           zsh (zoidberg perl shell), 
###           awk (awkward but possible), 
###           python ( not tested yet but can be a solution )
###           perl ( exist from doc http://bit.ly/2iGKPwT )

RANDOM_N								:=$$(( $$RANDOM % 50 )) ; 
### Testing a Fibonacci number reasonably, to be told 
### 50th Fibonacci number is 12586269025 and dor x86_64
### architecture dual processor counting 2 x 3800.47 
### bogomips, does take 2m14sec +/- 5 sec generating the
### number Does a ulimit may broke a make instance if
### a delay is imposed to make generation. Know to be
### used --load-average in make may increase time and 
### avoid some processor to generate error or even 
### conflits.
 
RANDOM_FIB							:=$$(( $$RANDOM % 50 )) ; 

GDB											:=/usr/bin/gdb
CC											:=/usr/bin/x86_64-linux-gnu-gcc-4.8 
CPP											:=/usr/bin/x86_64-linux-gnu-g++-4.8 
LD											:=/usr/bin/x86_64-linux-gnu-ld
AS											:=/usr/bin/x86_64-linux-gnu-as
DUMP										:=/usr/bin/x86_64-linux-gnu-objdump
READELF									:=/usr/bin/x86_64-linux-gnu-readelf
### DEFINITION OF WHAT IS A OBJECT FILE, WHAT IS A BINARY FILE
BIN_TYPEFILE						:=__FILE__
OBJ_TYPEFILE						:=__FILE__.o 
### OUTPUT DEFINITION, WHERE OBJ AND BINARIES GOES.
CC_OUT									:=-o ./$(BIN_PATH)/
CC_ASM_OUT							:=-o ./
CPP_OUT									:=-o ./$(BIN_PATH)/
LD_OUT									:=-o ./$(BIN_PATH)/
AS_OUT									:=-o ./$(OBJ_PATH)/
AS_OUT_GEN							:=-o 
C_OBJ_OUT								:=-o ./$(OBJ_PATH)/
### FLAGS DEFINITIONS.
AS64_FLAGS							:=--64  
AS32_FLAGS 							:=--32 
GDB_FLAGS								:=--command=__GDB_FILE__
CPPFLAGS								:=-std=c++0x -Wall -Wextra -pedantic -O2 
ELF_FLAGS								:=--file-header 
CFLAGS									:=-g -O2 -fPIC __DEBUG_SYMBOLS__
CFLAGS_DEBUG_SYM				:=-gstabs
CFLAGS_GCC							:=-g -O2 -fPIC -D $(HAVE_INTERNAL_GCC) 
CFLAGS_ASM							:=-S -O0 -D_FORTIFY_SOURCE_=0 -Wa,__ARCH_TYPE__,-ah,-am,-as
CFLAGS_DEC							:=-g -Og -fno-builtin -D_FORTIFY_SOURCE_=0 -Wa,__ARCH_TYPE__,-ah,-am,-as
C_LDFLAGS_GCC						:=-static-libgcc -Wl,-lgcc,-luuid,-lc,-L/usr/lib/gcc/x86_64-linux-gnu/4.8/libgcc.a 
C_LDFLAGS								:=-Wl,-shared-libgcc,-lgcc,-luuid,-lc 
LD_LINUX_32							:= /lib/ld-linux.so.2
LD_LINUX_64							:= /lib64/ld-linux-x86-64.so.2
LD_EMULATION_ELF32			:=-m elf_i386 
LD_EMULATION_ELF64			:=-m elf_x86_64
LD_ASTPL_FLAGS					:=__LD_EMULATION__ -dynamic-linker __LDLINUX__ -lc
#LD_AS32_FLAGS						:=__LD_EMULATION__ -dynamic-linker __LDLINUX__ -lc
LD_FLAGS								:=-dynamic-linker __LDLINUX__ -lc
LD_FLAGS_DEC						:= 
AS_GSTAB_FLAGS					:=--gstabs 
DUMP_FLAGS							:=-f -s -d --source 

protected = shell-gas.S shell-gas.asm shell.asm shell-bash.asm shell-bash.S	

compiled = millisecsleep2  \
           shell-bash  \
           uuid-test   \
           arg_get     \
           envvars     \
           nssleep     \
           sleep       \
           asm_stdout  \
           fib         \
           ex___mulsi3 \
           nano_sleep 

sources =	millisecsleep2.S shell-bash.S uuid-test.c envvars.S fib.cpp nano_sleep.c

objects = $(addsuffix .o, $(compiled))

### Variable used and transformed by IFDEF Section.
### Useless to change they are conditionned to have 
### theirs values upon uses of Prefixed-Variable like
### ABI32 ASSEMBLY_GSTAB DECOMPILATION ASM_ENTRY_FUNC
### RUN_WITH_DEBUGGER, GDB_GET_FUNCT_FROM_SOURCE, 
### WITH_ARG

TARGET									:= $(addsuffix .decompil, %)
CURRENT_CFLAGS					:=$(CFLAGS)
CURRENT_LDFLAGS 				:=$(C_LDFLAGS)
CURRENT_OUT     				:=$(CC_OUT)
FILE_TYPE_OUT						:=$(BIN_TYPEFILE)
AS_CURRENT_FLAG					:=$(AS64_FLAGS)
LD_AS_CURRENT_FLAG			:=$(LD_ASTPL_FLAGS)
APPLICATION_RUN_METHOD	:=./$(BIN_PATH)/__FILE__
GDB_CURRENT_FLAGS				:=
DISPLAY_EXEC_CURRENT		:=Testing the application
AS_CURRENT_ARCH_FLAGS		:=$(AS64_FLAGS)

### Warning ASM_MAIN_GLOBAL_START, required in grep action 
### which may report no information in blank space are 
### leaved within ASM_MAIN_GLOBAL_START declaration. 
ASM_MAIN_GLOBAL_START		:=_start

### IFDEF Section, Theses are all the Pre-Fixed variable to use with makefile
### to add specific behavior to your make. 

ifdef GDB_GET_FUNCT_FROM_SOURCE
	GDB_CURRENT_FLAGS			:=$(GDB_FLAGS) --exec=
endif

ifdef WITH_ARG
	GDB_CURRENT_FLAGS			+=--arg $(subst $(EXTERN_CSV),' ',$$StrArg) --exec=
endif

ifdef ABI32
	AS_CURRENT_FLAG				:=$(AS32_FLAGS)
	#LD_AS_CURRENT_FLAG		:=$(LD_AS32_FLAGS)
	AS_CURRENT_ARCH_FLAGS	:=$(AS32_FLAGS)
	CFLAGS_DEC						:=$(subst __ARCH_TYPE__,$(AS_CURRENT_ARCH_FLAGS),$(CFLAGS_DEC))
	CFLAGS_ASM						:=$(subst __ARCH_TYPE__,$(AS_CURRENT_ARCH_FLAGS),$(CFLAGS_ASM))
	LD_AS_CURRENT_FLAG		:=$(subst __LDLINUX__,$(LD_LINUX_32),$(LD_AS_CURRENT_FLAG))
	LD_AS_CURRENT_FLAG		:=$(subst __LD_EMULATION__,$(LD_EMULATION_ELF32),$(LD_AS_CURRENT_FLAG))
else
	LD_AS_CURRENT_FLAG		:=$(subst __LDLINUX__,$(LD_LINUX_64),$(LD_AS_CURRENT_FLAG))
	LD_AS_CURRENT_FLAG		:=$(subst __LD_EMULATION__,$(LD_EMULATION_ELF64),$(LD_AS_CURRENT_FLAG))
	CFLAGS_DEC						:=$(subst __ARCH_TYPE__,$(AS_CURRENT_ARCH_FLAGS),$(CFLAGS_DEC))
	CFLAGS_ASM						:=$(subst __ARCH_TYPE__,$(AS_CURRENT_ARCH_FLAGS),$(CFLAGS_ASM))
endif

ifdef ASSEMBLY_GSTAB
	AS_CURRENT_FLAG				+=$(AS_GSTAB_FLAGS)
	CURRENT_CFLAGS				:=$(subst __DEBUG_SYMBOLS__,$(CFLAGS_DEBUG_SYM),$(CURRENT_CFLAGS)):
else
	CURRENT_CFLAGS				:=$(subst __DEBUG_SYMBOLS__,,$(CURRENT_CFLAGS)):
endif


ifdef DECOMPILATION
	CURRENT_CFLAGS				:=$(CFLAGS_DEC)
	CURRENT_LDFLAGS				:=$(LD_FLAGS_DEC)
	CURRENT_OUT						:=$(C_OBJ_OUT)
	FILE_TYPE_OUT					:=$(OBJ_TYPEFILE)
endif

ifdef ASM_ENTRY_FUNC
	ASM_MAIN_GLOBAL_START	:=main
endif

ifdef RUN_WITH_DEBUGGER
	APPLICATION_RUN_METHOD:= $(GDB) $(GDB_CURRENT_FLAGS) $(APPLICATION_RUN_METHOD)
	DISPLAY_EXEC_CURRENT	:= Debugging application prior to lunch, using $(GDB). Prefixed-variable of this make like ASSEMBLY_GSTAB=1 will enforce your debugging session, and GDB_GET_FUNCT_FROM_SOURCE=1, will parse your file and create a debug-file to load with $(GDB) and add break on any function. Notice, some application require to use Argument to work under these make, and using WITH_ARG=1 will pass your argument to $(GDB).
endif

ifdef DISPLAY_GOAL
	VIEWGOAL 							:=True
else
	VIEWGOAL 							:=False
endif

ifdef KEEP_BIN
	ERASE_BIN							:=False
else
	ERASE_BIN							:=True
endif

### single if : $(if condition,then-part[,else-part])
PKG_CONFIG_COMPLEX_QUERY	:=False
#PKG_STRING_RES						:=findstring('$(EXTERN_CSV)',$(PKG_CONFIG_QUERY))
ifdef PKG_CONFIG_QUERY
 $(words text)
endif


### BASH-INLINE command 
### AS_GET_TEXT_START, used to detect line-number where the _start function is 
### AS_GET_LINE_TEXT, used to report number of lines for an Assembly file .
### inside the file . 

REGEXP_FIND_GLOBL_SYM		:=^\ {0,}\.globl 
REGEXP_FIND_FUNC_NAME		:=^[a-zA-Z0-9\_\.]*\ {0,2}:
AS_GET_TEXT_START				:=egrep -n "$(REGEXP_FIND_GLOBL_SYM)$(ASM_MAIN_GLOBAL_START)" __FILE__ | cut -d ':' -f1 
AS_GET_LINE_TEXT				:=wc -l __FILE__ | cut -d ' ' -f 1
AS_REPORT_SARCH_LINE		:=$$(( $$NBLINES - $$TEXTSTART ))
GDB_GET_FUNCT_BREAK			:=egrep -A $(AS_REPORT_SARCH_LINE)  "$(REGEXP_FIND_GLOBL_SYM)$(ASM_MAIN_GLOBAL_START)" __FILE__ | egrep "$(REGEXP_FIND_FUNC_NAME)" | cut -d ':' -f 1 | tr '[:cntrl:]' ' ' 
GDB_CREATE_FUNCT_BREAK	:=if [ -f __GDB_FILE__ ] ; then $(RM) __GDB_FILE__ ; fi ; for StrFuncName in $$( $(GDB_GET_FUNCT_BREAK) ) ; do echo -ne "break *$$StrFuncName\n" >> __GDB_FILE__ ; done 
GDB_TEXT_DISPLAY				:=Source file, hold $$NBLINES lines.\nText Header start at line :$$TEXTSTART\nGlobal Entry Function Start At line: $$TEXTSTART\nSearching function entry accross $$AFTER_SEARCH_DISPLAY lines
GDB_ACTION_TARGET				:=TEXTSTART=$$( $(AS_GET_TEXT_START) ) ;\
	NBLINES=$$( $(AS_GET_LINE_TEXT) ) ;\
	$(subst __TAG__,"$(GDB_TEXT_DISPLAY)", $(subst __FMT__,"%s\n",$(PRINTF)) ) ;\
	$(GDB_CREATE_FUNCT_BREAK)

#	echo Source file, hold $$NBLINES lines. ;\
#	echo Text Header start at line :$$TEXTSTART ;\
#	echo Global Entry Function Start At line: $$TEXTSTART ;\
#	echo Searching function entry accross $$AFTER_SEARCH_DISPLAY lines ;\




#TEXTSTART=$$( $(subst __FILE__,$@.S,$(AS_GET_TEXT_START)) )
# by TEXTSTART=$$( $(AS_GET_TEXT_START) )
#NBLINES=NBLINES=$$( $(subst __FILE__,$@.S,$(AS_GET_LINE_TEXT)) )
# by NBLINES=$$( $(AS_GET_LINE_TEXT) )


### A method to produce a easy-driven helper. it simply bypass the update status of
### a target by yielding to other process such decode which is not producing fixed
### target (a.k.a file's) so it may not telling about 'target' updated.     

### Notice Target :helper.encode
### is lacking file dependency by being reduced by a double substitution of Tag
### __FILE__ and __SRC__ , which can be reduced to 
### helper.encode: helper.txt
### 	base64 --wrap=0 -d > helper.encode 
### but 3 target to maintain an helper is just enought. 
### An theses target are wll expanded to be buffered with option like 
### pass the decoding to an application like Zenity. 
helper.encode:
	@$(subst __FILE__,$@,$(subst __SRC__,$(subst .encode,.txt,$@),$(BASE64_ENCODER)))

helper.decode: helper.encode
	@$(subst __FILE__,$<,$(BASE64_DECODER))

helper:	helper.decode
	@$(subst __FILE__,$@.decode,$(DISPLAY_FILE))


ifeq ( $(.DEFAULT_GOAL), pkg-config-browser )
	.IGNORE
endif 


### Target pkg-config-browser
### Require prefixed-variable PKG_CONFIG_QUERY="..." and Query can be a 
### full-name package or a part of a package. 
### 

pkg-config-browser:	$(.IGNORE)
	@$(ECHO) Status of PKG_CONFIG_COMPLEX_QUERY: $(PKG_CONFIG_COMPLEX_QUERY)
	@$(ECHO) Returned by PKG_STRING_RES: $(PKG_STRING_RES)
	ArrayPackage=$$( $(PKG_CFG_BROWSER) | egrep -i "$(PKG_CONFIG_QUERY)" | tr '[:cntrl:]' ' ' ) ;\
	$(foreach package,$$ArrayPackage,$(subst __PACKAGE__,$(package),$(PKG_CFG_BROWSER_LIB)))
	

compiled: $(.IGNORE)
	@$(ECHO) Target: %
	@$(ECHO) Shell Used : $(SHELL) 
	@$(ECHO) random numeric argument is: $(RANDOM_N)
	@for item in $(compiled) ; do $(subst __TAG__,"Project should produce $@ target: $$item", $(subst __FMT__,$(PRINTF_DEF_FMT),$(PRINTF)) ) ; done  

decompil:
	@$(ECHO) DECOMPILATION TRIGERRED

path: $(.IGNORE)
	$(ECHO) Verifying destination path.
	$(PATH_BIN)
	$(PATH_OBJ)

fib:	fib.cpp
	@$(ECHO) Compiling C++ code $@ from $<
	$(CPP) $(CPPFLAGS) $(CPP_OUT)$@ $< 
	@$(ECHO) Testing application with One random numeric variable.
	@./$(BIN_PATH)/$@ $(RANDOM_FIB)

asm_stdout:	asm_stdout.c
	@$(ECHO) Target: $%
	$(CC) $(CFLAGS) $< $(CURRENT_LDFLAGS) $(CC_OUT)$@
	@$(ECHO) Testing the application.
	@./$(BIN_PATH)/$@

arg_get.S: 	arg_get.c
	@$(ECHO) Making Assembly code from Source.
	$(CC) $(CFLAGS_ASM) $< $(CC_ASM_OUT)$@
	@cat $@

arg_get: 	arg_get.c
	$(CC) $(CURRENT_CFLAGS) $< $(CURRENT_LDFLAGS) $(CC_OUT)$@
	@$(ECHO) Testing the application.
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET))) 
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 

nano_sleep.S: 	nano_sleep.c
	@$(ECHO) Making Assembly code from Source.
	$(CC) $(CFLAGS_ASM) $< $(CC_ASM_OUT)$@
	@cat $@

nano_sleep: 	nano_sleep.c
	@$(ECHO) STATUS of DECOMPILATION: $(DECOMPILATION)
	@$(ECHO) CURRENT_CFLAGS : $(CURRENT_CFLAGS)
	@$(ECHO) CURRENT LDFLAGS: $(CURRENT_LDFLAGS)
	@$(ECHO) CURRENT OUTPUT : $(CURRENT_OUT)
	$(CC) $(CURRENT_CFLAGS) $(CURRENT_LDFLAGS) $< $(CURRENT_OUT)$(subst __FILE__,$@,$(FILE_TYPE_OUT))
	@if [ "$(DECOMPILATION)" == "" ] ;\
		then echo "Testing the application" ;\
		$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD)) 1500000000 ;\
	fi 

ex___mulsi3.S: 	ex___mulsi3.c
	$(CLEARSCR)
	@$(ECHO) Making Assembly code from Source.
	$(CC) $(CFLAGS_ASM) $< $(CC_ASM_OUT)$@
	@cat $@

ex___mulsi3: 	ex___mulsi3.c
	$(CLEARSCR)
	$(CC) $(CFLAGS_GCC) $(C_LDFLAGS_GCC) $(CC_OUT)$@ $<
	@$(ECHO) Testing the application.
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET)))
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 

uuid-test: 	uuid-test.c
	$(CLEARSCR)
	$(CC) $(CFLAGS) $< $(C_LDFLAGS) $(CC_OUT)$@
	@$(ECHO) Testing the application.
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET)))
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 

envvars.o: envvars.S
	@$(ECHO) Building object $@ from $<
	$(AS) $(AS_CURRENT_FLAG) $< $(AS_OUT)$@ 
	
envvars:	envvars.o
	@$(ECHO) Building executable $@ from object $<
	$(LD) $(LD_AS_CURRENT_FLAG) ./$(OBJ_PATH)/$< $(LD_OUT)$@
	@$(ECHO) Testing the application.
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET)))
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 
	
#$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD)) 1200 

millisecsleep2.o: millisecsleep2.S
	@$(ECHO) Building object $@ from $<
	$(AS) $(AS_FLAGS) $< $(AS_OUT)$@ 
	
millisecsleep2:	millisecsleep2.o
	@$(ECHO) Building executable $@ from object $<
	$(LD) $(LD_AS_CURRENT_FLAG) ./$(OBJ_PATH)/$< $(LD_OUT)$@
	@$(ECHO) $(DISPLAY_EXEC_CURRENT)
	$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET)))
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 

shell.o: shell.S
	@$(ECHO) Building object $@ from $<
	$(AS) $(AS_CURRENT_FLAG) $< $(AS_OUT)$@ 
	
shell:	shell.o
	@$(ECHO) Building executable $@ from object $<
	$(LD) $(LD_AS_CURRENT_FLAG) ./$(OBJ_PATH)/$< $(LD_OUT)$@
	@$(ECHO) $(DISPLAY_EXEC_CURRENT)
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET)))
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 

cpuid%.o: cpuid%.S
	@$(ECHO) Building object $@ from $<
	$(AS) $(AS_CURRENT_FLAG) $< $(AS_OUT)$@ 
	
cpuid%:	cpuid%.o
	@$(ECHO) Building executable $@ from object $<
	$(LD) $(LD_AS_CURRENT_FLAG) ./$(OBJ_PATH)/$< $(LD_OUT)$@
	@$(ECHO) $(DISPLAY_EXEC_CURRENT)
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET)))
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 

#	$( subst __FILE__,$@.S,$(subst __GDB_FILE__,$(subst .S,.gdb,$<),$(GDB_CREATE_FUNCT_BREAK) ))
 #cpuid64.o: cpuid64.S
#	@$(ECHO) Building object $@ from $<
#	$(AS) $(AS_CURRENT_FLAG) $< $(AS_OUT)$@ 
	
#cpuid64:	cpuid64.o
#	@$(ECHO) Building executable $@ from object $<
#	$(LD) $(LD_AS_CURRENT_FLAG) ./$(OBJ_PATH)/$< $(LD_OUT)$@
#	@$(ECHO) Testing the application.
#	./$(BIN_PATH)/$@


shell-bash.o:	shell-bash.S 
	$(ECHO) Building object $@ from $< 
	$(AS) $(AS_CURRENT_FLAG) $< $(AS_OUT)$@ 

shell-bash: shell-bash.o 
	$(ECHO) Building executable $@ from object $<
	$(LD) $(LD_AS_CURRENT_FLAG) ./$(OBJ_PATH)/$< $(LD_OUT)$@
	@$(ECHO) $(DISPLAY_EXEC_CURRENT)
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET)))
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 

### Generic make target  :

%.decompil: $(OBJ_PATH)/$(subst .decompil,.o,%)
	@$(ECHO) STATUS of DECOMPILATION : $(DECOMPILATION)
	@$(ECHO) CURRENT_CFLAGS          : $(CURRENT_CFLAGS)
	@$(ECHO) CURRENT LDFLAGS         : $(CURRENT_LDFLAGS)
	@$(ECHO) CURRENT OUTPUT          : $(CURRENT_OUT)
	@$(ECHO) TARGET NAME             : $(TARGET)
	@$(ECHO) PREREQUISITE NAME       : $@ 
	@$(ECHO) Decompiling $(subst .decompil,,$@) from Decompiled object $(subst .decompil,.o,$@)
	@THISFLAG="$(CFLAGS_DEC)" ; if [ $(shell egrep -ic $(HAVE_INTERNAL_GCC) $(subst .decompil,.c,$@) )  -gt 0 ] ; then THISFLAG="$(CFLAGS_GCC)" ; echo "file have Define $(HAVE_INTERNAL_GCC), must use specific CFLAGS: [$$THISFLAG]" ; $(CC) $$THISFLAG $(subst .decompil,.c,$@) $(C_OBJ_OUT)$(subst .decompil,.o,$@) ; fi ; echo "CFLAG used :[$$THISFLAG]"
	@test -f $(subst .decompil,.o,$@) && $(DUMP) $(DUMP_FLAGS) $(OBJ_PATH)/$(subst .decompil,.o,$@) 


### Must, have a source file present.
### File compiled object must be present 
### inside obj path . 
%:	%.o
	@$(ECHO) [Assembly	][Generic Build	] Building executable $@ from object $<
	$(LD) $(LD_AS_CURRENT_FLAG) ./$(OBJ_PATH)/$< $(LD_OUT)$@
	@$(ECHO) [Assembly	][Generic executable	] Building executable 
	$(READELF) $(ELF_FLAGS)./$(BIN_PATH)/$@ 
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@,$(APPLICATION_RUN_METHOD))) 

$(OBJ_PATH)/%.o:	%.S
	@$(ECHO) [Assembly	][Generic Build	] Building object $@ from $<
	$(AS) $(AS_CURRENT_FLAG) $< $(AS_OUT_GEN) $@ 
	@$(subst __GDB_FILE__,$@.gdb,$(subst __FILE__,$@.S,$(GDB_ACTION_TARGET)))

$(OBJ_PATH)/%.o:	%.c
	@$(ECHO) [Assembly	][C Source origin	] Building object $@ from $<
	$(AS) $(AS_CURRENT_FLAG) $< $(AS_OUT_GEN) $@ 
	$(DUMP) $(DUMP_FLAGS) $@

#%.o:
#	if [ "$(filter $<,$(sources),)" == "" ] ; then \
#	@$(ECHO) File $< not listed inside source, will use Generic parameter. ; \
#	fi

clean:
	@$(RM) *.gdb 
	@for StrObjects in $(objects) ; do $(RM) $(OBJ_PATH)/$$StrObjects ; done 
	@if [ "$(ERASE_BIN)" == "True" ] ; then for StrCompiled in $(compiled) ; do $(RM) $(BIN_PATH)/$$StrCompiled ; done ; fi 
	@if [ -f helper.encode ] ; then $(RM) helper.encode ; fi 

none:
	@$(ECHO) did not specify a goal.

.PHONY:	

ifeq ( $(VIEWGOAL),True )
	$(warning DEFAULT_GOAL used [$(.DEFAULT_GOAL)])
endif
