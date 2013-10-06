
============
Fnct.D
============


.. image:: https://raw.github.com/priendeau/Fnct.d/master/images/Fnct_D_Cover.png
		:target: https://github.com/priendeau/Fnct.d#Fnct.D
		

:Info: See `github <https://github.com/priendeau/Fnct.d/>`_ for the latest source.
:Author: Patrick Riendeau
:Stade: Pre-Alpha, Draft specification not terminated.

Copyright
=========

::
	
	Copyright (c) 2009-2013 << Patrick. Riendeau, Maxiste Deams >>.
	All rights reserved.
	
	Redistribution and use in source and binary forms are permitted
	provided that the above copyright notice and this paragraph are
	duplicated in all such forms and that any documentation,
	advertising materials, and other materials related to such
	distribution and use acknowledge that the software was developed
	by the UnderscoreX.  The name of the
	UnderscoreX may not be used to endorse or promote products derived
	from this software without specific prior written permission.
	THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
	IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
	WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.

About
=====

This is a Library for managing function a permanent subset for cleaning 
/etc/init.d and many distribution shell with doubtfull feature and poor
verbosity and documentation. 


Preface
=======

These are Common Bash-Object for Fnctlib _pre-Alpha-Init.d re-implementation 
for services management in Ubuntu/Debian/Fedora, which pass secessfully some handy-test 
in 3 years of developpement.

Post-Note
=========

Unlike old development of fnct_lib, such important function and design being 
redesigned to simply work. Fnct_lib leave the function __call_locality where an 
important overloading just corrupt the design. Also introduced the Getter and 
Setter thru the __call_locality function was an echec and function does not 
support '.' in their name at all, in any version also I beileive it's and event
assembly export from many *nix design does not support '.' in their name... 
Old Fnct_lib was also developping a dangerous concept, The Post-Fixed variables.
Where totally not handled, it should be supported by the function core like 
__call_locality or any __fnctCreateLocalityFuncParam and ... Also fnct_lib was
trying to develop passing interface based on Base64 a uniform codec translation
a bit slower and really slowing the function when assignement 
__call_localityDisplayFunctionEntry=1 was made inside __call_locality function 
and using mere __in_for, a Loop-wrapper for Array and function Array => F(x)
execution. 

Today we leaving __call_locality to implement external function reading the TAG.
Now, __call_locality come back as Array, it accept the Root Named 
Prefixed-Variable and the full-name of the function. This setup leave some 
external function like  GetVarReference extracting almost anything and add a basic 
helper. Where is was impossible to create convenient Helper inside the original 
fnct_lib, GetVarReference had several acheivement... Weak and simple, but 
still work corretly. Two derivate from this external function, 
__GetVarReferenceList __GetVarReferenceCompWord  are also good candidate 
to produce steady services, Prefixed-Variable extraction and automation of 
Word Completion, a lacking design after hearing some group asking  to put on the 
thumb important reference while Network admin from late 1990 should have 
to administrate World and world of network by hand... There is no evolution 
between implementation of this services and methodonomy to implement it on safe
basic design.


Description
===========

While bash start to offer more than conventional Shell, memory start to be very affordable, many
Boot-loader start to offer socket for Bash-like behavior and will be soon be part of Posix
conformance. Pre-Development from Command-line automation, and creation of Fnct_lib 
was a moderated Sub-API, a Wrapping in shell automate management and lead to well written version
introduced with fnct_debian_lib and linked sub-shell lib.


Synopsis
========
This will serve to generate development script and auto-creation-script for test purposes and automated
services for many U*nix and Linux environment. 

By The design, it will offer safe-container and safe method of transfering information in management
of services and will be able to perform gain in check-up in stable envirronement by skipping check
in Read-only mode of certains loading... Like, If RO-File-system is older than creation date, it will
be able to query OS to add trigger to perform less operation and load information faster in subsequent
startup... Idem with services with less touched file configuration. It will be able also to increase
oeuvrability of uncommon option like Disk-To-Stream accesibility and Memory-To-Stream Uses, aka
Network-Booting, Network Memory Pool and Network Application Ground-up.

Also , Methodology of implementation is strict and observe Object-oriented transcription in
transformation of many available Byte-coded of IDL re-interpretation in super-tiny scalling...

Certains option will be implemented in second-stage of developpement, and
creating wrapper for un-accessible Gpl-services or fast-implementation prototyping,
switch for DTD extraction of Shell-Application program and XML Verbosis and XML object induction to
help developpement of functionnality implementation in fnct_list .


Arguments
=========
	
Are Mostly Prefixed-variable to be understand and replacing 90% of switched uses into
Services declaration and Services Information. Services Establishement like --compword
is a future feature available soon after 2013-09-08 where all function will own word
completion activation. 


Invocation
==========

Likewise Bsd Middle-age, a sub-entity was existing inside /etc/init or /etc/init.d
and desapear or move inside /usr This design exist inside /etc/init.d/Fnct.d to 
establish a __future__ development for integration inse loader and initrd for shell
management and Integration. 


Improvement
===========

Now on latest relase ( 2013-09-04 ), the re-integration of /etc/init.d/Fnct.d/fnct_lib 
was added to Git repository. so now inside a simple .bashrc the following line will 
call the Lib:

.. code:: shell
	
	### Must be added inside ~/.bashrc 
	. /etc/init.d/Fnct.d/fnct_lib 


Assuming the Git developpement branch was cloned inside /etc/init.d/Fnct.D
	

.. code:: shell
	
	$> cd /etc/init.d
	$> sudo -s git clone https://github.com/priendeau/Fnct.d 
	
	###
	### Don't forget, only God can ask you to put something inside 
	### /etc/init.d . 
	###
	


Definitions
===========

Part of Imaginary symptoms, a wide concept called efficiency is a key and a lost
dream in the today dream. Having multiplicity of design and a restricted goal, 
many distribution come to a day where is become heavy and slow and start stinking.
Sinking the source into all faith, telling what slowing the wage is more an Imaginary
symptoms like Freudian regression of psychiatric ill.

:Note: fb7831a4-1e3a-11e3-98a2-001b3875b29c
:Title: Pumping performance problems, 

.. image:: https://raw.github.com/priendeau/Fnct.d/master/images/Pumping_Performance.png
		:target: https://github.com/priendeau/Fnct.d#Definitions
(The desire to be pitied and surrounded some childishness and the continual use of enemas are, in some respects, of a narcissistic hypochondriac who declined to anal stage of psychoanalysis, concerned about the control of its I / O and everything about his person (Freudian quote) )


An important definition in shell execution is time efficiency. Un-compiled 
Higher-Level script / language like Python, PHP,  and many other are not satisfying 
efficiency requirement like time execution. Simple script may own better readeability
and will give higher execution time. Mostly for being read from the interpreter and 
being executed after. While Bash is present while a command-line "is open", a nestled
brace with a find, an Array to store the information extracted by find and simple loop
to sum collected size will take almost 3 times more to accomplish almost same task. 

Example in Python : 

.. code:: python
	### File: 19e15224-1e3b-11e3-98a2-001b3875b29c.py  
	import os, sys 
	from os.path import join,getsize

	def get_total_size( path ):
	total=0
	for root,dirs,files in os.walk( path ):
		for name in files:
			total+=getsize( join( root,name) )
	return total

	print "Total:{}".format( get_total_size( sys.argv[1] ) )


