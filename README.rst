============
Fnct.D
============

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

Invocation
==========

Likewise Bsd Middle-age, a sub-entity was existing inside /etc/init or /etc/init.d
and desapear or move inside /usr This design exist inside /etc/init.d/Fnct.d to 
establish a __future__ development for integration inse loader and initrd for shell
management and Integration. 

Definitions
===========

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
	Command : BVTestVarName=StrFileTmp BVTestVarHold='${StrFileName}' BVTestBoolVarName=\${StrFileName} BVTestBoolCase=None BVTestBoolAssertion='$( uuidgen -t )' BVTestScopeTest=local BoolVarTestVarCreation
 
generated code:

.. code:: shell

	local StrFileTmp="${StrFileName}" ; 
	if [ "${StrFileName}" == "None" ] ; then 
	 StrFileTmp=$( uuidgen -t ) ; 
	fi
 
Which is making sense. 
 


:Note: e2382694-0ba3-11e3-98a2-001b3875b29c
:Title: Usual Shell Chunk-Development.
:function_name: ZenityShellEval


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


Parameters
==========

Prefixed-Variable
-----------------

Transport Layer between Function. 
---------------------------------

Uses of Universal switches.
---------------------------

------
	Getter
------


------
	Setter
------
		* Not Developped yet


----
	List
----


-------------
StartServices
-------------

Operator
========

There is few Operator known inside the fnct_debian_lib from Fnct.D, but some 
function depend of Prefixed-Variable Transport Mechanism and to prevent writing
informations uselessly a specific Operator was developped during Pre-Fixed variable
writing, known to be the '+' Operator. 






