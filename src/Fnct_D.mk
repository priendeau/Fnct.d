
PATH_INSTALL_LIB				:=/etc/init.d/Fnct.D
STARTUP_FNCTLIB					:=_sub_Structure fnct_debian_lib
UPDATE_INIT_BASH				:=bashrc_update
BASH_INIT								:=.bashrc
bash_lib 								= md_cd \
													_sub_Structure \
													fnct_debian_lib \
													_sub_Function_Appliance \
													_sub_jack_script \
													_sub_Git \
													_sub_setup_py_extra_cmd \
													_sub_ssh_handler \
													_sub_vlc_services \
													_sub_binary \
													_sub_PythonBoost \
													023102e0-1833-11e3-98a2-001b3875b29c \
													69968204-0cf6-11e3-99bc-001b3875b29c \
													131cb830-8cd7-11e6-8b1d-001e4c8856d6 \
													6e063cbc-0ce2-11e3-8879-001b3875b29c \
													877d7e9a-1001-11e3-98a2-001b3875b29c \
													aa49dbce-3079-11e3-98a2-001b3875b29c \
													50ccda66-2ebb-11e3-98a2-001b3875b29c \
													6403c722-28a6-11e3-98a2-001b3875b29c \
													950966fa-0e67-11e3-98a2-001b3875b29c \
													0f86b448-72f4-11e6-8b1d-001e4c8856d6 

define MakePathInstall
@if [ ! -d $(PATH_INSTALL_LIB) ] ; then $(SUDO) $(SUDO_FLAGS) /bin/mkdir $(PATH_INSTALL_LIB) ; fi 
endef

#Pragma Variable as function of LinkLib
define LinkLib
@if [ ! -l $(PATH_INSTALL_LIB)/$(1) -o ! -f $(PATH_INSTALL_LIB)/$(1) ] ; then \
  ln -sf ../$(%D)$(1) $(PATH_INSTALL_LIB)/$(1) ; \
else \
	$(ECHO) "Link or File $(PATH_INSTALL_LIB)/$(1) already point to your development." ; \
fi ; 
endef

#Pragma Variable as function of UnProtectFile
define StartLink
$(foreach StrFile,$(1),$(call LinkLib,$(StrFile)))
endef

path-install:
	$(MakePathInstall)

fnct.d:	path-install
	$(call StartLink,$(bash_lib))
