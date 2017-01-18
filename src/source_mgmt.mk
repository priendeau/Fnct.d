### 
### Source Section.
### This is not concerning Fnct.D installation. 
### it work on comparaison of some application
### like uuidgen, sleep with accuracy of 
### millisecondes. Arguments and environment 
### readed in Assembly instruction. And offer
### decompilation structure and C-Source code
### to assembly example.

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

### Warning ex___mulsi3.c is not directly compilable by the 
### compiler. Since it use internal gcc optimization it should
### read the Library /usr/lib/gcc/x86_64-linux-gnu/4.8/libgcc.a 
### from Environment ${LD_LIBRARY} or require ranlib to generate
### so-name. 
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
