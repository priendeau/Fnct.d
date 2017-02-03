


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

SUDO										:=/usr/bin/sudo
SUDO_FLAGS							:=-s
SIGNATURE								:=/usr/bin/openssl
BASE64									:=/usr/bin/base64
SHA1SUM 								:=/usr/bin/sha1sum
DIFF										:=/usr/bin/diff
PATCH										:=/usr/bin/patch
CUT											:=/usr/bin/cut
ZENITY									:=/usr/bin/zenity
PKG_CFG_BROWSER					:=/usr/bin/pkg-config --list-all | cut -d ' ' -f1
PKG_CFG_BROWSER_LIB			:=/usr/bin/pkg-config __PACKAGE__ --libs
SCROLL_FILE							:=__INPUT__ | /bin/more -f 
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
include source_mgmt.mk

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
PATCH_FLAGS							:=-p 3
DIFF_FLAGS							:=-U 3 --from-file=
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

protected = shell-gas.S shell-gas.asm shell.asm shell-bash.asm shell-bash.S	shell.S

script		= bashrc_update

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

TARGET									:=$(addsuffix .decompil, %)
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
FNCTLIBSTARTPATH				:=$(PATH_INSTALL_LIB)

### Related to Generating Error without uses of $(error ...)
### Notice, even Creating Variable. ERRHANDLER=error
### $(eval $($(ERRHANDLER) ...) ), or $(call $(ERRHANDLER),...) 
### directly launch the error is a recipe does contain the word $(error...
### even make version 3.81, does not allow uses of if in:
### $(if [condition to call the error],$(error ..) ) .

### This Variable acting as function called ExitWithStateMsg
### does requiert a reason to launch the desired exit code, with
### $(VARIABLE) in Param1 holding the MESSAGE to Exit.
### While Param2 is The variable Trigger compared with Param1
### In situation of Param1 == Param2, you have to specify in
### Param3 The error message or type it inside the third 
### field of this function. Especially important the Param4
### reserved to launch a specific ERROR_LEVEL handled by 
### OS after. But default handled by make is '1' to set in 
### Param4.
# Pragma Variable acting as function of ExitWithStateMsg ISSHA1SUM_CERT, FAILED, SIGN_ERR_BAD_DGST, 1 
# Param1 : String Variable to compare
# Param2 : String Variable to compare with Param1
# Param3 : Variable name, the Error Message
# Param4 : Exit State (usually 1)
#
define ExitWithStateMsg
@if [ "$(1)" == "$(2)" ] ; then \
	$(ECHO) $(3);\
	exit $(4) ; \
fi 
endef
### Compared to Fnct.D BoolVarTest that generate an if 
### statement, it can support makefile naming convention,
### as long you back-slashing the dollar sign '$' it's not
### causing any problem.  
### calling :
### BVTIdType=0 BVTIsValueToVarAssert=True BVTIsPreambule=False BVTBoolVarName="\$(1)" BVTBoolCase="\$(2)"  BVTVTVTPLA="\$(ECHO) \$(3) ; exit \$(4)" BoolVarTest 
### Using the BoolVarTest Template Assertion of ValueToVariable to redefine the $(ECHO)
### Error message. Having some specificity against '$(ECHO)' inside the template,
### replacing \$(3) by __FNCT_ASRT__ and adding prefixed variable BVTVTFnctA="\$(3)"
### of anything else will open the template structure.
###
### Notice: BVTIdType=0 is not mandatory if it's a simple 
### if statement. By contrast of generating an else it require
### BVTIdType=4 + BVTIdType=5 with some worry about BVTIsPreambule
### where it should be set to false. Many example are available 
### through https://github.com/priendeau/Fnct.d
###
### Other uses of BVTType,
### While makefile recipe support starting the command with a '@'
### BVTType from BoolVarTest may take other parameter.
### This String is a comma separated value transformed into an 
### Array. Changing the order will simply break the output and 
### won't output a proper if-statement. But Adding a '@' to 
### any if statement like ;
### BVTType="@if:fi,@if:elif,elif:elif,elif:else,@if:else,else:fi,elif:fi"
### will give to BoolVarTest in case we are calling BVTIdType=0
### to generate an if-statement with command '@' for makefile
### and hide the command from the prompt.

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

### 
### User Interaction level. 
### Can inform the user of it's presence to answer to some 
### question toward installation and some exception it may
### occurs. 
### 
ifdef USEInteraction
	ISINTERACTION							:=True
else
	ISINTERACTION							:=False
endif


### 
### Zenity Section. 
### This makefile can provide UI for USer assistance or user 
### specification. 
### 
ifdef USEZenity
	ISZENITY							:=True
else
	ISZENITY							:=False