.. code:: shell
	
	### having Performance based on this type of CPU ( not the Acer-One A0725, but Acer aspire 5520 )
	###
	### Following line is to compare actual processor speed vs. uses of time. 
	cat /pro/cpuinfo
	--------------------------------------------
	processor	: 0
	vendor_id	: AuthenticAMD
	cpu family	: 15
	model		: 104
	model name	: AMD Athlon(tm) 64 X2 Dual-Core Processor TK-57
	stepping	: 2
	cpu MHz		: 1900.000
	cache size	: 256 KB
	bogomips	: 3800.51
	...
	processor	: 1
	vendor_id	: AuthenticAMD
	cpu family	: 15
	model		: 104
	model name	: AMD Athlon(tm) 64 X2 Dual-Core Processor TK-57
	stepping	: 2
	cpu MHz		: 1900.000
	cache size	: 256 KB
	bogomips	: 3800.51
	...
	--------------------------------------------
	
	### From command line:
	
	
	$> time \
	{ 
	  local ArrayFsize=( $( find ./ -printf "%s " ) ) ; 
	  local  intsize=0 ; 
	  for item in ${ArrayFsize[@]} ; do 
	   intsize=$(( ${intsize} + ${item} )) ; 
	  done ; 
	  echo "Path Size:${intsize}" ; 
	}
	
	### Notice. 
	### Uses of time  does give multiple answer. It give real time execution,
	### and important time like User time, which is merely the time it take to 
	### your machine to open a windows under your username and execute following
	### code statement... And finally the system time, which is the time to open
	### a section inside higher level of Bash-Memory section to allocate memory, 
	### heap and lot's of protection and loggin facility as well . 
	
	### So this samplig from nestled-brace give us three information :
	### real	0m0.046s
	### user	0m0.009s
	### sys		0m0.008s
	### Total of 0.063s to execute a find to look inside all tree starting from a 
	### location and digging into it's last leaf... 

	### From Python file ( 19e15224-1e3b-11e3-98a2-001b3875b29c.py ), 
	###
	### time 19e15224-1e3b-11e3-98a2-001b3875b29c.py ### <--- This will work only 
	###
	### if chmod 775 was applied on file 19e15224-1e3b-11e3-98a2-001b3875b29c.py


	$> time 19e15224-1e3b-11e3-98a2-001b3875b29c.py
	### real	0m0.144s
	### user	0m0.033s
	### sys		0m0.026s
	### for a total of 0.203s to applied same algorithm .
	
	### Notice, python os.walk was considered more idiomatic and can calculate
	### useless informations like link and symbolink link which merely not 
	### consuming space on a disk, and somes systems it give you an arbritrary
	### size between 1 block of ( 512 to 4096 bytes ) and/or fixed size which is 
	### usually a virtual size. 
	
	###


Documentation
-------------


------------------------
Paper Draft informations
------------------------

:Note: 2224fe88-0b6f-11e3-812b-001b3875b29
:Title: Using Alias from Bash to replace setter and permanent Assignation in Prefixed-var .


An efficient way to replace Setter or active method to replace
Variable value from Prefixed-Var, using alias from shell enhance 
and allow in a simple .bashrc changing repository of 
PackageRepositoryMgmt, PackageRepositoryRest ... 

While not acknoledged Bug from GetVarReference to filter a function
directly by using declare -f __FUNCTION__, the --help will display 
original internal Value of Prefixed var, uses of Getter with --get
will show you actual value including uses of alias. 
 
::
	
	Example:
	simple PackageRepositoryMgmt --help will show for variable 
	PkgRepoMgmtRepository 

	=> value: /media/COMST500GB/Linux-Debian/archives/Mint-14_x86-64
	
It's original design, developped under Mint-14_x86-64 realm, today
need evolute and required another Distribution like Mint-15_x86-64
Also, using PackageRepositoryMgmt --get PkgRepoMgmtRepository 
will show you similar value... 

Except:
using following line imply having made another repository using 
Mint-15_x86-64 
or 
/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001
- Include possibility to use a Level Higher because Acer-One-Travel is also 
- hook to this drive for feeding the repository of other package where this one
depend of Radeon and OpenCL infrastructure to made simple uses of GPU during
my leasure time... ( if it exist... )

Using Alias...
Known to be a rubber-knife not depending from variable, but fixed informations
alias allow rewrite call from command line and Shell execution as well. 

- To be really important to inspect alias-sanity before doing a script to 
manage a Server, some doing extra verboses from this aliasing technique and
generating excess of informations and sometime it reduce filtering possibilities 
and anhilate uses of grep, sed and awk ... 

Assuming uses of alias is know, we can attach everyting to an allias.
- simple prefixed-Var
- test and execution on $? -eq 0 or 1 deppending how test was involved:
example: 
	alias echo='test -e ${USER}/.echo_right && echo'
	-> this powerfull thruth involve having impossibility to do an echo
	on a terminal assuming .echo_right might be a deposed file from 
	root-priviledge and can not be erased, it allow-you to echo on terminal.
 
	
::
	
	using alias : 

	alias PackageRepositoryMgmt='PkgRepoMgmtAddPkgLst=True \
	PkgRepoMgmtRepository=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001 \
	PkgRepoMgmtReposIndex=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001/index \
	PackageRepositoryMgmt'
	
	- Effect on PackageRepositoryMgmt --help 
	  -> PkgRepoMgmtRepository will continue to show :
	  
	/media/COMST500GB/Linux-Debian/archives/Mint-14_x86-64
	
	
	- effect on PackageRepositoryMgmt --get PkgRepoMgmtRepository
	
	will show : 
	
		/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001
		
	- Which give the correct value... 
 
 
Of course a complex case of managing creation with md_cd will imply a test
and result to a permanent verification of Repository path with :
 
::
	
	NewIndexRepository=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001/index
	NewRepository=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001
	
	alias PackageRepositoryMgmt='test -e  $( PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt --get PkgRepoMgmtReposIndex ) && /etc/init.d/Fnct.d/md_cd $( PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt --get PkgRepoMgmtReposIndex ) && PkgRepoMgmtAddPkgLst=True PkgRepoMgmtRepository=${NewRepository} PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt'
 
- This case is also exceptionnal, Attempting to use the variable without having new declaration of it thru uses of get might cumbershot the call 
- But next uses of PackageRepositoryMgmt will not depend of 
PkgRepoMgmtReposIndex and PkgRepoMgmtRepository anymore .
 

:Note: 748de708-0d0d-11e3-bb8a-001b3875b29c
:Title: Generated IF in BoolVarTestVarCreation & Parameter do change it's nature with default assignation.

Using BVTestBoolVarName, and supported case with uses of Bash version 2.0+ and higher 
version the, Function BoolVarTestVarCreation had no problems and behave corretly using 
this parameter like following statement 

::
	
	BVTestVarName=StrReturn BVTestVarHold="0" BVTestBoolVarName=\${Arg0:=local} BVTestBoolCase="global" BVTestBoolAssertion="1" BoolVarTestVarCreation
	
giving the following equivalent : 
	
.. code:: shell
		
		local StrReturn="0" ; 
		if [ "${Arg0:=local}" == "global" ] ; then 
			StrReturn=1 ; 
		fi
		
This allow simplification of common case having no value to assign and some internal 
test from function test and if, had several switches throwing error and reduce the 
test into something not certains and generate ambiguity in important case. 

::	
	In test and if--then-[elif [ if - then - elif[ ... ] - fi] - fi ]-else-fi uses
	of operator like 
	
	-eq, -ge, -gt, -le, -lt, -ne 
	-eq => if [ ${value} -eq ${N} ] ; then ... ; fi
	
	- Does not support Nil value of No value. 

Having possibility to use the Prefixed-Variable as 

.. code:: shell
	
	BVTestBoolVarName=\${Arg0:=local}
	
