#SCRIPT-INFO:This Sed script need following parameter :
#PARAM-REQUIRED:--regexp-extended
#PARAM-REQUIRED:--file /etc/init.d/fnct.d/sed-script/declare-function-filter.sed
s/(declare)([\\ ]*\-f[\\ ]*)//g
