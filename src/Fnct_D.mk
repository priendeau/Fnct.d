
PATH_INSTALL_LIB				:=/etc/Fnct.D

bash_lib 								= _sub_Structure \
													fnct_debian_lib \
													_sub_Function_Appliance \
													_sub_jack_script \
													_sub_Git \
													_sub_setup_py_extra_cmd \
													_sub_ssh_handler \
													_sub_vlc_services \
													_sub_binary \
													_sub_PythonBoost


define MakePathInstall
@if [ ! -d $(PATH_INSTALL_LIB) ] ; then sudo -s mkdir $(PATH_INSTALL_LIB) ; fi 
endef

#Pragma function of LinkLib
define LinkLib
ln -sf ../$(%D)$(1) $(PATH_INSTALL_LIB)/$(1)
endef

#Pragma function of UnProtectFile
define StartLink
$(foreach StrFile,$(1),$(call LinkLib,$(StrFile)))
endef

path-install:
	$(MakePathInstall)

fnct.d:	
	$(call StartLink,$(bash_lib))