allow a Generated test to own it's default value out of possible assignation from
this pair << BVTestVarName=Var, BVTestVarHold=Value  >> being only one way test. 

- This creating another effect, residual postaffective assignation, which involved
having a subset to test. This case reserved the Final value to output to be '1' or '0'
But using pair << BVTestBoolVarName, BVTestBoolCase >> , to manage the reversed test
expression BVTestBoolCase, changing the result thru the BVTestBoolAssertion . 
BVTestBoolVarName will hold the Common entry value and now it's explicitly assigned 
to a know value, rather to hold nothing and generating a not-resistent if-test. 


:Note: f1161962-0ad8-11e3-b166-001b3875b29c
:Title: Variable Forwarding Example in BoolVarTestVarCreation & mutation of BoolVarTestVarCreation from True/False test into *None* value

BoolVarTestVarCreation for substitution of StrFileTmp has unidirectionnaly
a uuid-like file name into Pre-fixed Var ZSEFileName:=None for 
affectation inside StrFileName=None, where if this one != None, will 
get the parameter Name Being passed inside StrFileTmp. 
 
- Had consequence:
 - if the file does not exist, an echo > StrFileTmp will be done . 
 - if the file exist, content will be open by Zenity in text-info --editable
 - Selected filename supplied, content will be overwritted and there is 
 no protection mechanism and no verification against file-permission
   - To this, a workaround will store all code generated from this application
   - into sub-directory being made by the command and store-it inside user
     respective home location which is safe and Pre-fixable into 
     your specification, and not-warrented to be correct but designable. 
  
 
	-	If the variable ZSEFileName is untouched, the content of StrFileTmp will hold 
		value 'None' and belong to parsed BoolVarTestVarCreation it should  get it's 
		uuid-like filename, see generated command from parameter below :



.. code:: shell
	Command : BVTestVarName=StrFileTmp BVTestVarHold='${StrFileName}' \
	BVTestBoolVarName=\${StrFileName} BVTestBoolCase=None \
	BVTestBoolAssertion='$( uuidgen -t )' \
	BVTestScopeTest=local BoolVarTestVarCreation
 
generated code:

.. code:: shell

	local StrFileTmp="${StrFileName}" ; 
	if [ "${StrFileName}" == "None" ] ; then 
	 StrFileTmp=$( uuidgen -t ) ; 
	fi
 
Which is making sense. 
 
:Note: 81685d48-16ac-11e3-98a2-001b3875b29c
:Title: Evolution of If statement inside BoolVarTestVarCreation, use of specific If condition.

	Following Pre-Fixed variables are added to allow uses of different type of 
	If statement available thru shell-use. 
	
::
	
	BVTestIfType -> Used to specify a If-statement pattern.
	- Default value is String
	
	List if possible value:

:Value: Definition
:String:	Apply a normal If-statement based on "STRING1" __OPERATOR1__ "STRING2"
:File:  Apply a unique switches on variable present inside If Statement
		Noted [ __OPERATOR1__ FILE1 ].
:Test:	Braced with Execution Operator, form is $( test __OPERATOR1__ BVTestBoolCase )
:Int:	Based on Normal Integer test like [ INTEGER1 __OPERATOR1__ INTEGER2 ]
:Shell: Based on Execution of BVTestVarName and variable res returning Error Code.
	
::	
	
	BVTestIfOp suggest a correct and known uses depending of BVTestIfType and no 
	code verification is made and may leak. It's programmer uses after-all . 
	
	Ex:
	
	BVTestIfType=String BVTestIfOp='==' ( Default Uses.)
	$>  BVTestIfType=String BVTestIfOp='==' BoolVarTestVarCreation
	
	result:
	local StrAttrHold="CONTENT" ;
	if [ "IsVarShould" == "False" ]  ; then
		StrAttrHold="" ;
	fi
	
	Ex1: Uses of Integer 
	
	BVTestBoolVarName='${IntValue:=0}' \
	TestIfType=Int \
	BVTestIfOp='-eq' \
	BVTestBoolCase=1 \
	BoolVarTestVarCreation

	result:
	local StrAttrHold="CONTENT" ;
	if [ "${IntValue:=0}" -eq "1" ]  ; then
		StrAttrHold="" ;
	fi
	
	Ex2: Uses of Shell
	BVTestBoolVarName='${IntValue:=0}' \
	BVTestIfType=Shell \
	BVTestIfOp='-eq' \
	BVTestBoolCase=1 \
	BoolVarTestVarCreation

	result:
	local StrAttrHold="CONTENT" ;
	eval StrAttrHold ; res=$? ; if  [ ${res:=1} -eq 1 ]  ; then
		StrAttrHold="" ;
	fi	


Assuming uses of shell is a complete evaluation line, lying between ';' will 
execute the compound and returning the error inside the Variable res and the 
dedicated test had default value of possible error. Behavior is fixed and will
change probably into pre-emptive Assertion being part attended result having a 
BVTestBoolCase worring on this If statement, is like controlling-twice a true
exit.




:Note: e2382694-0ba3-11e3-98a2-001b3875b29c
:Title: Usual Shell Chunk-Development.
:function_name: ZenityShellEval

---------------
ZenityShellEval
---------------

Full-length example : 
Including 1 example :
$> ZenityShellEval (Enter)

- It Open Windows from Zenity with parameter for Text-info in editable
mode.

See the image 

.. image:: http://4.bp.blogspot.com/-UGYpVcrcNxo/UhPOsCBfCaI/AAAAAAAAAFA/7VHwjDj1TsM/s1600/ZenityShellEval.png
        :target: https://github.com/priendeau/Fnct.d#ZenityShellEval

It Open by default a uuid-like temporary file. There is no actual was
to modify the name, but assuming the implementation of ZenityShellEval
imply a limited acces to shell, you might recuper information from shell
or futur adding to transfert a name or simple renaming the uuid-like
file-name... This is to prevent auto-execution of a script from 
canned-design by playing with without having all clearly create your 
shell script and/or having fully pseudo-code explained and having 
confirmation of your design work... 

::
	
	Like ZenityShellEval, will reach first stage-maturity fast enought,
	it's possible the followed function will move into fnct_lib or fnct_lib_tool,
	being a method to control chuck of information like descendant script lib
	where fnct_debian_lib should descent from:

	Level1 : ( fnct_lib or fnct_lib_tool )
		|
		+---> fnct_debian_lib ( Second Level )
				 |
				 +---> { _sub_PackageRepository
						_sub_Git
						_sub_ssh_handler } ( Third level and specialized chunk )

- Where fnct_lib shall have all mandatory function being Really Essential.
- Where fnct_lib_tool shall have all common tools to create code and Interract
with UX ( User Experience. )

