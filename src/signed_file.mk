

FILE_SIGNATURE					:=UDRiVWFpZHl0b1lMcVdBd0tiM3BobnM5VDNLV29GRW53SEY3UkxtUnNhOW94ZFhoa0puYU52cWV5RXN1aWRDago=
FILE_SIG_SHA1SUM				:=043f55af72c34afe55c9df7168b168beef03073d
SIGNATURE_TYPE					:=-cast-cbc
SIGN_ERR_BAD_DGST				:=File, signed_file.mk, error with FILE_SIGNATURE does not match the digest.
FAILED_MSG							:=FAILED
SIGNED_EXTENSION				:=.signed

### Related to FILE_SIGNATURE 

APPLY_SIGNATURE					:=$(SIGNATURE) enc -e
REVERT_SIGNATURE				:=$(SIGNATURE) enc -d

#Pragma function of CUT_FUNCT
define CUT_FUNCT
$(CUT) -d $(1) -f $(2)
endef

#Pragma function of BASE64_TO_SIG
define BASE64_TO_SIG 
$(ECHO) $(1) | $(BASE64) -d 
endef

#Pragma function of SIG_TO_BASE64
define SIG_TO_BASE64
$(ECHO) $(1) | $(BASE64) --wrap=0 
endef

GET_SHA1SUM_HEADER			:=$(SHA1SUM) | $(call CUT_FUNCT,' ',1)

#SHA1SUM_CERT_SIG
define SHA1SUM_CERT_SIG
$(call BASE64_TO_SIG,$(1)) | $(GET_SHA1SUM_HEADER)
endef

#Pragma function of APPLY_SIGN_AS_CERT
define APPLY_SIGN_AS_CERT
$(APPLY_SIGNATURE) -a -k $(FILE_SIGNATURE) $(SIGNATURE_TYPE) -in $(1) -out $(2)
endef

#Pragma function of DISTRIBUTE_FROM_SIGN
define DISTRIBUTE_FROM_SIGN
$(REMOVE_SIGNATURE) -a -k $(FILE_SIGNATURE) $(SIGNATURE_TYPE) -in $(1) -out $(2)
endef

#Pragma function of GET_SIGNATURE
define GET_SIGNATURE
$$( $(call BASE64_TO_SIG,$(1)) )
endef

#Pragma function of SHA1SUM_CERT_PROC
define SHA1SUM_CERT_PROC
$$( StrCheck=$$($(call SHA1SUM_CERT_SIG,$(1))) ;\
if [ "$${StrCheck}" == "$(2)" ] ; then \
	$(ECHO) OK ; \
else \
	$(ECHO) FAILED; \
fi ; )
endef

#Pragma function of ExitWithStateMsg ISSHA1SUM_CERT, FAILED, SIGN_ERR_BAD_DGST, 1 
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

GET_DECODED_SIGNATURE		:=$(call GET_SIGNATURE,$(FILE_SIGNATURE))
ISSHA1SUM_CERT					:=$(call SHA1SUM_CERT_PROC,$(FILE_SIGNATURE),$(FILE_SIG_SHA1SUM))

#Pragma function of SHA1SUM_CERT_PROC
#$(ECHO) "Applying signature for $(1), signed file: $(1))$(SIGNED_EXTENSION)"
define ApplySignature
$(ECHO) "Applying signature for file $(1)" ; \
$(APPLY_SIGNATURE) $(SIGNATURE_TYPE) -a -k $(GET_DECODED_SIGNATURE) -in $(1) -out $(basename $(1))$(SIGNED_EXTENSION) ; 
endef

#Pragma function of RevertSignature
define RevertSignature
$(REVERT_SIGNATURE) $(SIGNATURE_TYPE) -a -k $(GET_DECODED_SIGNATURE) -in $(basename $(1))$(SIGNED_EXTENSION) -out $(1) ; 
endef

#Pragma function of ProtectFile
define ProtectFile
$(foreach StrFile,$(1),$(call ApplySignature,$(StrFile)))
endef

#Pragma function of UnProtectFile
define UnProtectFile
$(foreach StrFile,$(1),$(call RevertSignature,$(StrFile)))
endef


digest:
	$(call ExitWithStateMsg,$(ISSHA1SUM_CERT),FAILED,$(SIGN_ERR_BAD_DGST),1)

check_signature: digest
	@$(ECHO) "SIGNATURE BASE64 fmt. : $(FILE_SIGNATURE)"
	@$(ECHO) "SIGNATURE TEXT   fmt. : $(GET_DECODED_SIGNATURE)"
	@$(ECHO) "SHA1SUM DIGEST        : $(FILE_SIG_SHA1SUM)"
	@$(ECHO) "ISSHA1SUM_CERT        : $(ISSHA1SUM_CERT)"

protect:	check_signature
	$(call ProtectFile,$(protected))

unprotect:	check_signature
	$(call UnProtectFile,$(protected))