endif

### 
### Some Extra definition for Zenity .
### 
ZenityWarning						:=I Do have read and agree this is a development tool not hacking and exploit stuff.

define ZenityTextInfo
$(ZENITY) --height=600 --width=800 --text-info --filename=$(1) --font="Monospace 10" --checkbox="$(ZenityWarning)"  2> /dev/null 
endef

define ZenityFileReader
	@if [ "$(ISZENITY)" == "True" ] ; then $(call ZenityTextInfo,$(1)) ; $(RM) $(1) ; fi
endef 

### Definition of overall AS flag, LD Flags and decompilation flags.
### This is also to allow ABI32 to not link an x86-64 code or error 
### like file not found or link-missing or any related messages to 
### architecture conflicts. 
### 
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

### Provide extra layer of debugging through GDB and 
### decompilation process. 
### 
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

### Transform the test execution from somes target into 
### an instance of the debugger. 
### 
ifdef RUN_WITH_DEBUGGER
	APPLICATION_RUN_METHOD:= $(GDB) $(GDB_CURRENT_FLAGS) $(APPLICATION_RUN_METHOD)
	DISPLAY_EXEC_CURRENT	:= Debugging application prior to lunch, using $(GDB). Prefixed-variable of this make like ASSEMBLY_GSTAB=1 will enforce your debugging session, and GDB_GET_FUNCT_FROM_SOURCE=1, will parse your file and create a debug-file to load with $(GDB) and add break on any function. Notice, some application require to use Argument to work under these make, and using WITH_ARG=1 will pass your argument to $(GDB).
endif


### Simply debug the Makefile and
### tell the appropriate GOAL choosed 
### by the makefile. 
ifdef DISPLAY_GOAL
	VIEWGOAL 							:=True
else
	VIEWGOAL 							:=False
endif


### Allow keeping the binary compiled 
### during a clean target declaration. 
### 
ifdef KEEP_BIN
	ERASE_BIN							:=False
else
	ERASE_BIN							:=True
endif

### Use the MD_CD from git cloned branch and not 
### installed-one since this makefile does install
### Fnct.D and do compile stuff with Makefile
### rules and method to reduce  library search
### from developped command to add Library from
### a query unless 'make clobber' is yield to
### clean the Library instance. 

ifdef USE_DEV_MKDIR
MKDIR										:=../md_cd
FNCTLIBSTARTPATH				:=../
endif

### single if : $(if condition,then-part[,else-part])
### since this is not easy to touch to comma separated value with makefile
### Package-config query should remain with comma space value instead. 
PKG_CONFIG_COMPLEX_QUERY	:=False
#PKG_STRING_RES						:=findstring('$(EXTERN_CSV)',$(PKG_CONFIG_QUERY))
#ifdef PKG_CONFIG_QUERY
# $(words text)
#endif


### BASH-INLINE command 
### AS_GET_TEXT_START, used to detect line-number where the _start function is 
### AS_GET_LINE_TEXT, used to report number of lines for an Assembly file .
### inside the file . 

### This part is not using define/endef for extended variable and
### not using $(1), $(2), $(3)... passed by $(call VariableName,Val1,Val2...) 
### handler
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

### Special extended variable. 
### Should check if Variable MKDIR 
### hold ${FNCTDLIBPATH}/md_cd and if 
### this file exist, or we should 
### to process install Fnct.D Library
### first. 
define CHECK_MKDIR
@MDCDCMD=$(subst $(dir $(MKDIR)),,$(MKDIR)) ; \
	BoolFnctDPresent=False ; \
	if [ ! -d ${FNCTDLIBPATH} ] ; then \
		$(ECHO) "REQUIRE TO INITIALISE FNCTDLIBPATH before Starting" ; \
		$(ECHO) "INSTALLING THE FNCT.D LIBRARY." ; \
		export FNCTDLIBPATH=$(1) ;\
	else \
		BoolFnctDPresent=True ; \
	fi ; \
	$(ECHO) "Verifying $$MDCDCMD from $(dir $(MKDIR))" ; \
	if [ "$$BoolFnctDPresent" == "True" -a ! -f $(MKDIR) ] ; then \
		$(ECHO) "$$MDCDCMD from $(dir $(MKDIR)) not installed." ; \
	else \
		$(ECHO) "$(MKDIR) Installed." ; \
	fi ; \
	if [ "$$BoolFnctDPresent" == "False" ] ; then \
		$(ECHO) "Verifying $$MDCDCMD from ../$$MDCDCMD" ; \
		if [ ! -f ../$$MDCDCMD ] ; then \
			$(ECHO) "componnent $$MDCDCMD not present, using $(%D)$(MKDIR) require restarting the makefile with USE_DEV_MKDIR=1" ; \
		fi ; \
	fi ; 