Note: UX, like HP-UX, for Home-Profesionnal User-eXperience, and not UX for Unix/*nix 
 
Example of code for ZenityShellEval
 
Assuming you are looking to link fastly unpacked .deb from File-manager into
Unusual path and wanting to link against correct uses nvidia-driver to 
possibly manage a fake instance of CUDA from not-wished Capable-Card like 
Geforce 7000M, where it can exist at leat 4 to 8 node of CUDA GPU which is
not enought because minimal number of node are 16 and higher and willing 
to create so-cheap demo card around 1999-2002 in displaced time-and-space
 
- So having to find all nvidia .so lib, it should be linked inside 
/usr/lib/nvidia-304.84 which is your memory having merely remember the 
automated design from version 295.xx . 
Following that you bring into /usr/lib/lib*.so.1, /usr/lib/lib*.so.[3-5]
all other linked lib found inside /usr/lib/nvidia-304.84,

In Other term it's
Also seed to uses X from Xorg with the nouveau driver and wich to use 
the entire GPU memory location and VDPAU reserved operation for GPUing.
Like a package allowing to store image into GPU memory card... Having
feeling many slice of superposed image is just a matrix canonical-form
of code assembly to re-interpret into real execution... 
	 


the sample to put inside the Zenity Text-Info in editable mode :


.. code:: shell


	function test_expr()
	{
	 local __call_locality=( Filter __filter ) ;
	 local Arg0=${ArrayArg[0]} ;
	 local ArrayArg=( $* ) ; 
	 local StrPath=/usr/local/src/apt/nvidia-304 ;
	 function __filter()
	 {
	  local __call_locality=( Filter __filter ) ;
	  local Arg0=${ArrayArg[0]} ;
	  local ArrayArg=( $* ) ; 
	  local StrFilterGrep=${FilterGrep:='lib32'} ;
	  local StrTaillingSearch={FilterTrSearch:=[:cntrl:]};
	  local StrTaillingRepl=${FilterTrReplace:=' '} ;
	  grep -v "${StrFilterGrep}" | tr '${StrTaillingSearch}' '${StrTaillingRepl}' ; 
	 }
	 local AF=( $( find ${StrPath} -type f -iname "*.so*" | __filter ) ) ; 
	 for (( x=0 ; x<= ${#AF[@]}-1; x++ )) ; do 
	  item=${AF[${x}]} ; 
	  local _file=( ${item//\// }  ) ; 
	  local file="${_file[$((${#_file[@]}-1))]}" ;
	  echo ln -s ${item} $(pwd)/${file} ; 
	 done
	}
	test_expr ; 


---------------------------------------
Step forward the ZenityShellEval sample
---------------------------------------

	You hit Enter or OK from the Window 'Shell Evaluation command', and 
	Should not give you an error, if so the same code reapear and you 
	have to find yourself the error if ZenityShellEval was not executed
	from allowed Terminal or Windows-shell . 
	If you do executed it from, you can read error and seemlesly seek for 
	error... 
 
	Later example might have support for error like puting into warning 
	Windows, error. And possibly conversion between uuid-like file into 
	finite name... 
 
**PS Hint**
	- Using AutoChown will also let use execute the script with your own
	user and group, and might allow you to put it elsewhere like into 
	localized-execution section..... 

---------------------------------------
Integrity of chunk With ZenityShellEval Checksum algorithm .
---------------------------------------

	Supplying a Checksum algorithm verification with a developping tools
	does not need to be strengthened and storing the information localy and 
	ciphered. The will was to establish a tools to corretly identify a chunck
	being followed or not. Simply mean it's possible you do have edited the 
	chunck without using the ZenityShellEval, and did not do a new footprint 
	to it. This meaning see from the editor that might had no right to see 
	under the hood the permission, file attribute and time of modification will
	rely on this engine to analyse the information. This also great for ensuring 
	code did not suffer to unexpectedly modification, which is barely hard to 
	see if you do had no remember of last modification and had no tool to notice 
	it. ... A cyclic check to ensure you do it right... 
	
	Supplied with Parameter ZSECheckSumTest=True, and following parameter 
	to identify the file and it's location will do a simple checksum 
	verification of the content. It will look also for the match inside the 
	file... 
	
	The Checksum is also a Prefixed-Variable that alter the common path of the 
	execution and did not load the editor after... It's not commming as services
	du to it's exception and might be listed in different structure to alter 
	normal comportement... Assuming giving an answer to unique request shall be 
	not part or a services like --get and --list where uniformely return member
	part like Prefixed-Variable and or content of Prefixed-Variable, a Sha1sum
	is a steady algorithm and is applied in goal to extract identity... As long
	there is no services on identity as services it should not be see as an actor
	of the transport layer or any communication realm for this moment... 

::	
	
	Example:
	
	### on command shell to call the checksum of ZenityShellEval will be see like 
	### this.
	
	### Note, Chunk 950966fa-0e67-11e3-98a2-001b3875b29c is the ZenityPythonInstaller
	### which was modified recently and will show a faillure . 
	
	$> ZSECheckSumTest=True \
	   ZSEPathStorage=/etc/init.d/Fnct.d/ \
	   ZSEFileName=950966fa-0e67-11e3-98a2-001b3875b29c

	### On screen it report the information 
	File: 57eaab74b095e5d374cf15d5923fef2fb02eaab7
	Footprint: fa3cd4782aa56e9c1725a06904af3293a6b5c532
	file-shasum:/etc/init.d/Fnct.d/950966fa-0e67-11e3-98a2-001b3875b29c:FAILED
	
	# Re-editing the file with ZenityShellEval and removing the FOOTPRINT will save
	### it with newest information... Or possibly need to come back to original file
	### version due to error-insertion with another application and was not analysed
	### by ZenityShellEval and might report error execution. 
	
	### Another Edition with ZenityShellEval and it change the shasum , doing the same
	### command ; now it report the correct information . 
	
	File: 223715eeac461ce63984fd5f9f0ddb749dc3909d
	Footprint: 223715eeac461ce63984fd5f9f0ddb749dc3909d
	file-shasum:/etc/init.d/Fnct.d/950966fa-0e67-11e3-98a2-001b3875b29c:MATCH

***NOTE***, ZenityShellEval, IS changing the SHA1SUM header in any circumstance,
having the chunk conform or not, correct or not...

:Note: f5f7532c-0bac-11e3-999d-001b3875b29c
:Title: Developping and Helper 


- Default Fast reference Helper. 

Extracting current Prefixed variables from your function and show it on stdout( screen output ). 
The prefixed variable are indicated on decalation of __call_locality which usually had same name has 
top function. 


- Description : It actively look inside the function code and extract value prefixed with function name...
was initially developped on $0, but change by creating subFunction, and some code may be reserved for private
use or recurrent-code with recurrent variable name, may be show and alter your perception of functionality of 
the design ...

Example to implement the body-helper. 

.. code:: shell
	
	function Helper()
	{
		local __call_locality=( Hlp Helper ) ; 
		local ArrayArg=( $* ) ; 
		local Arg0=${ArrayArg[0]}; 
		local StrHelperInvolved=${HelperQuestionInvolved:=Nothing} ; ### <---1a 
		if [ "${Arg0:=--start}" == "--help" ] ; then 
			GetVarReference ${__call_locality[0]} ; 
		else	
			---> Normal Body event and code. 
			... 
		fi 
	}


- Note, In case your Helper --help be tested, if it does not output only Prefixed var definition.
retreive all your variable from your command and do like example StrHelperInvolved in 1a
Create specific local variable and associate the content of your Prefixed variables, help get 
better body definition and reduce complexity by reading it... 


- See PackageRepositoryMgmt / PackageRepositoryRest function helper will show
you more information in what resulting an helper to see Communication-Layer also
called Prefixed-Variable helping user to assign informations. 
	

:Note: 48acc93e-0bae-11e3-8e63-001b3875b29c
:Title: Developping The BodyFunc, Reducing code complexity by creating pattern and disposable StartServices signature.

function BodyFunc()
- Like BoolVarTestVarCreation, is defined to create on-demand if-pattern based on True Statement-Initial affectation and 
residual False statement as Assertive condition being another mechanism or either a branch this function BodyFunc
will manage the switch condition from Arg0, know to be the Operator for finite and unique action. Actual Action are 
Getter, List, Helper and StartServices. __Future__ view predict uses of Setter where it's actually tweaked with external
Subset of command within Bash whole-list of command. Developped has Micro-Architecture expansion require several
analysis and may depend of another compromised information related to Data. Data used from Setter Will stay out of the
code and actual Pre-fixed Variable are unique Start-up information where ultimately all information will migrate to None after
uniformisation and expansion of Exception into proper design. 

BodyFunc Goal :
To create an [ if / elif / n-elif / fi ] command from finite action required inside need of fnct_debian_lib to be wise information
discovery . Wise-Discovery is not part of the function-type itself, but any coumpound will have Serious Notation and 
minimal helper.  Actually it will cover Finite action of Listing Prefixed-Var or Transport-Layer signature and Getter will 
extract entry from this Transport Layer, know to be actual Prefixed-Var. 

BodyFunc and Expanded Entry inside Finite action, StartServices uses : 
- Since Getter, Helper and List are simple finite action, a function body from this lib are the core of evolving multi-party-actor
involving many sub-derivate. Example: 
Inside PackageRepositoryMgmt, uses of GetOtherDate is crutial to leave a valid-footprint inside and index based on File-system
information deposition. 

- The StartServices being a function with Tiny Prefixed-Var internally be a Inter-transport-Layer, it should result into calling a 
possible function inside the Function Body or Any good compound from this Lib with awarness of calling correctly any Pre-fixed
var. 
Exception in Internal design from Function to Sub-Function Transport-Layer this mechanism is not regulated, but will not work if 
variable are not transfered. 

Facility in External transport connection of BodyFunc. 
- The prefixed-variable BFStackVariableList will accept a language operator known to be '+' sign to allow any conversion 
from good appelation of working function inside fnct_debian_lib by calling it and extracting variable. uses of GetOtherDate will
be use inside the example. 

.. code:: shell
	
	BFStackVariableList=$( GetOtherDate --list | sed 's/\([a-zA-Z]*\)/\1+,/g;s/\ //g;s/+,+,/+/g'  ) BF*=... BodyFunc 

Will shorten the transfert mechanism from Outgoing Transport-Connection into automated StackList adding sequence, and 
will also offer Glueing technique for several descendant  uses of BoolVarTestVarCreation / Function_from_fnct_debian_lib, and 
BodyFunc, with consideration had possibilty to be a fixed if-elif-fi topology . 

-------------------
function BodyFunc()
-------------------

- Like BoolVarTestVarCreation, is defined to create on-demand if-pattern based on True Statement-Initial affectation and 
residual False statement as Assertive condition being another mechanism or either a branch this function BodyFunc
will manage the switch condition from Arg0, know to be the Operator for finite and unique action. Actual Action are 
Getter, List, Helper and StartServices. __Future__ view predict uses of Setter where it's actually tweaked with external
Subset of command within Bash whole-list of command. Developped has Micro-Architecture expansion require several
analysis and may depend of another compromised information related to Data. Data used from Setter Will stay out of the
code and actual Pre-fixed Variable are unique Start-up information where ultimately all information will migrate to None after
uniformisation and expansion of Exception into proper design. 


- BodyFunc Goal :
To create an [ if / elif / n-elif / fi ] command from finite action required inside need of fnct_debian_lib to be wise information
discovery . Wise-Discovery is not part of the function-type itself, but any coumpound will have Serious Notation and 
minimal helper.  Actually it will cover Finite action of Listing Prefixed-Var or Transport-Layer signature and Getter will 
extract entry from this Transport Layer, know to be actual Prefixed-Var. 

BodyFunc and Expanded Entry inside Finite action, StartServices uses : 

- Since Getter, Helper and List are simple finite action, a function body from this lib are the core of evolving multi-party-actor
involving many sub-derivate. Example: 
Inside PackageRepositoryMgmt, uses of GetOtherDate is crutial to leave a valid-footprint inside and index based on File-system
information deposition. 

- The StartServices being a function with Tiny Prefixed-Var internally be a Inter-transport-Layer, it should result into calling a 
possible function inside the Function Body or Any good compound from this Lib with awarness of calling correctly any Pre-fixed
var. 

Exception in Internal design from Function to Sub-Function Transport-Layer this mechanism is not regulated, but will not work if 
variable are not transfered. 

Facility in External transport connection of BodyFunc. 

- The prefixed-variable BFStackVariableList will accept a language operator known to be '+' sign to allow any conversion 
from good appelation of working function inside fnct_debian_lib by calling it and extracting variable. uses of GetOtherDate will
be used inside the example. 

.. code:: shell
	
	BFStackVariableList=$( GetOtherDate --list | sed 's/\([a-zA-Z]*\)/\1+,/g;s/\ //g;s/+,+,/+/g'  ) BF*=... BodyFunc 

Will shorten the transfert mechanism from Outgoing Transport-Connection into automated StackList adding sequence, and 
will also offer Glueing technique for several descendant  uses of BoolVarTestVarCreation / Function_from_fnct_debian_lib, and 
BodyFunc, with consideration had possibilty to be a fixed if-elif-fi topology . 

- This is the actual development being tagged Prototyping, it show multiples 
part of a nominal function internal-body and allow presence of Getter, Setter, Listing
and StartServices which is the Core of a Function for a finite action. 

.. code:: shell
	
	function BodyFunc()
	{
	 local __call_locality=( BF BodyFunc ) ;
	 local ArrayArg=( $* ) ; 
	 local Arg0=${ArrayArg[0]};

	 local StrHelpCmd="GetVarReference ${__call_locality[1]} ;  echo -ne \"${StrSwitchMessages}\" > /dev/stderr ; " ;
	 local StrGetCmd=" eval \"\"\"local ArgGet=\${\${ArrayArg[1]}}\"\"\" ;  echo -ne \"\"\"\${ArgGet}\n\"\"\" ; "
	 local StrListCmd="eval \$( __GetVarReferenceList ) ;" ;
	 local StrStartServicesCmd="__main_StartServices" ;
	 local StrDefineHelp=${BFHelpSwRules:=Help:--help:__HELP__:StrHelpCmd} ;
	 local StrDefineGet=${BFGetSwRules:=Get:--get:__GET__:StrGetCmd} ;
	 local StrDefineList=${BFListSwRules:=List:--list:__LIST__:StrListCmd} ;
	 local StrDefineStartServices=${BFStartServicesSwRules:=StartServices:--startservices:__ApplicationMain__:StrStartServicesCmd} ;
	 local StrVarConvertOp=${BFVarTransfertOp:=+} ; 
	 ###
	 ### The Prefixed-var BFVarTransfertOp:
	 ### - To reduce rewriting, using the Operator '+' inside the Prefixed-Var BFStartServicesSwRules using rule like
	 ### BFStackVariableList=Var1+ will transform Var1=Value by Var1=${Var1} inside Template __Stack_Variable__
	 ### - Assuming BodyFunc is mangling the bottom of a function inside fnct_debian_lib into protocolar function creation
	 ### with self verification ability like transfert mechanism and assignation possibility.
	 ###
	 local StrStackVar=${BFStackVariableList:=StrFileTmp=+,StrTitle="A title",IntSleep=+,Size=IntFontSize,IsEditField=+,IntWidth=+,IntHeight=+,IntDefaultModeExec=+} ;
	 local ArrayServicesSwitches=( ${StrDefineHelp} ${StrDefineGet} ${StrDefineList}  ${StrDefineStartServices} )
	 
	 local StrPatternIf="""if [ \"${Arg0:=--startservices}\" == \"--help\"	] ; then 
	 __HELP__ 
	elif [ \"${Arg0:=--startservices}\" == \"--get\" ] ; then 
	 __GET__ 
	elif [ \"${Arg0:=--startservices}\" == \"--list\" ] ; then 
	 __LIST__ 
	elif [ \"${Arg0:=--startservices}\" == \"--startservices\" ] ; then 
	  __Stack_Variable__ 
	  __ApplicationMain__ ; """ ;

	echo -ne "BodyFunc Pattern\n\n--------------------------------------------------\n${StrPatternIf}\n--------------------------------------------------\n"
	}


:Note: 5f218798-0ec6-11e3-98a2-001b3875b29c
:Title: Complex Case of ZenityPythonInstaller, many Variable transfert example and many Input Entry.

While the function own a Huge Table or Hudge Variable-Stacking, due to entry 
method dependent from shell information and Zenity Window Manager in Text-Entry
Mode, A BodyFunc will reduce the if-elif-else case from __main_StartServices.
See the Code snippet to look what an normal hand-writing entry will look like.


.. code:: shell
	
	if [ "${Arg0:=--startservices}" == "--help"	] ; then 
	 GetVarReference ${__call_locality[1]} ; 
     echo -ne "${StrSwitchMessages}" > /dev/stderr ; 
    elif [ "${Arg0:=--startservices}" == "--get" ] ; then 
     eval """local ArgGet=\${${ArrayArg[1]}}""" ; 
     echo -ne """${ArgGet}\n""" ;
    elif [ "${Arg0:=--startservices}" == "--list" ] ; then 
     eval $( __GetVarReferenceList ) ;
    elif [ "${Arg0:=--startservices}" == "--startservices" ] ; then 
     StrCppflags=${StrCppflags} \
     StrCflags=${StrCflags} \
     StrCxxflags=${StrCxxflags} \
     StrFflags=${StrFflags} \
     StrLdflags=${StrLdflags} \
     StrJavaHome=${StrJavaHome} \
     StrJavaClasspath=${StrJavaClasspath} \
     PythonSetupAct=${PythonSetupAct} \
     pipAct=${pipAct} \
     BoolPipInstall=${BoolPipInstall} \
     BoolPipUpgrade=${BoolPipUpgrade} \
     BoolPySetup=${BoolPySetup} \
     StrPythonVersion=${StrPythonVersion} \
     StrPythonAppsPath=${StrPythonAppsPath} \
     StrPythonScript=${StrPythonScript} \
     ZPIZenityTextEntry=${ZPIZenityTextEntry} \
     IntDefaultSleep=${IntDefaultSleep} \
     StrPythonPackage=${StrPythonPackage} \
     BoolUseZenityTextEntry=${BoolUseZenityTextEntry} \
     StrZenityTitle=${StrZenityTitle} \
     IntWidth=${IntWidth} \
     IntHeight=${IntHeight} \ 
     __main_StartServices             ; 
   fi


Also this code sample will also be delivered with a pseudo-code to deliver 
a functionnal-programmation stream behing show under many call from BoolVarTestVarCreation

<SVG>

.. image:: https://raw.github.com/priendeau/Fnct.d/master/images/950966fa-0e67-11e3-98a2-001b3875b29c-pseudo-code-Main.svg
        :target: https://github.com/priendeau/Fnct.d#5f218798-0ec6-11e3-98a2-001b3875b29c

<PNG>

.. image:: https://raw.github.com/priendeau/Fnct.d/master/images/950966fa-0e67-11e3-98a2-001b3875b29c-pseudo-code-Main.png
        :target: https://github.com/priendeau/Fnct.d#5f218798-0ec6-11e3-98a2-001b3875b29c

.. code:: shell
	
	function __main_StartServices()
	{
      local __call_locality=( Main __main_StartServices ) ;
      local ArrayArg=( $* ) ; 
      local Arg0=${ArrayArg[0]};
      local ArrayPackage=( ) ;

      eval $( BVTestVarName=StrPackageExtract \
      BVTestVarHold='${StrPythonPackage}' \
      BVTestBoolVarName=\${BoolUseZenityTextEntry} \
      BVTestBoolCase='False' \
      BVTestBoolAssertion='$( ZenityTextPackageEntry )' BVTestScopeTest=local BoolVarTestVarCreation ) ; 

      eval $( BVTestVarName=StrPythonLoader \
         BVTestVarHold='${StrPythonVersion}' \
         BVTestBoolVarName=\${BoolUseZenityTextEntry} \
         BVTestBoolCase='${StrPythonVersion}' \
         BVTestBoolAssertion='3.2' BVTestScopeTest=local BoolVarTestVarCreation ) ; 
         StrPythonLoader="${StrPythonAppsPath}/python${StrPythonLoader}" ;
   
      eval $( BVTestVarName=StrAppsInstall \
         BVTestVarHold='pip' \
         BVTestBoolVarName=\${BoolPipInstall} \
         BVTestBoolCase=False \
         BVTestBoolAssertion='${StrPythonLoader} ${StrPythonScript}' BVTestScopeTest=local BoolVarTestVarCreation ) ; 


:Note: 9859f8da-1013-11e3-98a2-001b3875b29c
:Title: Simple File Name conversion and action substitution example thru function FileNameConversion.

-------------------
function FileNameConversion()
-------------------

Standing for a bulk operation, FileNameConversion, required more than one file to
apply a *filter*, where the filter is an action. We will see the default action 
later, fortcoming to see a simple mv ( Move action ), this is design by parameter.

Eversince the beginning, it was alway a pending question over most current action 
done daily. Since Bash come from tinier subset shell like c-shell, csh, and simple
oldest sh ( Stand for Shell from Unix ), most important action was to copy, move,
rename, later comes the link and sync while the *Nix start to work's over many
server networkly-binded. It was important to notice the need of having brace around
a fixed method allowing to search and replace information due to its operability 
beyond the basic operation. 

Since than, appear uses of File-Extension name, where performed uniquely by the 
system over .cfg name, Microsoft User were encouraged to uses common extension 
name for lacking File-type detection. Today's being totally ignored, Unix 
topology was initially come with the application file where it's configration 
can perform a fast way to recognize the format... Having it on screen, it's 
detection behave with on-sight display and were ignored from Scripter. Good 
Practice at this moment it imply renaming file without extension into know one... 

This FileNameConversion function had some root inside Original lib from fnct.d 
three years ago, and was inclued inside fnct_lib. Being a major in name 
conversion it  also include possibility to search for a type and convert it or 
simply pass extra command.


Some extra command like Graphics Magik suite were hook to  original script and 
were  performed from feeded path created to store Scaned images from scanimages 
application.A tool named Autotrace should enhance the output into vector 
to perform later a faster recognition. But between uses of FileNameConversion 
and new version here, it depend from stronger integration and a [Main] 
action being parsed inside Pre-fixed variables FNCAppsConv. 

The default function provide a _FileList function, which can be overrided with 
Prefixed-Variable named FNCFLFunc for short ( FNC FileList Function). 

Concrete action of a bulk-operator, FileNameConversion, require at least a 
provider, explained early, _FileList is a wrapped find command with shell command
to filter and output the name in a row called stream it should not come with any
carriage. 

[Warning] the prefixed-variable FNCDisplayCmd is alway set to True in this function 
and acceptable value is True/False, and will stay to FNCDisplayCmd=True to visualize
the output rather than allowing execution. 

	Future version will depend of generating the script and send it to a robot,
	cron-dealer ( where it remain unsheduled at this moment, No admin job under 
	the hand. ) And many more automate receiving jobs and chuck of code, even a
	version of Fnct.D dealling with setter thru python RPC lib 
	( Remote procedure call), with embedded Sqlite facility to change the default 
	value in flavor or an RPC-Lib instance allowing many instance and many design
	living at once.

Where Function _FileList can be preserved rather than providing any other 
function name having equivalent operation, This internal function can also
own couple of prefixed-var like FNCFindPrintf and FNCFindIname where important
part of the find wrapped-command owning crited to define specific file-search
filter thru FNCFindIname "find ... ( -iname )", while Variable FNCFindPrintf, 
regulate the output, in find: find ... iname ** ( -printf ).
See Example:

::
	
	FNCFindPrintf="%p" FNCDisplayCmd=True FileNameConversion 
	will display :
	- Full path name of a file name:

	Output:
	mv /home/maxiste/Pictures/logo/outG100425.tif /home/maxiste/Pictures/logo/outG100425.pnm
	mv /home/maxiste/Pictures/logo/outG268903.tif /home/maxiste/Pictures/logo/outG268903.pnm
	mv /home/maxiste/Pictures/logo/outG272652.tif /home/maxiste/Pictures/logo/outG272652.pnm
	mv /home/maxiste/Pictures/logo/outG100425.tif /home/maxiste/Pictures/logo/outG100425.pnm
	mv /home/maxiste/Pictures/logo/outG268903.tif /home/maxiste/Pictures/logo/outG268903.pnm
	mv /home/maxiste/Pictures/logo/outG272652.tif /home/maxiste/Pictures/logo/outG272652.pnm
	mv /home/maxiste/Pictures/logo/outG136283.tif /home/maxiste/Pictures/logo/outG136283.pnm
	mv /home/maxiste/Pictures/logo/outG100425.tif /home/maxiste/Pictures/logo/outG100425.pnm
	mv /home/maxiste/Pictures/logo/outG268903.tif /home/maxiste/Pictures/logo/outG268903.pnm
	mv /home/maxiste/Pictures/logo/outG272652.tif /home/maxiste/Pictures/logo/outG272652.pnm
	mv /home/maxiste/Pictures/logo/outG136283.tif /home/maxiste/Pictures/logo/outG136283.pnm
	mv /home/maxiste/Pictures/logo/outG136283.tif /home/maxiste/Pictures/logo/outG136283.pnm

	FNCFindPrintf="%f" FNCDisplayCmd=True FileNameConversion 
	( Default value for FNCFindPrintf )

	will display :
	- File Name only :

	Output:
	mv G100425.tif G100425.pnm
	mv G268903.tif G268903.pnm
	mv G272652.tif G272652.pnm
	mv G100425.tif G100425.pnm
	mv G268903.tif G268903.pnm
	mv G272652.tif G272652.pnm
	mv G136283.tif G136283.pnm
	mv G100425.tif G100425.pnm
	mv G268903.tif G268903.pnm
	mv G272652.tif G272652.pnm
	mv G136283.tif G136283.pnm
	mv G136283.tif G136283.pnm


::
	
	Note:
	Example may differ and may be available with Prefixed-var FNCAppsConv having
	following value, which is more valuable for function definition:
	
	FNCAppsConv -> /usr/bin/tifftopnm __PATH__/__FILE__.__ENTRY__ > __PATH__/__NEWFILE__.__CONV__

	Which holding a file conversion from TIFF to PNM with application 
	/usr/bin/tifftopnm
	
	available from package netpbm available thru apt-get:

.. code:: shell
	
	$> sudo -s apt-get install netpbm

	---> Hacker may be insterested to compile it's own package for *self* purposes.

	$> sudo -s apt-src install netpbm -p 
	$> sudo -s apt-src build netpbm


Building your own way to update-and-or changing filename with proper program like 
GraphicMagics will work on the same way:

.. code:: shell
	
	FNCAppsConv="convert __ENTRY__:__PATH__/__FILE__.__ENTRY__ __CONV__:__PATH__/__FILE__.__CONV__" \
	FNCDisplayCmd=True \
	FileNameConversion 

	### 
	### Just amazing how convert from GraphicMagics suite was design to allow shell
	### scripter to interact fast with minimal subset of informations.
	### 
	### 
	
See Variable List:

::
	
	Help:

	Function FileNameConversion
	Default Variable Value:
	Variable FNCMimeTypeEntry ,
		Default Value:tif
	Variable FNCMimeTypeConv ,
		Default Value:pnm
	Variable FNCRemoveExt ,
		Default Value:True
	Variable FNCTag ,
		Default Value:__FILE__,__NEWFILE__,__ENTRY__,__CONV__,__PATH__
	Variable FNCAppsConv ,
		Default Value:/usr/bin/tifftopnm __PATH__/__FILE__.__ENTRY__ > __PATH__/__NEWFILE__.__CONV__
	Variable FNCPath ,
		Default Value:./
	Variable FNCDisplayCmd ,
		Default Value:False
	Variable FNCFindPrintf ,
		Default Value:"%f "
	Variable FNCFindIname ,
		Default Value:*.StrFileNameSearch
	Variable FNCFLFunc ,
		Default Value:_FileList
	Following switch are available:

		--startservices	Start the application normally.
		--get		Return value of Internal Variable.
		--list		List all Internal Pre-fixed Variable available to query or get.

:Note: 7bd8c582-2ebe-11e3-98a2-001b3875b29c
:Title: Introducing, Zenity Interface to manage Prefixed-Variable.


Theses metodes with follow name, ZenityRadioOptionConfig, ZenityListOptionConfig,
ZenityPrefixedVarBuilder are specialy developped to handle Prefixed-Variable from 
Function name from fnct_lib, and especially fnct_debian_lib. Theses functions  work 
in common Loop to allow, preparing a stetement for any present prefixed-variable to
induce and correct the default value into usefull parameter. 

Starting-Up with ZenityPrefixedVarBuilder. 

ZenityPrefixedVarBuilder is the master function rolling over and over criteron choosed
by the User/Developper. Having A first list of function to select, you might also 
be interested in writing down thru a prefixed-variable Value the selected function desired
to configure a prefixed-variable Statement. 

Before entering in details in this management, I introduce this chunk  development , 
chunk 50ccda66-2ebb-11e3-98a2-001b3875b29c. I will resume with management of 
ZenityPrefixedVarBuilder by giving such important mechanism involved in selection of
content and rolling function allowing you to change more than one function at the 
time.

Having different possibility to acces to member, ZenityPrefixedVarBuilder will also 
start in GUI mode rather using the value from ZLPL ( ZenityLibPolicyList ) which 
extract all function from a Policy Array configured from fnct_lib->ArrayLibPolicy 
hold major function but not all function. Later an engine will update the 
ArrayLibPolicy based on unset command yield at every new function. A  safety mechanism 
to ensure altered function might come back as library is reloading. 

ZenityLibPolicyList obey to an internal command named __get_PolicyFunctionList controled
with Pre-fixed variable ZLPLPolicytoFunc which can be changed by yourself and allowing
rolling the ZenityPrefixedVarBuilder into your own Function Roll-up management... 
The one only note is to respect the common Policy-format:

.. code:: shell
	
	# ----------------- inside fnct_lib ------------------------
	### Example of ArrayPolicy 
	declare -a ArrayLibPolicy=(  ValueParser:True:fnct_debian_lib:master ... 
    ###                          |           |     |               |
	### Format                   |           |     |               |
	###                          |           |     |               +
	###                          |           |     +               Importance
	###                          |           +     Library Origin
	###                          |           Usuability(true/false)
	###                          +Function Name
	
	# For this moment Importance is a steady value but might change later with
	# introduction of ArrayLibPolicy Parser from fnct_lib. Allowing to scan 
	# the library and extracting information about function name and it's usuability/
	# Origin, and it's importance... usuability and importance column will become
	# statistical information. 
	
	

	
:Note: 75411766-1969-11e3-98a2-001b3875b29c
:Title: Permanent Sqlite Database to store crutial information introducing connection-layer to a unicast-per-user group and bash interoperability

----------------------------------------------------------------------------------
Introducing connection-layer to a unicast-per-user group and bash interoperability
----------------------------------------------------------------------------------


*** Not yet here *** 


Parameters
==========

Creating Helper Messages
------------------------

While a basic corpus is imply a function N(), an Array to implement a Calling 
signature to be read from external function like . 

::	
	
	GetVarReference, 
	__GetVarReferenceCompWord  or
	__GetVarReferenceList  


It's name depend of something rational coded inside function GetStdPrefixName, and
Shall not be used inside declaration of __call_locality for Unability of external 
function to read un-evaluated value from hand-writted function name... But 
function GetStdPrefixName can give you and Idea what will be a Root for 
Prefixed-Variable. This is almost import for first level function accessible to 
human of simple parser from shell from another level-1 function. See example to 
see where is the Level-1 representation and where is the Calling signature. 

Once the example is controlled or added to your shell if you want to try, the 
rest of the body implement the switches-level. Shall be implemented with 
BodyFunc, and another example somewhere should already show you this. For the 
moment, The basic and understandable way imply a Switches level being settled at
the end of the function to clearly show where is the services entry and may 
rely from internal second-level function or external level like 
__GetVarReferenceCompWord, __GetVarReferenceList. 


.. code:: shell
	
	Example:
	### 
	### Fully functional example. 
	###
	### Basic Method showing you how it was splitted to allow many function 
	### having same design, prior to settle this Lib into something higher into
	### Wide-settlement services and steady-services and messages passing .
	###
	
	    ###   +-------Level1 Function
	    ###  +++
	    ###   +
		function EasyTestInRun()
		{
		
		  ###   +---------> Calling signature. If you try GetStdPrefixName on 
		  ###   +           function name EasyTestInRun, you will get ETIR
		  ###	+
		  local __call_locality=( ETIR EasyTestInRun ) ; 
		  local StrInput=${ETIRArrayIn:=1,2,3,4}
		
		  ###   +-------Level2 Function
		  ###  +++
		  ###   +
		  function __Loop()
		  {
		    local __call_locality=( _L __Loop ) ;
		    local Arg0=${ArrayArg[0]} ;
		    local ArrayArg=( $* ) ; 
		
		    echo -ne "\tMessage Is: ${Item}\n" ; 
		  }
		   
           function __main_StartServices()
           {
            ### 
            ### Example of non conformance of name because they are 
            ### deeper inside code and should not pass or communicate
            ### with more restriction... It's good to tell they still
            ### had the liberty to pass variable from Level-1 to level2
            ### and even specific distribution allow distribution from 
            ### A function Level2a to function Level2b and even
            ### a function Level1a to function Level2a where many problems
            ### exist and may depend from memory stacking being more limited
            ### between version and may be discarded or transformed into 
            ### global scope, where nash(from fedora) was one of them. 
            ### 
            local __call_locality=( Main __main_StartServices ) ;
            local Arg0=${ArrayArg[0]} ;
            local ArrayArg=( $* ) ; 
            local ArrayFromStr=( ${StrInput//,/ } ) ; 
            for(( intx=0; intx<= ${#ArrayFromStr[@]}-1 ; intx++ )); do 
              Item=${ArrayFromStr[${intx}]} __Loop ; 
            done 
            
           }
		   
           ### Normal Switches Messages introduction. 
           local StrSwitchMessages="${StrSwitchesShow}${StrStartSwitches}\n${StrGetMsgSwitches}\n${StrListMsgSwitches}\n${StrCompWordMsgSwitches}\n" ;
           ### 
           ### switches-level 
           ###
           if [ "${Arg0:=--startservices}" == "--help"	] ; then 
            GetVarReference ${__call_locality[1]} ; 
            echo -ne "${StrSwitchMessages}" > /dev/stderr ; 
           elif [ "${Arg0:=--startservices}" == "--get" ] ; then 
            eval """local ArgGet=\${${ArrayArg[1]}}""" ; 
            echo -ne """${ArgGet}\n""" ;
           elif [ "${Arg0:=--startservices}" == "--list" ] ; then 
            eval $( __GetVarReferenceList ) ;
           elif [ "${Arg0:=--startservices}" == "--compword" ] ; then 
            eval $( __GetVarReferenceCompWord ) ;
           elif [ "${Arg0:=--startservices}" == "--startservices" ] ; then 
            StrInput=${StrInput} \
            __main_StartServices ; 
           fi
          }
		 
		 
		 
		 
Prefixed-Variable
-----------------

Transport Layer between Function. 
---------------------------------

Uses of Universal switches.
---------------------------

------
	Getter
------

Getter is the switche --get from calling 
convention :  __FUNCTION__ --get Prefixed-Variable

In Term, it's the information services available by function allowing to 
extract a componnent from the Communication Layer. Each Item from this 
communication layer is a Prefixed-Variable commonly designed by the autor
allowing to pass informations. In a layer you can virtually pass all Item
and even not assigned item or not existing item and should not interfer 
during Services initiation. Known and recognized one will be used and even
not intended to be use due to switche nature will be ignored and might be 
used if the user change the switches. 

::
	
	### As example. 
	### calling :
	AFunc001=XXX __FUNCTION__ --help
	### prefixed var AFunc001 is ignored 
	
	AFunc001=XXX __FUNCTION__ --get AFunc001
	
	### prefixed var AFunc001 is not ignored and output value XXX .
	
	
------
	Setter
------
		
		* Not Developped yet

The draft section barely work this stage but outisde alternative are present. 
The actual alternative remain uses of alias which is per-user alternative and 
weak link being permanent configuration. This remain *Fragile* using a .bashrc
to store information, can becoming sensitive to user personal settings, some
future development might introduce the Key-ring example know in draft _sub_Git
which is not usable at this moment. ( in draft mode ), and will be exported to 
python to introduce uses of permanent Sqlite Database to store crutial 
information introducing connection-layer to a unicast-per-user group and 
bash interoperability

for Setter-like information see note: 2224fe88-0b6f-11e3-812b-001b3875b29.

----
	List
----
List, a per function Pre-fixed Variables extraction services. For all function
member of fnct_lib, and derivate, and mature function ; They have a corpus named
BodyFunc call or self if-elif-fi branching analysing the switches entry of 
function. the switche '--list' is a Extraction services, extractin the name in 
CSV format. The Format is simply space between Prefixed-Variable name. This will
also be changeable but being the draft stage show, it  should remaing space only.

----
	CompWord
----

-----------------------------
Complete Word-completion thru --compword 
-----------------------------

This services available in next version will allow to Enable the Word completion by 
calling function name __FUNCTION__ --compword 

Since this is available upon delivery of __GetVarReferenceCompWord from delivery of
chunk 023102e0-1833-11e3-98a2-001b3875b29c after 2013-09-08. This is a way to maximize
uses of Function Prefixed Variable being show by typing the Function Name and 'Tab' .

This is another services freeing memory from unused function. Not all function are 
enabling this feature being loaded by the /etc/init.d/Fnct.D/fnct_lib. 

This nominal feature transform our API into active services and standard being this
Function Lib render it valid to install this services inside /etc/init.d 
	

-------------
	StartServices
-------------

Operator
========

There is few Operator known inside the fnct_debian_lib from Fnct.D, but some 
function depend of Prefixed-Variable Transport Mechanism and to prevent writing
informations uselessly a specific Operator was developped during Pre-Fixed variable
writing, known to be the '+' Operator. 