endef

### Special extended variable. 
### Start The basic Fnct.D, allowing important 
### function to work during the installation. 
### it may or not depends of the present 
### installed Fnct.D, or simply one inside the 
### cloned instance of Fnct.D . This Makefile
### is located inside the Fnct.D/src path
### starting from this point it will use
### the ../md_cd, ../_sub_Structure ... 
define StartSubStructure
declare -a ArrayLib=( $(1) ) ;\
versionGCT=0.0.1  \
versionGSPN=0.0.2 \
versionMC=0.0.2   \
versionTP=0.0.2   \
versionGPI=0.0.1  \
versionCA=0.0.2  	\
LLDisplayProg=$(2) LLStatusDev=0 . $(FNCTLIBSTARTPATH)/fnct_lib 
endef

define UpdateBashInit
cp $(1)/$(BASH_INIT) $(USER)/$(BASH_INIT)-save ; \
cat $(UPDATE_INIT_BASH) >> $(USER)/$(BASH_INIT) ; \
$(DIFF) $(DIFF_FLAGS)$(USER)/$(BASH_INIT) $(USER)/$(BASH_INIT)-save > $(2) ;
endef

define RestoreBashInit
$(PATCH) $(PATCH_FLAGS) .bashrc $(1) 
endef

### remove addition of .bashrc 
### compare with a save : 
### diff -U 3 --from-file=.bashrc .bashrc-save > bashrc.patch
### restore the original
### patch -p 3 .bashrc bashrc.patch 


#Pragma Variable as function of TEST_FILE_ERASE
#Used in Situation where it's important to verify 
#file presence before to clean . 
define TEST_FILE_ERASE
$$( if [ -f $(1) ] ; then $(RM) $(1) ; fi ; ) 
endef


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
	@if [ "$(ISZENITY)" == "True" ] ; then \
	  $(subst __FILE__,$<,$(BASE64_DECODER) > $@ ) ; \
	else \
	  $(subst __FILE__,$<,$(subst __INPUT__,$(BASE64_DECODER), $(SCROLL_FILE))) ; \
	fi 

helper:	helper.decode
	@$(call ZenityFileReader,$<) 


### A method to produce a easy-driven license. Based on same as developping 
### easy-driven helper. 

license.encode: 
	@$(subst __FILE__,$@,$(subst __SRC__,$(subst .encode,.txt,$@),$(BASE64_ENCODER)))

license.decode: license.encode
	@if [ "$(ISZENITY)" == "True" ] ; then \
	  $(subst __FILE__,$<,$(BASE64_DECODER) > $@ ) ; \
	else \
	  $(subst __FILE__,$<,$(subst __INPUT__,$(BASE64_DECODER), $(SCROLL_FILE))) ; \
	fi 

license:	license.decode
	@$(call ZenityFileReader,$<) 

### This Test should only remove error while processing 
### pkg-config commands. Some package should be missing 
### and should only report nothinor to not update the
### Library addition makefile. 
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
	

clean:
	@$(RM) *.gdb 
	@for StrObjects in $(objects) ; do $(RM) $(OBJ_PATH)/$$StrObjects ; done 
	@if [ "$(ERASE_BIN)" == "True" ] ; then for StrCompiled in $(compiled) ; do $(RM) $(BIN_PATH)/$$StrCompiled ; done ; fi 
	@$(foreach StrFile,helper.decode,$(call TEST_FILE_ERASE,$(StrFile))) 

none:
	@$(ECHO) did not specify a goal.


chkdir:
	@$(call CHECK_MKDIR,$(PATH_INSTALL_LIB)) 

sub-structure:
	@$(ECHO) initialising the Fnct.D startup library 
	@$$( $(call StartSubStructure,$(STARTUP_FNCTLIB),True) )

user-init-script:
	@$(ECHO) Updating .bashrc Init.
	$$( $(call CheckBashInit,$(USER),bashrc-save.patch) ) 

install: chkdir sub-structure user-init-script fnct.d
	@$(ECHO) Fnct.D startup path before installation: $(FNCTLIBSTARTPATH)
	
unpatch-init:
	@$(ECHO) Restore $(BASH_INIT) from previous patch instance (assume install was done at least one time).
	@$$( $(call RestoreBashInit,bashrc-save.patch) )

uninstall: unpatch-init
	@$(ECHO) Un-install can only offer to retreive information from $(BASH_INIT)
	@$(ECHO) Improvement are to come. 


.PHONY:	

ifeq ( $(VIEWGOAL),True )
	$(warning DEFAULT_GOAL used [$(.DEFAULT_GOAL)])
endif
