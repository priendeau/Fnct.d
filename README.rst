
============
Fnct.D
============


.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/Fnct_D_Cover.png
		:target: https://github.com/priendeau/Fnct.D#Fnct.D
		

:Info: See `github <https://github.com/priendeau/Fnct.D/>`_ for the latest source.
:Author: Patrick Riendeau
:Stade: Pre-Alpha, Draft specification not terminated.

Copyright
=========

::
	
	Copyright (c) 2009-2016 << Patrick. Riendeau, Maxiste Deams >>.
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

This is a Library for managing function a permanent subset for a clean 
/etc/init.d and many distribution shell with doubtful feature and poor
verbosity and documentation. 


Function Management is especially important in this era, having important 
function or operator being mashed into one Lib ; They defined all appropriate 
exceptions and allow fews or fewer action if they are not correctly used. 
Starting from Declaration of variable to uses of simple command like let, uses 
of operator or even the test internal command equivalent to if [ ... ] ; then ... fi

A Common quote :


Bash Big Line
    It's especially important to declare it correctly and conceive a type definition if your function uses rather to not filtering the input at start and have many messages having problems to handle variable. Especially in Bash is actor or built-in/function/shell script to generate error on type not correctly handled. If the variable is design as Integer and hold String-like information, if you do nothing with that variable or called-it future-design, it won't tell you problems until the day you start to use it.
    
    
Preface
=======

These are Common Bash-Object for Fnctlib _pre-Alpha-Init.d re-implementation 
for services management in Ubuntu/Debian/Fedora, which pass sucessfully some handy-test 
in 3 years of development.


Why we are defining Using Fnct.D
================================

It's Dialectic context. Purely ; mastering shell code like many of us, this Draft will not teach you trick, but having a dialectic context. Today rather than being Network administrator, coders, developers, you receive imperative order to complete a task and better to develop an adaptive context to adapt you to this ecosystem without leaving... Once in, we are all beg for if you can achieve a task, leeching forums and even tell password to root access to talk about your problems... On the other side, we are owning all weakness, from the Agora of Athens people develop talk of theirs competence under 'maïeutique' and prone a way until you find the equation to your problems. And walking to mont St-sinaï to receive presence of God had require you do a prone dialectic of faith to understand you are the elected one... Modern Dialectic is quite simple, it's the open-question being finite-automata, computer can formulate question made of finite-automata to answer to a question. At school we have many context for experiencing dialectic of a code in learning but does not own any path or way when it's time to apply a relation. Made from a dialectic from coders and networks administrator accessing beyond date many python-module to test and explore possibilities, we were able to talk about Twisted module around version 1.2 way before it's really exist. It's Canadian context, we can access to future even because we have all the infrastructure to manage occurrence and de-obfuscation of time-event. So talking strickly of having problems to install Twisted and beware we  are limited in contacting the creator ; we do beg for finalist. Having developed a semantic in this dialectic, was searching for sparse and protected sparse was merely what something can lead for a trace of continuity... It mus a least have one version that do not require cffi and does ultimately fix the solution. Getting down to SSH-socket to irc was catastrophic. And receiving you point of like by... I do start from beginning, taking first version compiling it into Egg, adding a first component at least on the required version and to a test-unit.. For cffi case, using all version of Twisted , adding lowest version allowed and test you unit with Exception and shell-script to detect a rerturn statement that goes in error, having decorator to write in file when it is not working and so forth. Today everything works from Swig making sense and Jython purely virtual, there is fewer Stem to develop to understand something taht not working than really putting hand in the system and inspecting, library, dynamic library, using objdump to find name-section and all header for compiled function, finding anomalies or simply compiled-problems.... Actually Openssl does nightmare like this, I'm not so for to old table in hand and ask to God, can you please the procedure to make a one pass compilation work... Ever getting Segmentation fault by the compiler and require second pass compilation. But Dialectic trace to support other in their UN-rullable problems made from something they may haven't correctly understand.

Post-Note
=========

Unlike old development of fnct_lib, such important function and design being redesigned to simply work. Fnct_lib leave the function __call_locality where an important overloading just corrupt the design. Also introduced the Getter and Setter thru the "\_\_call_locality" function was an echec and function does not support '.' in their name at all, in any version also I believe it's and event assembly export from many *nix design does not support '.' in their name... 

Old Fnct_lib was also developing a dangerous concept, The Post-Fixed variables. Where totally not handled, it should be supported by the function core like "\_\_call_locality" or any "\_\_fnctCreateLocalityFuncParam" and ... Also fnct_lib was trying to develop passing interface based on Base64 a uniform codec translation
a bit slower and really slowing the function when assignment 
"\_\_call_localityDisplayFunctionEntry=1" was made inside __call_locality function and using mere "\_\_in_for", a Loop-wrapper for Array and function Array => F(x)
execution. 

Today we leaving "\_\_call_locality" to implement external function reading the TAG.Now, __call_locality come back as Array, it accept the Root Named Prefixed-Variable and the full-name of the function. This setup leave some external function like  GetVarReference extracting almost anything and add a basic helper. Where is was impossible to create convenient Helper inside the original fnct_lib, GetVarReference had several acheivement... Weak and simple, but 
still work corretly. Two derivate from this external function, 
"\_\_GetVarReferenceList" "\_\_GetVarReferenceCompWord"  are also good candidate to produce steady services, Prefixed-Variable extraction and automation of Word Completion, a lacking design after hearing some group asking  to put on the thumb important reference while Network admin from late 1990 should have to administrate World and world of network by hand... There is no evolution between implementation of this services and methodology to implement it on safe base design.

Convention
==========

In this documentation some convention are used to explicitly name some element 
as it was defined by author and what the author defined inside this library.
According to this Library, following term :

- Evaluative-Executive brace is : equivalent to
 
.. code-block:: shell

 ' eval $( ... ) '
 
- Executive   brace is      : equivalent to 

.. code-block:: shell

 ' $( ... ) '

- Scoped  Variable  is      : equivalent to 

.. code-block:: shell

 local Varname 
 global Varname 
                                            
- Intrinsic   Function call : equivalent to 

.. code-block:: shell

 Var1=Value Var2=Value VarN. FunctionName
  
- Intrinsically abstract most of Var1, Var2, VarN are not existing inside FunctionName but does own presence for manipulation and or query. Is somewhat Object Approach realized with ValueToVariable, it serialize the Variable by using it appropriately.

- Prefixed    Function Call : equivalent to 

.. code-block:: shell

 FNa=Value FNb=Value FNz=Value FunctionName
  
  - Does exist in First part of the function Name and are mostly query with 
  __GetVarReferenceList a manager used with switch --help 

- Boolean Var Test          : equivalent to  

.. code-block:: shell

 BVTestVarName="NewVariable" 
 BVTestVarHold=${ExistingVariable} 
 BVTestBoolVarName=\${ReusedVariable-by-parsing} 
 BVTestBoolAssertion=\${NewVariable-by-parsing} 
 BoolVarTestVarCreation

.. code-block:: shell

 ### Will also produce this normal If/Else brace . 
 local StrPathSSH="/home/user" ;
  if [ "${IsHomeUser}" == "False" ]  ; then
    StrPathAttribute=${StrPathBase} ;
  fi

- Pass-Through or Variable-recopy is 

.. code-block:: shell

 ### Mechanism in function calling sub-function and preserve Variable integrity.
 ### For this re-writing code by simply had conservatory example like:
 ### - Long If-Line being pushed inside Function; Capturing variable inside this 
 ### long If Brace will reduce time re-writing the code by simply filling the 
 ### Prefixed-Variable named VTVValueEntry:
 
 eval $( VTVValueEntry=${StrVarList},StrWiteRegister,StrWriteTempInfo,StrUUID,StrTempUUID,StrDateEvent  \ 
           VTVIsArrayStyleInsert=True    \
           VTVIsValueReAssign=True       \
           VTVIsValueToConvert=False     \
           ValueToVariable  ) WriteUlimitStorage ;

- Re-Writing Short-Template or template is

.. code-block:: shell 

 ### This Hack Re-Write the template located inside an Assertive If-Condiftion on If-Side where
 ### default parameter inscribe here allow uses of an ValueToVariable form and re-writing
 ### The template named BVTVTVTPLA 
 ### from original form : 
 ###   Value:eval __TES__  __REGISTRY_ASRT__ VTVValueEntry=__VAR_ENTRY_ASRT__ ValueToVariable __TEE__ __FNCT_ASRT__
 ### To :
 ###   "\$( eval \"__FNCT_ASRT__\" )"
 ### Of course there is something missing like Function Name in this function called 
 ### Executive-Evaluative brace, so prefixed-var BVTVTFnctA should be used :
 ###  
 BVTIsPreambule=False                         \
 BVTBoolCase=True                             \
 BVTBoolVarName=\${BoolDisplayCmdOnly:=False} \
 BVTIsValueToVar=False                        \
 BVTBoolCase=True                             \
 BVTIsValueToVarAssert=True                   \
 BVTVTVTPLA="\$( eval \"__FNCT_ASRT__\" )"    \
 BVTVTFnctA=\${StrCmd}               BoolVarTest



Example of Development
----------------------

While Software development was observed in Compagny reaching CMM Level 2 ( Capability Maturing Model ), a free tools offering certified gadget to use to ensure your development may achaive Capable state of admitting the error can by simple misstyping and observation of result stored during development may reduce compromising and delaying idea to promote. While Capability Maturing Model [first]_ does show best practice, I do not really own compagny or real entity proning such state if the art action to developt. And merely acheived a function called GnrlPrsrInfctr which is the GeneralParserInfrastructure a costly-few risk application to wrap about any call in future of shell-command by controlled environement, Signed Instance being dumped inside /var/log... and ability to own different method to handle a to-Executable Query. Requiert attention and some effort like developping ZenityBuildForm, GetterByLineData where designed to craft a signed Command query to add inside error-fix.txt in case an anomaly during development is observed, Commentary left inside code may appear and disappear, but error-fix give state of GitHub refenrence like footprint for a reason a this stage it happen hand output is also stored to visit what it should like when a ParserTag failed, what a Executive-Brace lying around and doest execute command but leaving command-not-found exception... Here some hint about Profiting from GetterByLine data calling a Footprint command Line from /var/cache/Fnct.D/BuildForm.

.. code-block:: shell 

  ### Require to Build the Form and it's certified query.
  $> ZBFFunctionName=GnrlPrsrInfctr ZBFUUIDQuery=True ZenityBuildForm


.. image:: https://github.com/priendeau/Fnct.D/blob/master/images/ZenityContentListing-UC.png
 :target: https://github.com/priendeau/Fnct.D#Example of Development
 :align: center

.. code-block:: shell 

  ### Once the parameter choosed to inspect are selected you fill the second windows, and 
  ### the third line or the comment block after the command line is the UUID file-name 
  ### to catch inside /var/cache/Fnct.D/BuildForm, our example left is 
  ### f646c9a8-8786-11e6-8b1d-001e4c8856d6


.. image:: https://github.com/priendeau/Fnct.D/blob/master/images/ZenityBuildForm-UC.png
 :target: https://github.com/priendeau/Fnct.D#Example of Development
 :align: center

.. code-block:: shell 

  ### The Signed block is left inside example/BuildForm but it's a query made on my system and 
  ### once there. If there's error during development of GnrlPrsrInfctr I do confirm the query
  ### to launch it was correct, despite having 11 Prefixed-var to manage.
  ### This example is made from your Fnct.D path. 
  $> eval $( GBLDFileStoreInfo=examples/BuildForm/f646c9a8-8786-11e6-8b1d-001e4c8856d6 GBLDAction=GetContent GetterByLineData  ) ; 

  ### This will execute the query and SHALL HAVE to print the output inside error-fix.txt to notify wrong comportement of the application or any error discovered by data output, verbosis. 


.. image:: https://github.com/priendeau/Fnct.D/blob/master/images/ZenityBuildForm-out-UC.png
 :target: https://github.com/priendeau/Fnct.D#Example of Development
 :align: center


Other convention and Interesting methods of development will be introduce to enhance the nature of Shell-Script by adding example to Fnct.D and by showing Step of development of this library to fortify it's design .




.. [first]  Capability Maturing Model first_ : « Prior need for software processes »
"In the 1960s, the use of computers grew more widespread, more flexible and less costly. Organizations began to adopt computerized information systems, and the demand for software development grew significantly. Many processes for software development were in their infancy, with few standard or "best practice" approaches defined."



Unicity Convention
==================

A unicity convention allow a action or an in-memory ID to be totally unique by it's implementation and it uses somewhere inside an services instantiation from --startservices switche or short-action services with no need to call a  --stopservices switche a value being

1. Printed, stored permanently or kept in memory SHALL be revealed to be a UUID random number based on time. 
	
2. Transfered from and to the Higher Communication Layer from Internal StorageExternal Storage, Engine Storage and API Communication level and Function from Prefixed-Variable Level being Unique and respecting uses of UUID random number based on time. 
 
3. All this should be readable. By mean, we expect not using example in bash to let itself generating script, but python-layer will help improving database access by interposing some generated code made by python script. This will also be human readable or at least part-extractable to let the processor parse the syntax. We do imaginate having to parse some high volume of section like application vault and retain some tangible information while we developing function or applicative occlusion while some already depend of it's presence inside Unix/Linux environment. This should be revertible and offert alternative.Or either having restrictive application oclusionning some artifact. Like  in visualization AgentLoader, not owning the right of calling ssh-add, ssh-agent.Or simply function StartAgentSSH should never call something out of encryption package to call as example hacker-stuff independent package.  This is why everything should be readable. 

	
This mean a function from the Communication Layer communicating with other function will have to own Unique Prefixed-Variable attribute to transfer, redundant uses of same Prefixed-Variable with different value cause one of them being overwritten and cause an abnormal behavior to not corresponding to initial design. 

This also mean, communicating with Higher level like API and SQlite Engine will own a Unique-ID per transaction and this have to be unique and will communicate the Unique ID facility which is not an PkID made from integer but from UUID random number based on time.  

This is also invite Structural design to own memory by design component having inherent cache instruction being storing complete list of Prefixed-Variable being stored under Unique-ID and be accessible from SQLite Storage Engine facility to output initial inherited value from this Unique-ID. 

This will also implement a WILL of HAVING TO talk to API or SQLite Storage Engine facility by emitting a Unique-ID SHALL BE and Imperatively Be used by the facility and be automatically stored. 

Convention use in this development
==================================
By calling '**Idiom**' I will refer to a current sequence obtained by promoted output of an application and/or result of the system itself. Having property to be unique it also refer to it's unique family called sequenced-data. 
 
By calling '**Functor**' I  will refer to a  transient way  to call  conventional function and / or application with really general function statement. To use as simplification of statement and to simplify uses in End-Users test and uses. 

By calling '**Stub**' I will refer to a function ancestor replaced by a modern Fnct.D function name and or any Short-Named Function to replace a long function name. It's also used in one way function uses. Like BoolVarTestVarCreation is becoming versatile and will not only offer a one if / fi template, but some  stub will be generated to render easy to understand and use it . We do predict upcoming BoolVarTestVarCreation showing entering in higher mangling and will cover [ if - elif ], [ elif, elif ], [ elif , fi ] logical pair and will not only generate simple assertion based on scoped variable. 

Term '**general function statement**', stand for nominal function with less than 3 lines of code or only to hide End-User usability out of conventional method describe in Fnct.D to uses Variable direct re-definition in function call to allow reduction of Bash or similar shell to apply a ulimit and other mechanism to reduce length of element or limit of memory to achieve a debugging statement decoy similar problem in future bash - Sub command domain know to be function script language. 


Naming Convention
=================

Uses of some term to explicitly reffer to a specific definition is also used inside this Library and Documentation. 

- *Communication Layer* Stand for Prefixed-Variable to use to call a common function equiped from Fnct.D functionality . 
- *Prefixed-Variable* Stand for First Listed and Showed by GetVarReference Variables inside a Top function definition. Some other sub-function can include the same mechanism, assuming their role can grow and be extruded from function . 
- *Internal-Variable* Stand for Any variable not declared properly or implicitly not respecting the Naming convention site in __call_locality declaration 
- *__call_locality* Stand for First Identifiant inside a function, naming the function Argument or member 0 hold the Prefixed-Variable Prefixed-Name and Argument 1 hold the name of the function. 
- *Arg0* Stand for first Element from a list of parameter obtained from function call. Usually $* hold everything it was definied to not use it as strong reference and might be shorted or extended with uses of pop action and pushing function adding to function argument list extra information during a normal uses of the Shell-Bash . Called ArrayArg it hold on declaration of the function all incoming argument. 
- *If-statement*
  *If-elif-(n-elif)-f*
  *If-n-elif statement*
  Refer for a hard-stated Bash-Shell If statement or a BoolVarTestVarCreation result which depend of the result but once executed produce an hard-stated Bash-Shell If statement. 
	
Example of Bash-Shell If statement
	
.. code:: shell
	
	if [ TEST -eq VALUE ] ; then 
	 ...
	else
	 ...
	fi

OR

.. code:: shell
	
	if [ TEST -eq VALUE ] ; then 
	 ...
	elif [ TEST -eq VALUE ]; then 
	 ...
	fi

OR

.. code:: shell
	
	if [ TEST -eq VALUE ] ; then 
	 ...
	elif [ TEST -eq VALUE ]; then 
	 ...
	else
	 ... 
	fi

OR

.. code:: shell

 BVTestBoolVarName=TEST BVTestIfOp=-eq BVTestBoolCase=VALUE  BVTestVarName=... BoolVarTestVarCreation
 
 ### Will also produce this normal If .
 local ...="CONTENT" ;
  if [ "TEST" -eq "VALUE" ]  ; then
    ...="" ;
  fi
  
Convention in Example showed 
----------------------------

Almost all example without note or trace of existence inside the code are ideal example and are denoted from proof of existence inside the Library . 

A plausible case will also own function that merely look-like library development but does not own same structure are slightly different. If they are not denoted before exposition of the example, a Corpus from this library will show the function name and the revision in SHA-format and date can be added to revision information and YOU MUST rely on the period of exposition of the function and understanding the Library is evolving in term of functionality and the document only increasing in mass not considered to evolve by showing correction inside example function. This according to presentation of a draft example from a function case, demonstration or exception to show, including the revision and the name of the function you can check inside the Github to seek for the revision and it's evolution after the revision date. Which is possible to happen is a case showing a footprint of a function and useless part removed or simply replaced by '...' inside example to save time and focus on line concerned. All other example are free like precendent to be a free-form of exposition, old draft and prototype and might be absent from current development. 


Convention Structure generated 
------------------------------

There is no function here generating temporary member inside called Service-state directory. From /etc/init.d/Fnct.D only function, script and accessible member  are allowed. Storing information are per-user like .ArrayMdCd and .ArrayMdCd_Lock are per-user indice. Index from PackageRepositoryMgmt are external and are simple wasting the /etc/init.d/Fnct.D if 1-from cloning this project and decide to configure itself from it's branch and it's itself fault to corrupt it's own sample of Fnct.D with temporary information. 

There is not temporary code generated here inside a temporary buffer to execute after it's execution. While GetVarReference are self-worked to use live memory information to extract member and transform them into an Helper, the Low-Level Bash-to-Bash shall not own mechanism to create temporary file in /tmp, /temp, or any \${USER} forlder to execute it after it's generation. Having future version of Fnct.D in design to integrate Python-to-Bash and Bash-from-SQL and  those are only exception and are using Outlet, pluglet, socket and RPC to extract information and create temporary function in memory only. It SHALL NOT had deposed information temporary of any. 

Data are qualifed for permanent storage are elligible for storage and shall not contains executable code... This does not mean owning Taggable information and semantic-prone information to be re-interpreted. Storing function name, function Prefixed-variables and possible structure to form many function call from derivated engine are considered like configuration segment and shall return nothing if the content is accidently executed. Configuration segment are also to be stored in per-user uses. 

Note on temporary Function
--------------------------

Are allowed, while code coming from generation from executed code inside member of Fnct.D and not externally if they are not coming from Python execution of Python-Code or coming from mechanism from SQlite to extract arbitrary stored Shell-code conserved in TEXT format. SHALL HAVE a unique-ID in form or UUID generated in time based format. Application uuidgen with option '-t' is FLAVOURED to produce UUID Time-based Temporary ID. Python with following syntax is ACCEPTED, And at a future stage requesting from RPC Call implicitly using Socket to server will be used. 

.. code:: shell
	
	echo 'from uuid import uuid1 ; print uuid1()' | python2.7

OR

.. code:: shell
	
	uuidgen -t


Typically temporary function will own structure like this : 

.. code:: shell
	
	### Temporary ID requested from python: 
	echo 'from uuid import uuid1 ; print uuid1()' | python2.7
	### 63bff8cc-4fc9-11e3-98a2-001b3875b29c
	
	### Temporary Function name Look-like. 
	__63bff8cc4fc911e398a2001b3875b29c() { echo "Test"; }
	
This bring a << propos >>, and Mechanism Generating Temporary Function name SHALL

1-	Having name in memory and/or mechanism to store and retreive temporary 
	function name .

2-	Managing function name and HAVE-TO erase it's temporary function name existence 
	after the end of it's life cycle. 

According to a life-cycle it's open proposition and enhave it's endocrinement of this library being part of /etc/init.d position. Having switches --start-services also mean a part of a work like following application AgentLoader are active and setup correctly a services telled SSH piped instruction onto external access indeed to promote a mechanism to stop it's fellow action with --stopservices. 

In this conformance willing to agree a presence of a life-cycle mean at the end of a life cycle ( action to stop a fellow action to take end ) by removing data, variable, open-transaction-layer out of this terminal shell and consider the end of this services. 

According to a Short-Action meaning Start-Services is only one-shoot or also promoted by uses of --compword a second-state of services and Active-derivated Helper may own temporary function end. Ending It's life and ending any living temporary function, data, structure and mechanism to end on --stopservices call . 

And naming and convention from Temporary Function for Internal Communication layer a.k.a. Prefixed-Variable

Convention in Paper Draft informations
--------------------------------------

Every Paper Draft informations is coming with a note, and a title. A Function name can follow a Paper Draft informations. The note is a UUID made by required type  of UUID ( Time-based UUID. ). Might optionnally mentioning the Function being related, or Methodology being applied or any Structural Design from Basic Programmtion rule being know from developper.

Paper Draft information Are information illegible after aggregation , correction and standardisation to be elligible for Documentation... Paper Draft informations will allow to talk about implementation inside Documentation, but not Documentation to reffer to a Paper Draft informations. Also being cleaned from joke and story , Documentation will not own any of these story-line of what creator inherit from this contribution. Finally Paper Draft informations will stay in last-page from  Fnct.D like a section to read in spare time and leisure from what time had  consolidate to offer so strong attribute to this methodology....  

What You'll need
================

This Document rely on uses of Bash. Uniformely implemented in Unix/Linux world, some OS like OSX does own equivalent and may support addition of bash. Development already reach almost 7 years and do Jump across  version 4.0 to 4.2 but latest version 4.2 is freeing limits toward Variables passing between function to standard variable and does limit local variable to grow or stay alive. Also requiring uses of python it stay on 2.7 minimalistic version. Also registration process require SSH and netcat to demonstrate evolution of CLI interaction with tools. Twisted have been streched to operable and is planned to be used. Twisted is python module and does extend safe communication is Fnct.D does extend it's management over network. Do people haven't experimented Terminal Jam or screen overflow with recurrent call during Shell development, experience have found usefull to log into a SSH or telnet to send kill signal. Which is constantly an object debatted here to not kill a procedure if our module respond to a Precise Dilectic to turn-it off on need. 

:Note: ae5dee26-6424-11e6-98a2-001e4c8856d6
:Title: Alternative to Netcat, Twisted module with SSHFunctionController 
:Method: Python Application to Deserve important bottle-neck not to create pumping problems

Since Tuesday 16 august 2016, Twisted module had come out, magically for my first SSHFunctionController. Twisted version 16.3.1 being present to implement a DoController functionnality in second stage, to render easier the SQlite3 Access by sending a PostCard registration during connection, the pre-draft version will soon only require the public and private key segment to avoid uses of password and will have ssh access with option to send command line. Praised long by Network Administrator, SSH with sending command are most wanted knowledge to access to a specific problems when this one have to be stopped. Eliminating need to connect, brow and type, ssh with one command embedded in the connection is just perfect. To visit Twisted please visit :

.. image:: https://raw.githubusercontent.com/priendeau/Fnct.D/master/images/Twisted.png
 :scale: 25% 
 :align: right
 :target: http://bit.ly/XSARm5


Description
===========

While bash start to offer more than conventional Shell, memory start to be very affordable, many Boot-loader start to offer socket for Bash-like behavior and will be soon be part of Posix conformance. Pre-Development from Command-line automation, and creation of Fnct_lib was a moderated Sub-API, a Wrapping in shell automate management and lead to well written version introduced with fnct_debian_lib and linked sub-shell lib.


Synopsis
========
This will serve to generate development script and auto-creation-script for test purposes and automated services for many U*nix and Linux environment. 

By The design, it will offer safe-container and safe method of transferring information in management of services and will be able to perform gain in check-up in stable environment by skipping check in Read-only mode of certain loading... Like, If RO-File-system[*] is older than creation date, it will be able to query OS to add trigger to perform less operation and load information faster in subsequent startup... Idem with services with less touched file configuration. It will be able also to increase maneuverability of uncommon option like Disk-To-Stream accessibility and Memory-To-Stream Uses, aka Network-Booting, Network Memory Pool and Network Application Ground-up.

[*] RO: Read-Only Filesystem

Also , Methodology of implementation is strict and observe Object-oriented transcription in transformation of many available Byte-coded of IDL re-interpretation in super-tiny scaling...

Certain option will be implemented in second-stage of development, and creating wrapper for UN-accessible Gpl-services or fast-implementation prototyping, switch for DTD extraction of Shell-Application program and XML Verbosis and XML object induction to help development of functionality implementation in fnct_list .

This Function-Library is sensitive to uses of UUID, current and future development will own critical application with simple name. Called GetUUID this application will issue UUID and will manage it's presence by storing it properly. 
 
Using a specific type of mechanism to store the informations, second-hand function will invoke and  or query the informations toward this created idioms inside this library. 
 
As example BodyFunc function will depend of registration of the body and it's root require uses of UUID. Managing the idiom is important to store definition of many IF/ELSE condition used in conjunction of BoolVarTestVarCreation and will create registration sequence where any new sequences will give another new body for execution. 


Arguments
=========

Level-1 Argument, A Deference-In :
	
Are Mostly Prefixed-variable to be understand and replacing 90% of switched uses into Services declaration and Services Information. Services Establishment like --compword is a future feature available soon after 2013-09-08 where all function will own word completion activation. 

Are Certain GetVarReference play an important part in realization of __GetVarReferenceList since Outputting Internal Variable for ``poking`` the content of function is an important part of WHAT IS required to create builder without porting the function structure into hermetic container called Black-Boxes , or making reflection. SHALL GetVarReference being a pivot in User Knowledge database, allowing user to seek for action thru Prefixed-Variable showed out from GetVarReference being present in bottom block  of our function design to help user having the strict minimum of our function interaction. Our set's of function calling --help is directly linked to this part. SHALL GetVarReference also have it's Documentary structure involving uses of String of appropriate name like Chapter name NameHelper, Synopsis, Summary, Description and Prefixed-Variable named [ GVRIs + Chapter ] Name can increase chance of understanding your memoize[1] or you documentary code being present on calling the helper aka --help switches and having chance to make it lasting y having Documentary structure within your development. Shadowed by simple variable action.  

Are conform owning aggregation of couple function having strict action and attended resultat. GetOtherDate is also commonly used and correctly defined to accept Posix formated date and having possibility to handle multiple range of creation and can answer to some criterion. 

Are HAVING structure and environment to allow quantum-state action to wide-action, LibLoader having strict method to call and rely on Posix shell function aggregation allow our set's being more and more stable and anomalies are detectable. Quantomic action like proof of unicity by using corpus of UUID and mechanism to protect writing in some design like md_cd does allow presence of unique action and dismissing uncertainty event corrupting information. md_cd and UlimitSystem and important action on environment to change system performance ( UlimitSystem ) and change status of backuping information ( md_cd ), to own 'preservance' by protecting write of log and preserving integrity of start-services / stop-services ( UlimitSystem ) we are working to proove them able to perform some vision anticipated HAS problems of loss of process beyond scope day and lost of information FROM lack of directory survey, unifying simple tool DOES have an impact on system life-cycle. 

This is why Fnct.D is a good Dialect on keeping thing alive and not only working. 

Level-2 Argument, A Reference-In :

Based on Python optparser we do see application were growing in number of switched while some other Visual environment like X Window did not and also profit from Posix Shell Variable to let the environment to grow-up. Having multiples screen port are Matter if ${DISPLAY} starting from one display on DISPLAY=:0.0 on local port it can grow over different connection setup-ed by X Window and will emerge in multiple region to other port like distant connection. All visible with couple Variable. Pre-Fixed Variable are mastered by COMPILER, Link-Edition ( LD ), Execution Layer ( a.out, ELF ... ) and are transferring theirs informations from the system through POSIX variable. Fnct.D does own mechanism to reflect the action of Function and Sub-Function in a quasi Objective method where it's  need to reduce effect of black-boxes from a function imply extras and costless action to allow safe manipulation of data during this attempt to reflect the action of an object of arbitrary safe container reserved for an embedded action. This re-entry should be easy and have it's structure being easy to reproduce. Some function does have internal-function being present and callable from Top-Function and deliver internal action by simply adding Pre-fixed variable binding the action of requiring only a part of the action and not the whole function. GetterByLineData is one of them, and ZenityBuildForm/ZenityPrefixedVarSelection is another one. one working for the integrity of data, MUST having scheme to call a strict action like taking the root-of-certification in a file and allowing it to create a new one. Other are working with descendant of __GetVarReferenceList allowing to push Factorization of function by providing a way to know Pre-Fixed Variable to use and generating command for understanding what your are creating . 

[1] Memoize, from memoization : The term "memoization" was coined by Donald Michie in 1968[5] and is derived from the Latin word "memorandum" ("to be remembered"), usually truncated as "memo" in the English language, and thus carries the meaning of "turning [the results of] a function into something to be remembered." While "memoization" might be confused with "memorization" (because they are etymological cognates), "memoization" has a specialized meaning in computing.


Invocation
==========

Likewise Bsd Middle-age, a sub-entity was existing inside /etc/init or /etc/init.d and desapear or move inside /usr This design exist inside /etc/init.d/Fnct.D to  establish a __future__ development for integration inse loader and initrd for shell management and Integration. 

The original mechanism /etc/init.d/Fnct.D/fnct_lib allow loading of sub library.  Most important are fnct_debian_lib _sub_jack_script _sub_Git _sub_ssh_handler all available inside the /etc/init.d/Fnct.D Path .

Example 1 :

.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/fnct_lib_loading.png
		:target: https://github.com/priendeau/Fnct.D#Invocation



This is a result from loading /etc/init.d/Fnct.D/fnct_lib from a .bashrc 

Example 2 :


.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/fnct_lib_loading_2.png
		:target: https://github.com/priendeau/Fnct.D#Invocation-2



This is a result from loading /etc/init.d/Fnct.D/fnct_lib With specified version of function. this
case suggest having eliminated CallArgument / __Call_Argument by calling the library with :

- versionCA   Version:0.0.0 <--- this is responsible of dark-Yellow message.
- versionGCT  Version:0.0.1
- versionGSPN Version:0.0.2
- versionTP   Version:0.0.2
- versionGPI  Version:0.0.1


	
Example of .bashrc configuration file with fnct_lib and some usefull widget  configured thru uses of alias. 

.. code:: shell
	
	### Found on Top of my .bashrc 
	. /etc/init.d/Fnct.D/fnct_lib 


	export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[01;36m\]@\[\033[01;32m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '

	### 
	### Some common thing found inside a .bashrc example
	### 
	alias ls='ls -AlSr --color=tty' ; 
	alias mkdir='/etc/init.d/Fnct.D/md_cd' ;
	
	
	### 
	### My Creation-Path Services, adding information inside ${HOME}/.ArrayMdCd
	### effective enough to create one at the time Path and store the information
	### of date-creation and location created and dumping file .gitignore, README.rst
	### MANIFEST.in inside every creation... Useful to store story-board, File-list
	### and avoiding to concurrent temporary file or useless file...  Also 
	### /etc/init.d/Fnct.D/md_cd own an quantomic action, many selfuser may use 
	### different terminal and will have to wait until first one had done to use
	### the mkdir, md... Before another user can use it... so ${HOME}/.ArrayMdCd
	### can not hold uncoherent information or incomplete one . 
	### 
	alias md='/etc/init.d/Fnct.D/md_cd' ;
	alias iptables-list='iptables -L --numeric --line-numbers' ;
	alias synaptic-search='sudo -s synaptic-search' ;
	alias synaptic-up='sudo -s /usr/sbin/synaptic --update-at-startup'
	alias apt-src-install='sudo -s apt-src-install' ;
	alias gedit='/usr/bin/pluma' 
	
	### 
	### This is example is famous about configuring the ZenityShellEval Windows Resolution.
	### 
	alias ZenityShellEval='ZSEWindowWidth=1000 ZSEWindowHeight=700 ZenityShellEval'

	
	### 
	### This is example know to be effective, adding a snapshoot every time the 
	### application is called to store Debian package into my personal storage.
	### 
	alias PackageRepositoryMgmt='PkgRepoMgmtAddPkgLst=True PkgRepoMgmtRepository=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001 PkgRepoMgmtReposIndex=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001/index PackageRepositoryMgmt'
	alias PackageRepositoryRest='PRRBackupPath=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001 PkgRepoMgmtReposIndex=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001 PackageRepositoryRest' ;
 
 
 
| Using this library inside a shell script is unfortunately one of the most important goal developped here. The example 
| within this code give example like md_cd a mkdir with ability to create a log entry of date creation and on delivery 
| date and published data inside this document will explain it's function and member used inside this library. The most
| easiest way is to call the Library  before  you start using  function from this bundle . Also  developping  your  own 
| function inside this shell-script  is up-to you but we  are inviting developper to  respect some easy step to develop, 
| Pre-fixed variable header to allow  being recognized by  some important member like GetVarReference, or adding  extra 
| Pre-fixed  Varaiable/Parameters  to GetVarReference  to allow  describing your function  or  script to  allow user to 
| understand the purposes of your function. Other option like TagParser, BoolVarTest and/or  BoolVarTestVarCreation can 
| help building from command line a full-set of  IF - ELSE ,  IF-FI,  IF-ELIF ... set of clause with keeping the corect 
| syntax. Such action like  testing presence of file  and doing action  uppon it's  presence or  After execution  of  a 
| program collecting it's return statement and  mastering the result is  something recurrent and  can be registered  as 
| part-of-code  being accessible true tools  comming up allowing you  to register  part of  code,  being aceessible  on 
| need and having engine  cumuling occurence of the the registered sets of code to later muting thems into more evolued
| form  or simply optimizing them. this all start by calling  the Library. Here a  sample coming from  md_cd saving Old
| Array of Library and loading your proper sets:



.. code:: shell
  
 #### Inside Script.sh
 ### Depend from ArrayLib, putting only inside fnct_debian_lib like previously declared
 ### make only this one be loaded. 
 ### This will display the loaded Library on you command prompt and saving Old Set of 
 ### configured by you .bashrc if you are loading it from favorite Bash-Shell . 
 
 OldArrayLib=( ${ArrayLib[@]} ) ; 
 ArrayLib=( fnct_debian_lib ) ; . /etc/init.d/Fnct.D/fnct_lib 

	### Make it silent ...
 
 OldArrayLib=( ${ArrayLib[@]} ) ; 
 ArrayLib=( fnct_debian_lib ) ; LLDisplayProg=False . /etc/init.d/Fnct.D/fnct_lib 
	
 ### Unloading previous loaded function ...
 
 OldArrayLib=( ${ArrayLib[@]} ) ; 
 LLDisplayProg=True LibLoader --stopservices  ; 
 ArrayLib=( fnct_debian_lib ) ; LLDisplayProg=False . /etc/init.d/Fnct.D/fnct_lib 
 
 ### ... Your code here.
 ###
 ### ... End's here 
 
 ### Back to Initial Set's
 
 LLDisplayProg=True LibLoader --stopservices  ;
 ArrayLib=( ${OldArrayLib[@]} ) ; LLDisplayProg=False . /etc/init.d/Fnct.D/fnct_lib 


.. image:: https://github.com/priendeau/Fnct.d/blob/master/images/BoolVarTestSymbol.png
		:target: https://github.com/priendeau/Fnct.D#Broking Down If-Statement with

Broking Down If-Statement with ...
----------------------------------

With BoolVarTest / BoolVarTestVarCreation, and expecially BoolVarTest which is part of Library _sub_Structure the tinyest part to load to have the greates effect in composing and creating easy-structure. This Section talk about Invocation of many-types of If-Statement expressed by J. W. BACKUS, inside BNF ( Backus–Naur form expression). The minimalistic case offer by BoolVarTest will expect having no ELSE because It intent to produce an artefact from something existing or non existing and give a behavior comportment with specific attribute. This minimalistic IF statement does handle a "Theorical" case having a variable to use named "StrNewVar" when a behavior made from Prefixed-Parameter from YOUR FUNCTION called IsChangedStatus controlled externally by the command prompt and finalized by it's internal relation with IsChangedStatus being automatically changed, it pass inside your WILL to use IsChangedStatus to assign a new value to StrNewVar. Perhaps StrNewVar have an existance, but considering handling a Preambule or the minimalistic environment of "YOUR CODE" you can let it be managed by the BoolVarTest application to let the function change it's state. It's state have nothing or even the value "NoStatus" and the behavior mechanism from IsChangedStatus to change "YOUR" StrNewVar="NoStatus" into StrNewVar="NewStatus". It requiert IsChangedStatus first correspond to "True" which is purely the reason why a Boolean expression from BNF syntax don't require ELSE STATEMENT at this first statement. Because It already come with the "Theorical" reason of "YOUR CODE" come with a situation of never heard of StrNewVar and you do beleive leaving the BoolVarTest having at least a function after taking this variable StrNewVar and start your function action over a situation where "NoStatus" will bring a message about nothing done and "NewStatus" you have done something... 


Improvement
===========

Now on latest relase ( 2013-09-04 ), the re-integration of /etc/init.d/Fnct.D/fnct_lib 
was added to Git repository. so now inside a simple .bashrc the following line will 
call the Lib:

.. code:: shell
	
	### Must be added inside ~/.bashrc 
	. /etc/init.d/Fnct.D/fnct_lib 


Assuming the Git developpement branch was cloned inside /etc/init.d/Fnct.D
	

.. code:: shell
	
 $> cd /etc/init.d
 $> sudo -s git clone https://github.com/priendeau/Fnct.D
 
 ### Alterntively create it somewhere else to develop on
 ### it and do have the impression to not touch to your 
 ### services inside /etc/init.d. can be linked to your
 ### /etc/init.d
 ### --- From your HOME path ---
 
 /home/user$> mkdir github && cd github 
 /home/user/github$> sudo -s git clone https://github.com/priendeau/Fnct.D
 /home/user/github$> sudo -s ln -sf /home/user/github/Fnct.D /etc/init.d/Fnct.D
  



:Note: f4391e08-e1ba-11e5-98a2-001e4c8856d6
:Title: Unilateraly developing corpus, not shell equivalent.
:Method: Abstraction of development, uses of Idiom and UUID

:Notice: ca66ef20-e187-11e5-98a2-001e4c8856d6
In near future, usues of GetUUID will be subject to a permanent survery this one 
will be called, both a mechanism of storage, view and cleaning will be hook to this
function, aka MD_CD. MD_CD have possibility to store creation date of path. wheres 
some successive development will lead to read the file and or media invested for 
storage of this information. This will also appear inside GetUUID and integrity
test of the helper will reveal to start the storage. Future definition will start
testing if GetUHelperName is UUIDHelper to start the storage and collection of 
information. This notice did not mention if new development will imply uses of 
sqlite for MD_CD data storage and shallow not mention if this GetUUID will either 
get one two storage method. A basic work based on file collection will start be 
will probably move to sqlite to render data parsible thru other tools to observe 
uses of this function. 
 
:Notice: 282b59c0-e188-11e5-98a2-001e4c8856d6

Will also invite to uses the Helper  directly if  some other  alternative  are 
inquirying  the uses of UUID. Goal of GetUUID is also to aggregate a  function 
UUIDRegistration  which uses of  BodyFunct will depend on.  Other alternative 
like ShortRegistration of  Pattern, variable-set  will also own it's registration. 
	
function LibLoader
------------------

:Note: e40085f2-7ee1-11e6-8b1d-001e4c8856d6
:Title: LibLoader, the main Boostrap of Fnct.D .
:Method: Componnent Development. 


Is the Main BootStrap of this services, having application or simply file-shell-script. to developt, The LibLoader hold portion of code you do expect to require to create your services or simply your shell script. The main setup librairy holding all necessary function are store inside ArrayLib, where this one can be modified before launching the LibLoader. LibLoader also assume you have launched /etc/init.d/Fnct.D/fnct_lib at least once, it manage the Bootstraping and launch one after the other the rest of the function file defined. Because of it's colorfull startup, some may prefer to launch it silently on serious application, here some information helping you to start-it up. 
 
LibLoader does support silent mode and unregistration of function. This is not a  perfect de-registration mechanisme because it does not support file loaded from  Library from Fnct.D like UUID chunk Development, but it is not a complex mechanism to develop du to it's mechanism to load a Chunk. It's a File can be loaded with  '.' and it's file name are plain UUID. so seeking them, like step of unloading  inside --stopservices side from LoadLib doest de-registerate from memory something « rare » in function development. __main_StartServices() or __main_StopServices() it's because built-it command 'declare -f' does not giving all the property of a function and only respect posix form to display information on need. But it's twice harder to ouput __main_StartServices() from 'declare -f' than looking directly inside the script file.... Bash may remain out-of informations for this purposes or require to install development bash file to develop more accurate function built-in command. 

LibLoader does support the StartServices and StopServices. StartServices used by calling `LibLoader --starservices` does load all the function from file-script inside /etc/init.d/Fnct.D. As well `LibLoader --stopservices` does unload with an internal bash 'unset' call all current function and old function too. It's also removing sub-function because declare internal function is special, using command 'declare -f FUNCTIONNAME', the function FUNCTIONNAME owning couples of function are display like text of the whole function, but if FUNCTIONNAME having a sub-function called  UNDERFUNCTIONNAME, using 'declare -f UNDERFUNCTIONNAME' will be displayed too. Thoses asking why there is no conflits with application for SSH tunelling git repository is not entering in conflicts with other 

Coming with no helper, Before creating light, everything were in the dark . So here couple of Prefixed-variable and switches. 

.. code:: shell

 ### Prefixed-Variable
 ### 
 ### LLDisplayProg Choice : [ True | False ]
 ###  Show or hide Status of loading or deregistering the application.
 ### 
 ### LLStatusDev Choice : [ 0 | 1 ]
 ###  0 -> In alpha development and there is nothing more to get even trigger it to 1 .
 ###  1 -> Will be first beta Stage for early 2018 or before.  
 
.. code:: shell
 
 ### Launching it from shell will look like this :  
 $>  LLDisplayProg=False LLStatusDev=0 ./etc/init.d/Fnct.D/fnct_lib 
 
 ### Or Even LibLoader 
 $>  LLDisplayProg=False LLStatusDev=0 LibLoader --startservices 
  
  
 
Remark
======

- And all effort to ValueToVariable to ... 

To Steve, Network admin from college rosemont... Was probably the Network survey
from TELUS, already studied as police **Factory**, was the guys behing the 35th 
mondial of Work-fair including 2 student building stage for compitor contest... 
During he drive he was asking couple of question behind this (probale 
ValueToVariable ) about something "gellyide" it's mind about double dot... 
It should not be used to separate item in an array... There probably a 
transforming action allowed by Bash I answer, but it's really far in future and 
try under Slackware did never work... I think... this was in 1999. 


Definitions
===========

Part of Imaginary symptoms, a wide concept called efficiency is a key and a lost
dream in the today dream. Having multiplicity of design and a restricted goal, 
many distribution come to a day where is become heavy and slow and start stinking.
Sinking the source into all faith, telling what slowing the wage is more an Imaginary
symptoms like Freudian regression of psychiatric ill.

:Note: fb7831a4-1e3a-11e3-98a2-001b3875b29c
:Title: Pumping performance problems, 
:Method: Python Application versus Bash Shell. 

.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/Pumping_Performance.png
		:target: https://github.com/priendeau/Fnct.D#Definitions
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

*** Still relying on Paper Draft informations ***

The main documentation is not available, but you can read all Paper Draft informations
Note. 

Noted by UUID, and Title, every Note is entitled by UUID-Time-based randomness, 
and clever and advised developper can use High-level API within C++, Python, C#
to expand to real date and time when the Paper Draft informations Notice was 
labelled. Where recent UUID sufix from ********-****-****-****-001b3875b29 will
indicate at least this year ( 2013 ) date of development and entitled this lib
to own Paper Draft informations with Unique ID of development, impossible to re-
produce by copying the content and leaving the UUID-date like this they will 
always bring the user to this time of creation... A good way to prevent monkey-
coder to re-introduce a project of a living person ... 


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
	
	alias PackageRepositoryMgmt='test -e  $( PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt --get PkgRepoMgmtReposIndex ) && /etc/init.d/Fnct.D/md_cd $( PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt --get PkgRepoMgmtReposIndex ) && PkgRepoMgmtAddPkgLst=True PkgRepoMgmtRepository=${NewRepository} PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt'
 
- This case is also exceptionnal, Attempting to use the variable without having new declaration of it thru uses of get might cumbershot the call 
- But next uses of PackageRepositoryMgmt will not depend of 
PkgRepoMgmtReposIndex and PkgRepoMgmtRepository anymore .
 

:Note: 748de708-0d0d-11e3-bb8a-001b3875b29c
:Title: Generated IF in BoolVarTestVarCreation & Parameter do change it's nature with default assignation.
:Function: BoolVarTestVarCreation

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
:Function: BoolVarTestVarCreation

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
:Function: BoolVarTestVarCreation

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

:Note: 86e842ce-34f4-11e6-98a2-001e4c8856d6
:Title: Many Successive BoolVarTestVarCreation To acheive one Big If-Else condition
:Function: BoolVarTestVarCreation

While some effort are made to keep the code clean, clear, and clarified, this latest version commited after this UUID are doing some pervasive test like assuming we are pushing correct Polish-Notation designed coercive network. Beside BoolVarTestVarCreation which is a Tools to create a multiple conditionnal test like for forming instant shell-script and/or evaluation on demand. This tools will create inheritance part-function . This also mean a this stage to be ready to talk about a future function name not named at this moment but will use this tools into a correct way to form a Correct IF-ELSE-FI compound elements. 

The topic. 

Having used the crontab to allow a laptop to automatically configure a gorvernor to it's most appropriate way, a crontab uses a leaked-design to allow a time based script to test if a file is present. It's deduction will call an application cpufreq-set with appropriate caracteristic. 

.. code:: shell


 ###
 ### test dependent. Require A file in /root/sysctl to allow test to perform the rest of the command line . 
 ### 
 */2  *   *      *    *     test -f /root/sysctl/.cpusetgov_0 && cpufreq-set --cpu 0 --governor performance
 */2  *   *      *    *     test -f /root/sysctl/.cpusetgov_1 && cpufreq-set --cpu 1 --governor performance
 */2  *   *      *    *     test ! -f /root/sysctl/.cpusetgov_0 && cpufreq-set --cpu 0 --governor ondemand
 */2  *   *      *    *     test ! -f /root/sysctl/.cpusetgov_1 && cpufreq-set --cpu 1 --governor ondemand
 */2  *   *      *    *     test -f /root/sysctl/.cpusetfreq_0 && cpufreq-set --cpu 0 --min 1900000 --max 1900000
 */2  *   *      *    *     test -f /root/sysctl/.cpusetfreq_1 && cpufreq-set --cpu 1 --min 1900000 --max 1900000

An intrinsict form inside a crontab is a simple command line being fixed and will always execute it . Uses of test is called leaky method because we do have to certify with other mechanism if that command is executable . Leaky method can be see as un-nestled command .

The leaky method, it formely require something out of the crontab to not permit this achievement. In some way it wished because we have designed to not allow the modification of the crontab every-time we do doubt changing the CPU gorvernor . And secondly it's stored being /root/sysctl only accessible thru root-user and related to high order role. Tersely defined a script where it might require to log in to change the cpu governor. Like mailman, spooler, and many designed role I do suggest to follow this action because it does not require to Install insane application dependent of Heavy componnent. The one deserved by Mint is called Mate which is a derivative friend of Gnome I beleive. So baically the script have a section a simple section where a test is required and showing the contrast to how developping if-else-fi condition with Fnct.D is demonstrated.


.. code:: shell


 ### Script is called change_cpu_state, it's goal mentionned early does depend of file presence inside /root/sysctl/.cpuXXXXX , The investigator have found 2 cores inside /sys/devices/system/cpu and properly declare them having governor changeable and frequency changeable. Notice Logged inside this user it only start that script ( with properly configured Fnct.D ). Afterall it's mainstream, you do test or final test-case, Like my python user it load idle over stripped-down mate or gnome or enriched xfce and python script are simply going faster . 
 #!/bin/bash 

 ROOT_PWD_MAIN=/root/sysctl
 FILE_PREFIX=( _ . )
 FILE_COMPONNENT=( cpusetgov cpufreq )
 INTNBMEMBER=2 ; 

 ###########

 ### Important Shell Task, Change PWD to this location. 
 ### Require To hold information temporary inside a file-buffer . 
 cd ${ROOT_PWD_MAIN} ; 
 echo > .filechangename ; 
 
 for Member in ${FILE_COMPONNENT[@]}  ; do 
  for (( inty=0 ; inty <= $(( ${#FILE_PREFIX[@]}-1)) ; inty++ )) ; do 
   for (( intz=0 ; intz <= $(( ${INTNBMEMBER}-1 )) ; intz++ )) ; do
    
    #IntFileRef=0 ; 
    #if [ ${inty} == 0 ] ; then 
    # IntFileRef=1 ; 
    #else
    # IntFileRef=0 ; 
    #fi
    
    ### Suggested replacement :
    eval $( BVTestScopeTest=declare BVTestBoolVarName=\${inty} BVTestBoolCase=0  BVTestVarName=IntFileRef BVTestVarHold=0  BVTestBoolAssertion=1 BVTestIdType=4  BoolVarTestVarCreation ; BVTestScopeTest=declare BVTestBoolVarName=\${inty} BVTestBoolCase=0  BVTestVarName=IntFileRef BVTestVarHold=0  BVTestBoolAssertion=0 BVTestIdType=5  BVTestIsPreambule=False BoolVarTestVarCreation ) ;

Declared thru the Shell it produce that sequence which it is  ""merely identical"" to the previous line 

.. code:: shell

 declare IntFileRef=0 ;
  if [ "${inty}" == "0" ]  ; then  
   IntFileRef=1 
   else 
    
   IntFileRef=0 
   ; fi



.. role:: raw-html(raw)
   :format: html

:Note: 7236e956-f6cf-11e5-98a2-001e4c8856d6
:Title: Recurrent call in BoolVarTestVarCreation and avoid uses of ValueToVariable .  
:Reference: Warning. 
:Function: BoolVarTestVarCreation

While BoolVarTestVarCreation is a low-level call indirectly call by ValueToVariable it's hard to define first will end having good sub-body to acheive a strict identity and be able to parse all variable before BoolVarTestVarCreation 'will' have to end a possible __main_start_services if this one is implemented with normal body-topology  .  So it's not recommended to use ValueToVariable inside BoolVarTestVarCreation has long there is a better mechanisms correcting this problems in bash of recurrent  function call recurently a lower level function will simply loop and not finishing the work . 

:Note: 23082f68-76f7-11e6-8b1d-001e4c8856d6
:Title: Possible leak in evaluation-statement or during parsing of command With Sed inside ValueToVariable.
:Reference: Development
:Reference: Warning
:Function: ValueToVariable

It's Unclear the reason being Sed leak, and latest update from fnct_debian_lib by adding Unbuffering Sed did not make improvement by display a command Not-found by trying to execute the code after the parse. It's not Sed application fault, but suggest, sed being padded inside 2 or 3 level of pipe and do have to transform a syntax PolishLike-Variable-Name feeded by Separator. Usually the Separator used ir the virgule «,» and is strongly suggested to write variable name on shell at long and separated by THIS «,» , avoiding space or shell will take it like another Pre-fixed varaible to add to script execution or inlet of environment of execution os following command called. Back to the 2 or 3 level piped of information, sed does return the sequence almost all alone due to parse-grouping effect. Know in short from Bash  reference from O'Reilly from Arnold Robbins, explain Brace expension and did show example of bash expression grouping with both sets of «[,]» and «{,}» where it comonly re-uses groupping effect to produce a compword inline re-scripting of your line by pressing «TAB», but this grouping is more concerning Regular expression from O'reilly by Tony Stubblebine inside Shell Toolexplaining on Table 65, grouping and how-to retrieve a grouping match. It's simply pop-out the match and add a space. 

This development of vtvVersion 0.0.2 ( ValueToVariable ) is exclusively made from Shell expression from internal command . Avoiding the error not found error, it re-abilitate BoolVarTestVarCreation to work back with application like GetPasswd which is has severely changed since migration of Fnct.D work under platform Mint 12/13 to version 17.3. It's Equivalent to Ubuntu Xenial distribution and lower distribution can work. The big observation on why this problem appear and not before are also with addidtion of ValueToVariable being added inside Preambule and both Assertion of BoolVarTestVarCreation, leaving less evaluation brace to worry and only variable to Feed. Until ZenityFunctionPrompt will appear to help user to complete Unregistered call and stock them inside text-file or chunk, The infrastructure per function is already present to use. 

Using Getter is also what made ValueToVariable out of warning of possible recurrent call which made it clumsy to loop infinitely inside dedicated Tested GetPasswd and same BoolVarTestVarCreation output thru debug statement being called did not show loop executed in parsing mode. Noted, uses of an action inside GetPasswd to evaluate an If builded by BoolVarTestVarCreation to Ensure the client can show the command out of application pwgen being mounted in Apps manager for it and increase the loop to ensure lesser recurrency of same password group is also a strict definition of the application. In short It was fix for something not wished. While Infrastructure still able to query all Key by using the application List key like GetPasswd --list, will output all Pre-fixed variable. Like GetVarReference is already ready to build a topology of varaible and default value, mounting them in a Zenity Check-List to recycle every checked item to ensure you can inspect every variable, should be easy but not by standing low with leaky ValueToVariable where now coming with rejection List and long and pretty listing embellished with Verbosis method that start to be current in many example showed. 

Here the new Helper, it's compatible with previous version of ValueToVariable

- Does include Synopsis and Summary and Description will be available soon. 

.. code:: shell

 Help:

 Function ValueToVariable
 Name
 ValueToVariable		The Fnct.D Mechanisme acting as Re-Copy Pass-Thru Variable in Variable authorized to be transfered from Higher-level function to Sub-Level Function.


 Synopsis
   Since implementation of TSR resident like Python command-not-found or any type of Layer in interactive Shell in Both Curse Bash Command-Line and/or xterminal, gtk-terminal, The behavior of function is not clear and are not totally accessible. ValueToVariable eliminate problems of declare and following constraint, local variable can travel thru sub-function. 


 Summary
   ValueToVariable allow creation of variable Assignation before running the application or function. Creating a code evaluation it return in form of VAR1=${VAR1}  VAR2=${VAR2} Application ; Where VAR1,VAR2 will be already available inside nestled function or real-function . If the are made from Top-function, Shell command like declare make variable existing beyond Master Function Body, which overcrowding variable after death or termination of function uses if unset still existing and increase amount of memory without cleaning it. The mechanism is Filtering through and acting like Filter over Polish Notation Respect to enforce uses of Strict Notation to have an idea of their uses. Since Polish notation is adopted inside the Fnct.D, uses of evaluation brace to expand code inside function like BoolVarTest( newest version of BoolVarTestVarCreation) expanding Preambule-code, The If-N clause and it's Assertion code inside function to make parseable function to analyse it faster and discover bottle-neck by developping more assertion clause and action. ValueToVariable is madatory associated with  Prompt mechanism to pass the __main_StartServices and receive the authorized variable list. Must read inside Description most-standard case Prefixed Variable, describe most frequent uses of Prefixed-Variable for common task between Function. While Whitelist is an accute case to transfert External variable being recognized by the Shell, some function had becoming totally blind behind variable visibility, WhiteList is popular with compiler, link-edition and pre-processor application. 


 Description
   
 Comment over Obsolete Prefixed-Var
 They are not in effect and might be re-attributed. Initially work altogether VTVValueRe VTVIsTransformed were removed from prototype aka ancester of BoolVarTestVarCreation coming from old_var_fnct_lib. Where fews functions filters the contents of this function with 'declare -f' to inspect variable presence and create an assignation table, this was removed even from prototype having problems in handling the table correctly.

 Comment over VTVAppsScripter
 Default is Awk while some may like something else, it's also play with performance being AWK as long you define the VTVAppsParser, VTVScriptInterVar, VTVAppsScripterOpt, VTVITransformScript you can define application like Python,Ruby,Perl...

 Comment over VTVIsWhiteList
 For Unusual Variable name, and or information too-short for variable name, being consider like not so used but Lacking of Regularity in your code using not conformant Polish-notation variable Like Rachid1,Rachid2,Rachid3,RachidN, you must use WhiteList Option. Also same for uses of externals variable like CC,CFLAGS,LDFLAGS,GCC... These by-passing the Polish-notation filter and transfert-them after-filter Effect.


 Comment over VTVRejectionFilter
 Initially inside the ValueToVariable engine it filter VTVRejectionFilter, and after filter with VTVVarFilter and what failling remain inside WhiteList and wait if Option IsWhiteList is trigger.

 Comment over VTVIsArrayStyleInsert
 While Shell-Array are not totally recognized information inside array, Integer and STRING are taken together, if you do have problem in regard of integer being reported not like your design is thinked try to enforce a IF test with integer with forced value. Because ValueToVariable take individually elements and assign it before calling your function you do have more change to keep variable structure than creation an allocation-holder and calculating like registry access. Another case where Array are altering the information in regard of loosing the Interger value is the uses of Associative array. Index are STRING and content too. We do recommend also to profit from Getter in place inside function from Fnct.D Structure and adopt a recuperation methode through Getter. Default is False, but we recommend it to Set True form more than one Variable. Professionnal uses had enforced the uses of Variable Transfert holding name inside the Variable and call only this one ex, calling StrVarList=StrVar1,StrVar2 calling StrVarList inside VTVValueEntry does not need an Array Style Insert.

 Comment over VTVIsWhiteList
 Uses of Whitelist where some power mechanisme like compiler depend of variable like CFLAGS, LDFLAGS... do require it if your out of generating code from shell or out of main Function do require a function white list 

 Comment over VTVValueEntry Know Effect
 In many sub-function does prove there is no creation of variable but Assignation by-Recopy.

 Comment over VTVIsDebugDisplay
 While the mechanism can not be directly see from calling it directly from Command-Shell it get on with eval and it's optimized to work with simple Executive-Evaluative Brace only the DebugDisplay option will let you see the result. Information are ouputed on /dev/stderr.

 Comment over VTVIsTransHadScrip
  like Awk Script and it's a mechanism totally non-interactive ans pass-through do directly to this action, with dependancy of VTVITransformScript, VTVAppsScripter, VTVAppsScripterOpt, theses options are not certified yet.
 ValueToVariable Prefixed-Variable informations

 Boolean Notice Prefixed Variable:

 VTVIsArrayStyleInsert	Set True/False ArrayStyle is a declaration passed through a variable and fastest way to pass theses elements are with separator or common method is « Comma Separated Value ». Further Information seek second part.
 VTVIsTransformed	Set True/False Reserved and Obsoleted until all the function exception will be tested.
 VTVIsTransHadScrip	Set True/False This Prefixed-Variable is Unique and only accept VTVIsArrayStyleInsert and activate the uses of independent script.
 VTVIsDebugDisplay	Set True/False Allow outputing Debug Statement. 
 VTVIsSlowDebug		Set True/False This option is not improving Speed of your function and does slow-down the option DebugDisplay if you do have problem to filter All the Displayed Debug information.
 VTVIsValueToConvert	Set True/False Is mostly False, this Prefixed-variable allow variable having other name, and respectly have en entry and importance inside way variable are mangled, activating uses of VTVReasignPrefix, VTVReasignSuffix

 Important Notice, most-standard case Prefixed Variable:



 Important Notice, NonTrivial Prefixed Variable:

 VTVVarFilter		STRING Regular Expression, from Bash Expansion algorithm, mostly like regular expression, but not full-length regular expression.
 VTVRejectionFilter	STRING Regular Expression, from Bash Expansion algorithm Rejection filter is also know for what will remain inside WhiteList Option
 VTVIsWhiteList		STRING Separated with Comma is the exeption List to pass through .
 VTVITransformScript	STRINGScript Filename use inside VTVAppsScripterOpt under TAG __FILE__. Neglecting VTVAppsScripterOpt to own TAG __FILE__ will not work .
 VTVAppsScripter	STRING Default is /usr/bin/gawk
 VTVAppsScripterOpt	STRING Reserved for VTVAppsScripter or application wrap-up, handle most of variable call for an application wrapper.
 VTVScriptInterVar	STRING Repsonsible to answer to TAG __VAR_ASSIGN__ inside VTVAppsScripterOpt is a method transfering other variable with --assign from awk/gawk option look for awk manual for further information.
 VTVAppsParser	STRING It's TAG definition where __APPS__ is awk/gawk, any application and __OPT__. The __OPT__ is namespace for all Prefixed Variable VTVScriptInterVar, VTVAppsScripterOpt and VTVITransformScript.


 Important Notice, Obsoletes Prefixed Variable:

 VTVValueRe		Set True/False [INEFFECTIVE] Was working with VTVIsTransformed
 VTVIsTransformed	Set True/False [INEFFECTIVE] Was used in conjunction with VTVValueRe and require VTVValueEntry and does associate 1 on 1, so having to inspect the variable list to fit with element make a decision to remove the prototype from this function.



 Default Variable Value:
 Variable VTVValueRe ,
  Default Value:StrTestA_1,StrTestB_1,StrCTest1_1,StrDTest2_1,IntA_1,IntB_1,IsTestA_1,IsNotTestA_1
 Variable VTVValueEntry ,
  Default Value:StrTestA,StrTestB,StrCTest1,StrDTest2,IntA,IntB,IsTestA,IsNotTestA
 Variable VTVIsArrayStyleInsert ,
  Default Value:False
 Variable VTVSepList ,
  Default Value:",:"
 Variable VTVISeparatorType ,
  Default Value:0
 Variable VTVVarFilter ,
  Default Value:[SIB][tnos][a-zA-Z0-9_]*__SEP__
 Variable VTVRejectionFilter ,
  Default Value:[a-zA-Z0-9_]*
 Variable VTVIsWhiteList ,
  Default Value:False
 Variable VTVWhiteListTransfert ,
  Default Value:CFLAGS,LDFLAGS,CC,GCC,CPP
 Variable VTVIsValueToConvert ,
  Default Value:True
 Variable VTVIsValueReAssign ,
  Default Value:True
 Variable VTVReasignPrefix ,
  Default Value:None
 Variable VTVReasignSuffix ,
  Default Value:None
 Variable VTVIsTransformed ,
  Default Value:False
 Variable VTVIsTransHadScript ,
  Default Value:False
 Variable VTVIsDebugDisplay ,
  Default Value:False
 Variable VTVIsSlowDebug ,
  Default Value:False
 Variable VTVITransformScript ,
  Default Value:None
 Variable VTVAppsScripter ,
  Default Value:/usr/bin/gawk
 Variable VTVAppsScripterOpt ,
  Default Value:--field-separator=__SEP__ --file=__FILE__ __VAR_ASSIGN__ 
 Variable VTVScriptInterVar ,
  Default Value:--assign=__VAR__=__VALUE__
 Variable VTVAppsParser ,
  Default Value:__APPS__ __OPT__
 Following switch are available:

  --startservices	Start the application normally.
  --get		Return value of Internal Variable.
  --list		List all Internal Pre-fixed Variable available to query or get.
  --compword	Word Completion Provide a services to Extract on Demand all Pre-fixed Variable
   \String inside this function.


Also available a command-line example to verify your informations :

.. code:: shell

  ### By default it's already version 0.0.2 effective by calling 
  ### . /etc/init.d/Fnct.D/fnct_debian_lib, but I will let you see
  ### what's wrong by calling it vtvVersion=0.0.1 . /etc/init.d/Fnct.D/fnct_debian_lib
  ### It calling Chunk /etc/init.d/Fnct.D/482e0e5a-763b-11e6-8b1d-001e4c8856d6 
  ### with old version of ValueToVariable, to tell me more what's wrong , study it-up and 
  ### and write me down by mail. 
  vtvVersion=0.0.2 . /etc/init.d/Fnct.D/fnct_debian_lib ; VTVIsValueToConvert=False VTVIsTransHadScript=False VTVIsValueReAssign=True VTVIsDebugDisplay=True VTVValueEntry=oolDisplayFnctD,CCFLAG,StrUrlGetter,BoolEvalCmdExit,StrAppsPwdGenerator,IntDefaultPwdSize,LDFLAGS,IntDefaultFactor,Ldflags,IntRandomSeedFactor,GCC,CC,CXX,CPP,StrPasswordTypeForm,IntPasswordType,IsAutoInstallPwgen,StrDebInstallMethod,StrDebianInstallerType,StrAptLineCmd,StrGdebiPackageName,StrGdebiDownloadPack,StrFnctDSvrBVTVC ValueToVariable 

And following comment are DebugDisplay showing you Step-by-Step the treatment of your 
request. 

.. code:: shell

 DEBUG-VarFilter:[ Application is Transforming Variable during passing-thru action. ]
 DEBUG-VarFilter:[ Application Does not depend of a table-of Reassignation see VTVValueRe  ]
 DEBUG-VarFilter:[ Initial Variable List: BoolDisplayFnctD,CCFLAG,StrUrlGetter,BoolEvalCmdExit,StrAppsPwdGenerator,IntDefaultPwdSize,LDFLAGS,IntDefaultFactor,Ldflags,IntRandomSeedFactor,GCC,CC,CXX,CPP,StrPasswordTypeForm,IntPasswordType,IsAutoInstallPwgen,StrDebInstallMethod,StrDebianInstallerType,StrAptLineCmd,StrGdebiPackageName,StrGdebiDownloadPack,StrFnctDSvrBVTVC  ]
 DEBUG-VarFilter:[ Initial Filter To Split Member between Separator ',' : '[SIB][tnos][a-zA-Z0-9_]*,'  ]
 DEBUG-VarFilter:[ New Entry:StrFnctDSvrBVTVC ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:StrGdebiDownloadPack ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:StrGdebiPackageName ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:StrAptLineCmd ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:StrDebianInstallerType ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:StrDebInstallMethod ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:IsAutoInstallPwgen ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:IntPasswordType ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:StrPasswordTypeForm ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:CPP ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:CPP ]
 DEBUG-VarFilter:[ New Entry:CXX ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:CXX ]
 DEBUG-VarFilter:[ New Entry:CC ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:CC ]
 DEBUG-VarFilter:[ New Entry:GCC ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:GCC ]
 DEBUG-VarFilter:[ New Entry:IntRandomSeedFactor ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:Ldflags ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:Ldflags ]
 DEBUG-VarFilter:[ New Entry:IntDefaultFactor ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:LDFLAGS ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:LDFLAGS ]
 DEBUG-VarFilter:[ New Entry:IntDefaultPwdSize ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:StrAppsPwdGenerator ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:BoolEvalCmdExit ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ New Entry:StrUrlGetter ]
 DEBUG-VarFilter:[ Pass1 PolishNoted variable rejected:None ]
 DEBUG-VarFilter:[ No New Separator ',' found inside Parsing String. ]
 DEBUG-VarFilter:[ Reached end of StrParserList. ]
 VERBOSE:[ Rejection List Parser:CPP CXX CC GCC Ldflags LDFLAGS ]
 DEBUG-VarFilter:[ Variable Parser:StrFnctDSvrBVTVC=${StrFnctDSvrBVTVC} StrGdebiDownloadPack=${StrGdebiDownloadPack} StrGdebiPackageName=${StrGdebiPackageName} StrAptLineCmd=${StrAptLineCmd} StrDebianInstallerType=${StrDebianInstallerType} StrDebInstallMethod=${StrDebInstallMethod} IsAutoInstallPwgen=${IsAutoInstallPwgen} IntPasswordType=${IntPasswordType} StrPasswordTypeForm=${StrPasswordTypeForm} IntRandomSeedFactor=${IntRandomSeedFactor} IntDefaultFactor=${IntDefaultFactor} IntDefaultPwdSize=${IntDefaultPwdSize} StrAppsPwdGenerator=${StrAppsPwdGenerator} BoolEvalCmdExit=${BoolEvalCmdExit} StrUrlGetter=${StrUrlGetter} BoolDisplayFnctDFLAG=${BoolDisplayFnctDFLAG} ]


:Note: 822d36e2-6517-11e6-98a2-001e4c8856d6
:Title: Recurrent call in GetUUID Not dangerous and uses isolated Arrays formation 
:Reference: A must in saving memory. 
:Function: GetUUID

While GetUUID will demonstrate TWO Mechanism to accheive registration requires in uses of fifo for talking engine and  command socket used soon by Python Twisted module develpped under SSHServices-request.py ; Mechanism from apriori goal to provide UUID and ultimately to register it, will provide it by connect to a socket server and ask UUID with automagically registration thru ssh command lunching . Will own mechanism to do itself the registration wityh SQlite3 database access, and really provide like essential UUID data as required. Notice since that UUID-TAG added, the interface provide a Verbosis sub function where it's possible to provide a fainth and painless String of Text from an Array inside a sub-function where the connection to the Array is not possible to access.

.. code:: shell

 ### Part of the beginning of the GetUUID Function

 unset GetUUID 
 function GetUUID ()
 {
  local __call_locality=( GetU GetUUID ) ;
  local ArrayArg=( $* ) ; 
  local Arg0=${ArrayArg[0]} ;

  ### Section for GetUUID generation of UUID uniquely.
  local BoolTimeBased=${GetUTimeBased:=True}
  local BoolLoop=${GetULoop:=False} ;
  local IntSeqLoop=${GetUSeq:=1} ; 
  local IsVerbosis=${GetUVerbosis:=False} ;
  local StrUUIDActionName=${GetUActionFunc:=UUIDNoLoop,UUIDLoop} ;

  ### Section for GetUUID Registration with UUID.
  local StrDbURI=${GetUDBPath:=/var/cache/Fnct.D/db/sqlite/GetUUID.sqlite}
  local StrDbSchema=${GetUDBSchema:=/etc/init.d/Fnct.D/getUUID.schema}
  local BoolCallRegistered=${GetUIDRegister:=False}; 
  local StrAppsRegister=${GetUAppsRegisterName:=None};
  local StrUUIDIndexName=${GetUIDName=.GetUUID};

  local StrGetHelperName=${GetUHelperName:=UUIDHelper} ;
  local StrUUIDHelperStream=${GetUHelper:=UUIDHApps= UUIDHSwitches= __HELPERNAME__} ; 
  local TypeAppsName=${GetUAppsDef:=__HELPERNAME__ --get UUIDHApps}
  local IsUUIDDbCreation=${GetUDBCreation:=False};
  local IsUUIDDbImport=${GetUDbImport:=False};
  local StrAppsNameCall=${TypeAppsName//__HELPERNAME__/${StrGetHelperName}} ; 
  local StrAppsName=$( ${StrAppsNameCall} ) ; 
  local StrMsg ; 
  local ArrayMsg=( ) ; 

  ArrayMsg[0]="UUID StrAppsName: __NAME__" ;
  ArrayMsg[1]="UUID LOOPSEQ: __SEQ__" ;
  ArrayMsg[2]="UUID HELPER: __UUIDHELPER__\n"
  ArrayMsg[3]="UUID __main_StartServices: content of StrUUIDHelper:[__UUIDHELPER__]" ; 
  ArrayMsg[4]="UUID ACTION: __ACTION__" ;
 ...
 } 
 
 Last line consacred to the Array, show some StringText with TAG. And mabe later retreiving the whole Array of text into Converged system to provide language conversion will start in this way to centralize and provide a Getter. But Where is the promised Getter ? 
 
.. code:: shell

 function __main_StartServices()
 {
		local __call_locality=( Main __main_StartServices ) ;
		local Arg0=${ArrayArg[0]} ;
		local ArrayArg=( $* ) ; 
  local IntUUIDHelperIndex=0 ;
  local StrUUIDOption="" ;
  local StrUUIDHelper=""
  local StrAction=""
  local ArrayMsg=( ) ;
  ### Array conversion from StrUUIDActionName, using string delimiter char ',' ; 
  local ArrayUUIDAction=( ${StrUUIDActionName//,/ } ) ; 
  local IntUUIDActionIndex=0 ; 

  if [ "${BoolTimeBased:=True}" == "True" ] ; then 
   StrUUIDOption="-t"
  else 
   StrUUIDOption="-r"
  fi 
  StrUUIDHelper=${StrUUIDHelperStream} ; 
  StrUUIDHelper=${StrUUIDHelper//UUIDHSwitches=/UUIDHSwitches=${StrUUIDOption}}  ;
  #StrUUIDHelper=$( eval ${StrUUIDHelperStream} ) ; 
  ###ArrayMsg[1]="UUID __main_StartServices: content of StrUUIDHelper:[${StrUUIDHelper}]" ; 
  StrMsg=${ArrayMsg[3]//__UUIDHELPER__/${StrUUIDHelper}}
  VerbState=${IsVerbosis} VerbMsg=${StrMsg} Verbosis;
  #echo -ne "[UUID __main_StartServices: content of StrUUIDHelper:[${StrUUIDHelper}]]\n" > /dev/stderr 

  if [ "${BoolLoop:=False}" == "True" ] ; then 
   IntUUIDHelperIndex=1 ;
   IntUUIDActionIndex=1 ; 
  else 
   IntUUIDHelperIndex=0 ; 
   IntUUIDActionIndex=0 ; 
  fi 
  StrAction=${ArrayUUIDAction[${IntUUIDActionIndex}]} ; 
  #ArrayMsg[2]="UUID ACTION: ${StrAction}" ;
  StrMsg=$( GetUUID --get ArrayMsg[4] )
  StrMsg=${StrMsg//__ACTION__/${StrAction}} ;
  ### VerbState=${IsVerbosis} 
  VerbHeader="DEBUG" VerbState=True VerbMsg=${StrMsg} Verbosis;

It start from sub-function __main_StartServices, we see, old comment where the old ArrayMsg was used and we do see something like this :

.. code:: shell
  StrMsg=$( GetUUID --get ArrayMsg[4] )
  StrMsg=${StrMsg//__ACTION__/${StrAction}} ;
  ### VerbState=${IsVerbosis} 
  VerbHeader="DEBUG" VerbState=True VerbMsg=${StrMsg} Verbosis;

The Getter is the whole function. Notice it important to reduce heading from beginning of the function, but The Fnct.D design does include a one pass IF-ELIF-ELIF at the beginnin

:Note: ed9452da-6517-11e6-98a2-001e4c8856d6
:Title: Talk about Attribution of Twisted Network Programming Essentials 
:Function: SSHServices-request.py

It's Essential to talk about Attribution of Second Edition by Jessia McKellar and Abe Fettig (O'reilly) Copright 2013 Jessica McKellar using ISBN 978-1-4493-2611-1, to provide information on HowTo Start your engine correctly. There is ton of other starter for initiating engine simply and this is why I do beleive retreive information from and Open Standars rather prettenting copying informations . I do implement my decorator and my staticclass and my own topology to code essential of Shell command used by half automated-finite engine have strict goal to acheive and having later tools to inspect information. It's important to find good Network Programming Source-of-interest to evolve in compuware and diags-middle-ware. My README for Fnct.D for God is nothing more than a CRAN diagnostic quoted remark to develop a real important JOKE in real life. We do develop ironic statement out Ingenior work and asking why our stuff is falling down. It's important to prone for clear Dialectic inward to reduce problems for ever... 

:Note: 007250e2-842a-11e6-8b1d-001e4c8856d6
:Title: The Common __TAG__ replacement inside a String into Variable Name executed as-in your function call.
:Function: TagPArser


TagParser
~~~~~~~~~

Common High-Level Struture imply uses of __TAG__, it replace presence of variable and are always associated with Templating. Coming with story of Word Perfect artefact to replace __TAG__ in multi-letter header, it have move to a WordProcessor the era to develop steady Text with alteration like Topic, Date, User dedicated or even Page number are today know TAG equivalent. Modern programing had greatly move toward Templating the Text to allow it's conversion to other Language or tongue. Had move to generalistic expression of the information to let the Template be more genral and more uniform to even generate universal template. Other side of publishing is HTML side which an adapted version of XML and is dedicated to Uniform publishig of about any form of information. XML becoming Greater by it's expression it under the hood we do understand it's power. Codeability of the XML will be reache when a __TAG__ does express is formal conception to had limit and beyond that limit it'd more important to specify other alternative to denote efficiently the content... At this stage we do have to present you the canvats-set and it's mutability but starting with this function because we haven't filled all the appropriate function to explain a Double-dictionnary of event and relation being muted into one intrinsict action to be the sets of required informations showed and products asked. TagParser is a tools to allow muting information faster than only create a by-hand with String and command dependant from Variable. TAG-set are not altering the state odf your function if they are not parsed it's the final result that won't be showed you and will not display Error. Having Command line filled of missing informations and variable will pop's you error when a command is issued. Generally moved to Array of information created at the beginning of a function you can store the whole Text and putting TAG where result one compiled will be see. TagParser does this type of operation, Getting To litteratly transfer a compiled informations into living Variable-name in uses and some function dependent of it will be cumuled to show you example, look at first sight the helper now inclusing Name Helper, Synopsis, Summary, and Description with Prefixed-Variable notice you are now able to understand the the variable uses and code by yourself.

.. code:: shell

  Help:

  Function TagParser
  Name
  Tag Parser	 Ability To parse tagged Information from known varable name.


  Synopsis
    This is a simple application to provide to function conversion of String of text with Tag ( noted __TAG__ by default ). 


  Summary
    Providing a Text transformation from provided varaible name inside  parameter. Content expect to exist inside a function, this is a provided evaluation of a loop transformaing an Entry variable name from tag supplied. Noted the evaluation brace is required, a.k.a $( TP...=... eval TagParser ) to add the code directly inside your function. The mechanism allow uses of definied array of desired scope type it is not desctructive for array and does not give the destruct code for Variable name such Array inside Prefixed-Variable TPArrayName.


  Description
    
  Parser notice

    TPListTag	STRING Depending of the Prefixed Variable TPIsMatchRtoL it taking form VARIABLE:__TAG__ and are comma separated value
    TPArrayName	STRING Falcutative depending the number of reccurrence of the Parser not executed and may interfer if the Parser Code is mangled and if extended Choice are affected to erase the unset at the end. Sometimes the array name can already be in uses and may affect your operation.

    TPIterNameVar	STRING Falcutative, change the String-Iterated item looped inside the Array.
    TPVarNameParsed	STRING Is the entry varaible holding the CODE/Template with __TAG__ to be parsed. We advise using a copy of this Variable because it re-write the content of it.
    TPScopeVar	STRING and can be single-quoted STRING, Inside function 'local' is important or your function will use external variable. making it public or external use declare instead.

    TPLeftStrPtrn	STRING Regular expression from Variable substitution algorithm, it remove the Left Side to kept the right side Be careful with this.
    TPRightStrPtrn	STRING Regular expression from Variable substitution algorithm suppress the __TAG__ form to keep the variable name usually, becarefull uses  and  method see in Bash document.

  Boolean variable notice:

    TPIsMatchRtoL		Set To True/False Invert Composition of tag in your design, Set to TRUE Variable in TPListTag required to be composed in form VARIABLE:__TAG__, if FALSE in form __TAG__:Variable

    TPDisplayDebug		Set To True/False Display Extra Debug during action, all outputed to /dev/stderr to not confuse the parser.
    TPDisplayEvalOnly	Set To True/False Allow displaying the Injected code in eval function using the Tag Parser.
    TPDisplayParserNotice	Set To True/False For function equiped of a Verbosis see fnct_debian_list for Verbosis example and will display by Tag pair the result the exanche and actual qiery it should happen after the Parsing.



  Default Variable Value:
  Variable TPListTag ,
   Default Value:StrA:__TAGA__,StrB:__TAGB__,IntA:__INT__
  Variable TPArrayName ,
   Default Value:ArrayTagParser
  Variable TPIterNameVar ,
   Default Value:TagParser
  Variable TPLeftStrPtrn ,
   Default Value:'[SIB][tnos][a-zA-Z0-9_]*:'
  Variable TPRightStrPtrn ,
   Default Value:':__[A-Za-z0-9_,]*'
  Variable TPScopeVar ,
   Default Value:local
  Variable TPVarNameParsed ,
   Default Value:StrVarEntry
  Variable TPIsMatchRtoL ,
   Default Value:True
  Variable TPDisplayDebug ,
   Default Value:False
  Variable TPDisplayEvalOnly ,
   Default Value:False
  Variable TPDisplayParserNotice ,
   Default Value:False
  Following switch are available:

   --startservices	Start the application normally.
   --get		Return value of Internal Variable.
   --list		List all Internal Pre-fixed Variable available to query or get.
  	--compword	Word Completion Provide a services to Extract on Demand all Pre-fixed Variable
		  \String inside this function.


To understand it's action here couple of line and it's result in Full-Debug Mode, TagParser does include 3 Debug statement that include, To display couple of Verbose line during the PArsing ; Parsing but not execute the statement, Let the Created Code one executed from your function point-of-insertion speak for himself and tell it's suppose to found by Match Sequence. The last one as debug called Prefixed-Variable TPDisplayParserNotice require you setup a descent Verbosis function. There is many Verbosis function not to be annoying amoung function and not to fall on construction of expanding Main Verbosis function. But Future tell Registrer like In-code building on calling it and die on exit of this function will never show the informations about Verbosis inside a code source and avoid Program-Parser deeping inside the Verbosis uselessly. Visible by `declare -f` as well. 

.. code:: shell

  ### 
  ### From function ZenityContent Listing 
  ###
  StrZenityFilterCmd="""eval \$( VTVIsArrayStyleInsert=True VTVValueEntry=${StrVarList} VTVIsValueReAssign=True VTVIsValueToConvert=False VTVIsArrayStyleInsert=True ValueToVariable ) ZenityFilter ; """ ; 

  StrMsg="ZenityFilter Should return This command-line: __CMD__" ;
  VerbMsg=${StrMsg//__CMD__/${StrZenityFilterCmd}} VerbHeader="DEBUG-${__call_locality[1]}" VerbFormated=True VerbState=True StrDevOut=/dev/stderr Verbosis

  StrSelectionCmd="""StrUserSelection=\$( zenity --width=__WIDTH__ --height=__HEIGHT__ --list --title \"${StrTitle}\" --column=\"${StrCol0}\" --column=\"${StrCol1}\" __LIST_TYPE__ \$( __ZenityFilter__  ) )""" ;

  eval StrTagParser=$( TPVarNameParsed="StrSelectionCmd" TPDisplayParserNotice=True TPIsMatchRtoL=True TPDisplayDebug=True TPArrayName=ArrayGPUTag TPListTag="${StrTagEntry}" TagParser ) ; 
  local IRet=$? ;  
  StrMsg="Return Status of IRet: __IRET__,\nStrTagParser:__PARSER__\nStrSelectionCmd: __STR__" ;

.. code:: shell

  ###
  ### Does Make All this verbose before poping you the Zenity-List Window :
  ###
  ###
  DEBUG-ZenityFileReader:[ ZenityFilter Should return This command-line: eval $( VTVIsArrayStyleInsert=True VTVValueEntry=StrAppsName,StrTagEntry,StrParentApps,IntWidth,IntHeight,StrTitle,StrCol0,StrCol1,StrDefaultCSV,IntDefaultColExtr,StrFileInfo,StrRegSearch,BoolShowUserSelection,BoolCheckList,BoolCheckListMulti,StrVarList VTVIsValueReAssign=True VTVIsValueToConvert=False VTVIsArrayStyleInsert=True ValueToVariable ) ZenityFilter ;  ]
   : command not found
  DEBUG:__main_StartServices:[ CmdLine: local StrPairLeft ; 
    local StrPairRight ; 
    local ArrayGPUTag=( StrAppsName:__APPS__ StrZenityFilterCmd:__ZenityFilter__ IntWidth:__WIDTH__ IntHeight:__HEIGHT__ StrTypeListOpt:__LIST_TYPE__ ) ; 
    local StrMsg="PairLeft: __LEFT__, PairRight: __RIGHT__, Query: __QUERY__" ; 
    for TagParser in ${ArrayGPUTag[@]}  ; do 
      AStrMsg="${StrMsg}" ;
      StrPairRight="${TagParser/#[SIB][tnos][a-zA-Z0-9_]*:/}" ; 
      StrPairLeft="${TagParser/%:__[A-Za-z0-9_,]*/}" ; 
      AStrMsg=${AStrMsg//__LEFT__/${StrPairLeft}} ;
      AStrMsg=${AStrMsg//__RIGHT__/${StrPairRight}} ;
      AStrMsg=${AStrMsg//__QUERY__/${StrSelectionCmd}} ;
      VerbMsg=${AStrMsg} VerbHeader=TAGPARSER VerbState=True VerbFormated=True VerbDev=/dev/stderr Verbosis ; 
      eval StrSelectionCmd=\${\StrSelectionCmd//${StrPairRight}/\${${StrPairLeft}}}  ; 
    done ; 
    unset StrPairRight StrPairLeft ArrayGPUTag ; ]
  StrPairLeft: command not found
  TAGPARSER:[ PairLeft: StrAppsName, PairRight: __APPS__, Query: StrUserSelection=$( zenity --width=__WIDTH__ --height=__HEIGHT__ --list --title "Select a user for __APPS__" --column="selection" --column="user" __LIST_TYPE__ $( __ZenityFilter__  ) ) ]
   |
 +-+--------------> ***Here the verbose action from Prefixed Variable  TPDisplayParserNotice ***
 | |
 |TAGPARSER:[ PairLeft: StrZenityFilterCmd, PairRight: __ZenityFilter__, Query: StrUserSelection=$( zenity --width=__WIDTH__ --height=__HEIGHT__ --list --title "Select a user for Application" --column="selection" --column="user" __LIST_TYPE__ $( __ZenityFilter__  ) ) ]
 | 
 | 
 +TAGPARSER:[ PairLeft: IntWidth, PairRight: __WIDTH__, Query: StrUserSelection=$( zenity --width=__WIDTH__ --height=__HEIGHT__ --list --title "Select a user for Application" --column="selection" --column="user" __LIST_TYPE__ $( eval $( VTVIsArrayStyleInsert=True VTVValueEntry=StrAppsName,StrTagEntry,StrParentApps,IntWidth,IntHeight,StrTitle,StrCol0,StrCol1,StrDefaultCSV,IntDefaultColExtr,StrFileInfo,StrRegSearch,BoolShowUserSelection,BoolCheckList,BoolCheckListMulti,StrVarList VTVIsValueReAssign=True VTVIsValueToConvert=False VTVIsArrayStyleInsert=True ValueToVariable ) ZenityFilter ;   ) ) ]
 | 
 | 
 +TAGPARSER:[ PairLeft: IntHeight, PairRight: __HEIGHT__, Query: StrUserSelection=$( zenity --width=400 --height=__HEIGHT__ --list --title "Select a user for Application" --column="selection" --column="user" __LIST_TYPE__ $( eval $( VTVIsArrayStyleInsert=True VTVValueEntry=StrAppsName,StrTagEntry,StrParentApps,IntWidth,IntHeight,StrTitle,StrCol0,StrCol1,StrDefaultCSV,IntDefaultColExtr,StrFileInfo,StrRegSearch,BoolShowUserSelection,BoolCheckList,BoolCheckListMulti,StrVarList VTVIsValueReAssign=True VTVIsValueToConvert=False VTVIsArrayStyleInsert=True ValueToVariable ) ZenityFilter ;   ) ) ]
 | 
 | 
 +TAGPARSER:[ PairLeft: StrTypeListOpt, PairRight: __LIST_TYPE__, Query: StrUserSelection=$( zenity --width=400 --height=500 --list --title "Select a user for Application" --column="selection" --column="user" __LIST_TYPE__ $( eval $( VTVIsArrayStyleInsert=True VTVValueEntry=StrAppsName,StrTagEntry,StrParentApps,IntWidth,IntHeight,StrTitle,StrCol0,StrCol1,StrDefaultCSV,IntDefaultColExtr,StrFileInfo,StrRegSearch,BoolShowUserSelection,BoolCheckList,BoolCheckListMulti,StrVarList VTVIsValueReAssign=True VTVIsValueToConvert=False VTVIsArrayStyleInsert=True ValueToVariable ) ZenityFilter ;   ) ) ]
  DEBUG-ZenityFileReader:[ Return Status of IRet: 0,
  StrTagParser:
  StrSelectionCmd: StrUserSelection=$( zenity --width=400 --height=500 --list --title "Select a user for Application" --column="selection" --column="user" --radiolist $( eval $( VTVIsArrayStyleInsert=True VTVValueEntry=StrAppsName,StrTagEntry,StrParentApps,IntWidth,IntHeight,StrTitle,StrCol0,StrCol1,StrDefaultCSV,IntDefaultColExtr,StrFileInfo,StrRegSearch,BoolShowUserSelection,BoolCheckList,BoolCheckListMulti,StrVarList VTVIsValueReAssign=True VTVIsValueToConvert=False VTVIsArrayStyleInsert=True ValueToVariable ) ZenityFilter ;   ) ) ]
  DEBUG-ZenityFileReader:[ After TagParser Action: value of StrSelectionCmd:[ StrUserSelection=$( zenity --width=400 --height=500 --list --title "Select a user for Application" --column="selection" --column="user" --radiolist $( eval $( VTVIsArrayStyleInsert=True VTVValueEntry=StrAppsName,StrTagEntry,StrParentApps,IntWidth,IntHeight,StrTitle,StrCol0,StrCol1,StrDefaultCSV,IntDefaultColExtr,StrFileInfo,StrRegSearch,BoolShowUserSelection,BoolCheckList,BoolCheckListMulti,StrVarList VTVIsValueReAssign=True VTVIsValueToConvert=False VTVIsArrayStyleInsert=True ValueToVariable ) ZenityFilter ;   ) ) ] ]
  __TEXT__
  
The Next Function will be delivered soon and is an helper feeding informations to complex function.

.. code:: shell

  ### 
  ### From function ZenityPrefixedVarSelection
  ###
  local StrZenityListBuild=$( eval $( VTVValueEntry=${StrVarList} VTVIsArrayStyleInsert=True VTVIsValueReAssign=True VTVIsValueToConvert=False ValueToVariable  ) BuildListInformation ) ; 
  StrMsg="Zenity List Value CmdLine: ${StrZenityListBuild}\n" ; 
  VerbMsg="${StrMsg}" VerbDev=/dev/stderr VerbState=True VerbFormated=True VerbHeader=${__call_locality[1]} Verbosis
  
  local StrCmdLine="${StrZenityListParser}" ;
   
  StrMsg="Zenity List CmdLine: ${StrCmdLine}\n" ; 
  VerbMsg="${StrMsg}" VerbDev=/dev/stderr VerbState=True VerbFormated=True VerbHeader=${__call_locality[1]} Verbosis
  ### Section using TagParser to Replace __TAG__ by Variable Name. 
  eval $( TPIsMatchRtoL=True TPDisplayDebug=True TPArrayName=ArrayZPVSTag TPVarNameParsed="StrCmdLine" TPListTag="${StrTagList}" TagParser ) ; 
  # eval "${StrTagCmdLine}" ;  
  
  StrMsg="Parsed Zenity List CmdLine: ${StrCmdLine}\n" ; 
  VerbMsg="${StrMsg}" VerbDev=/dev/stderr VerbState=True VerbFormated=True VerbHeader="${__call_locality[1]}-CMDLINE" Verbosis
  
  eval """${StrCmdLine}""" ; 
  
  ### 
  ### Output Generated Skipped. 
  ###



:Note: a887bb9e-9188-11e6-8b1d-001e4c8856d6
:Title: First Type Function for Helper and Storage of multiple-state and form of result. 
:Method: General Parser Infrastructure with repository creation. 
:Function: GnrlPrsrInfctr
:Reference: Implementation. 
:Reference: Development

GnrlPrsrInfctr
~~~~~~~~~~~~~~

This function will appear in late version 0.0.1 effort of Fnct.D  and version 0.0.2 of Fnct.D after 
validating all test inside error-fix.txt in many state this function may offert. State of result are 


commonly a result WHERE: 
 
- IT uniformely depend of an application offering information and REQUIRE to obtain a sub-set of  this result. 
- A result from the parser is not it's result itself. 
- Once parsed it CAN either be stored for later uses or reference. 
 - Stored for uses imply evaluating a result or simple get the answer inside an automated engine producing result to be observed . 
- The pared result it at first a command line know to be visible and having acheived it's variable and/or tag association from a variable result. 
- The General Parser Infrastructure is able to define it's action with prefixed-varaible to :
 - Execute the command-line parsed.
  - result from Executed command line can either be displayed or be stored. 
  - By DISPLAY it come in form of text from Standard output line and offert a windows form called Zenity windows management tool rich in windows-widget format to provide to user of Gtk, Mate, and compatible form of Windows manager to support Zenity offering a text-field with ability to display the result. 
  - by STORING the content it's stored belong to parameter passed to the application where initial form invite to create a repository and keep this information here. Management of this repository is not the intended task of 'GnrlPrsrInfctr' but do have something with repository Creation. 
  - by STORING the information , the mechanism allow to get the result from THIS location and SHALL have a mechanism explained to get this informations.  
 - Generate code know to be the command-line parsed . 
 - Since this application is designed in a wider plan it was designed to generate-only and offer to code genration, ability to put this element inside a variable and this finite information is executable afer many uses, as long the life-cycle of the application as not reached the end. 
 
 
This variable is defined by the Parameter to the application to pass to ensure an existance over execution of GnrlPrsrInfctr.  
 
- The General Parser Infrastructure DOES NOT control right of uses of this command line and generated code from IT's action and require your own knowledge of your environment to prepend SUDOER command allowing the execution being correctly done. 
- The General Parser Infrastructure DOES own minimalistic language and having Strict uses of variable representation inside it's Definisor called Template entry and Template Feeder and uses of a Master dictionnary which is open to the application and yield by the command-line, Strictness of oblitering one WORD from this dictionnary is responsible to broke the engine and not offering the capability developped. 
 - The Dictionnary start with the word and required Pipe word and this is equivalent to 'COMMAND | COMMAND' and this word start with definition of existing from variable 'StrDefaultPipe' which is the definition. The definition extension for some Entrant like file for Filter operation or existing inside the dictionnary under name __FILE__ where it's definition exist inside StrFileName and are managed twice with GPIFilterOpt which is name inside a Pre-fixed variable and does not broke the engine IF and ONLY IF specification of name __FILE__ is not used or usefull.
- The General Parser Infrastructure minimalistic can brought from Prefixed-List if variable and do accept to  add definition to  it's  dictionnary  template and  do have to handle  this to  extend it's parsing knowledge.
- The General Parser Infrastructure minimalistic language come from ancestor application name TagParse, and it's Template engine is similar to know writing Dictionnary/Template DOES own a Specification also available inside this document to inform how this Library work. 
  
  
In  Second  The General Parser Infrastructure , call Type Function  'GnrlPrsrInfctr'  having  another structure  where  I call it  'Infrastructure' for  owning ability  to create a Repository to  hold the information  if a Project or Structure bigger than one function does  require a Physical  location  to store  information  for logging  the action  and/or  storing FAST-FILE-STORAGE  method for  recurrent information uses. And This infrastructure come with appropriate SUDOER command and do require extra paramter to add to the Pre-fixed list of variable to create secure and well formed environement. 
 
Information from command-shell Helper : 

.. code:: shell

  Help:

  Function GnrlPrsrInfctr
  Name
  GnrlPrsrInfctr	Stand for General-Parser-Infrastructure ; The Fnct.D Mechanism Parsing single function call or piped function and even multi-piped function with conjunction of TagParser. 


  Synopsis
    Soon to fill it with lot of informations


  Summary
    This TagParser for single function, piped-function and Nth-piped function is coming with Repository to log result from GnrlPrsrInfctr and Parser engine is equiped of a ParserFeeder to append Variable And Tag to know GDITagParser. The main goal of this Function is to profit from Entry of variable from command-line entry and to use extra TAG binded to Variable-name added to let it parse the rest of the information and thus will be explained.


  Description
    Having surdose of informations, skip this part...


  Default Variable Value:
  Variable GPIFuncStart ,
   Default Value:__main_StartServices
  Variable GPITpl ,
   Default Value:__APPS__ __APPS_OPT__ __PIPE__ __FILTER__ __FILTER_OPT__
  Variable GPIApps ,
   Default Value:/usr/bin/dpkg
  Variable GPIAppsOpt ,
   Default Value:--get-selections
  Variable GPIFilterApps ,
   Default Value:/usr/bin/gawk
  Variable GPIFileName ,
   Default Value:None
  Variable GPIFilterOpt ,
   Default Value:-f __FILE__
  Variable GPITagParser ,
   Default Value:StrDefaultPipe:__PIPE__,StrApps:__APPS__,StrAppsOpt:__APPS_OPT__,StrFilterApps:__FILTER__,StrFilterOpt:__FILTER_OPT__,StrFileName:__FILE__
  Variable GPITagFeeder ,
   Default Value:''
  Variable GPITagParserResult ,
   Default Value:StrCmd
  Variable GPITUUIDName ,
   Default Value:UUID
  Variable GPIPipeSig ,
   Default Value:|
  Variable GPIVerboseDev ,
   Default Value:/dev/stderr
  Variable GPIFontSize ,
   Default Value:10
  Variable GPIOutFile ,
   Default Value:.GnrlPrsrInfctr
  Variable GPIDisplayDebug ,
   Default Value:False
  Variable GPIIsUUIDInstance ,
   Default Value:False
  Variable GPIIsGenerateCode ,
   Default Value:False
  Variable GPIIsZenityHandlerOut ,
   Default Value:False
  Variable GPIIsFileHandlerOut ,
   Default Value:False
  Variable GPIIsExecuteEval ,
   Default Value:True
  Variable GPIRepoCreatEnabled ,
   Default Value:True
  Variable GPIParserDebug ,
   Default Value:False
  Variable GPIRepositoryCreation ,
   Default Value:False
  Variable GPIParserMkdir ,
   Default Value:StrAppsSudo:__SUDO__,StrAppsSudoOpt:__OPT__,StrAppsMkdir:__APPS__,StrRepositoryQuery:__PATH__,StrAppsMkdirOpt:__APPS_OPTS__
  Variable GPIParserChmod ,
   Default Value:StrAppsSudo:__SUDO__,StrAppsSudoOpt:__OPT__,StrAppsChmod:__APPS__,StrRepositoryQuery:__PATH__,StrDefaultPerm:__PERM__
  Variable GPIParserChown ,
   Default Value:StrAppsSudo:__SUDO__,StrAppsSudoOpt:__OPT__,StrAppsChown:__APPS__,StrRepositoryQuery:__PATH__,StrDefaultUser:__OWNER__
  Variable GPIGroupParserPrefix ,
   Default Value:StrTagRepo
  Variable GPIQueryRepository ,
   Default Value:/var/log/Fnct.D/GnrlPrsrInfctr
  Variable GPIRepoUser ,
   Default Value:user.root
  Variable GPIRepoPerm ,
   Default Value:775
  Variable GPIAppsSudo ,
   Default Value:/usr/bin/sudo
  Variable GPIAppsSudoOpt ,
   Default Value:-s -H
  Variable GPIAppsMkdir ,
   Default Value:/bin/mkdir
  Variable GPIAppsMkdirOpt ,
   Default Value:-p
  Variable GPIChown ,
   Default Value:/bin/chown
  Variable GPIChmod ,
   Default Value:/bin/chmod
  Variable GPIAppsProvide ,
   Default Value:RepositoryCreation
  Following switch are available:

   --startservices	Start the application normally.
   --get		Return value of Internal Variable.
   --list		List all Internal Pre-fixed Variable available to query or get.
   --compword	Word Completion Provide a services to Extract on Demand all Pre-fixed Variable
    \String inside this function.
 
  
:Note: e2382694-0ba3-11e3-98a2-001b3875b29c
:Title: Usual Shell Chunk-Development.
:Function: ZenityShellEval


ZenityShellEval
~~~~~~~~~~~~~~~

.. code:: shell

  Full-length example : 
  Including 1 example :
  $> ZenityShellEval (Enter)

- It Open Windows from Zenity with parameter for Text-info in editable
mode.

See the image 

.. image:: http://4.bp.blogspot.com/-UGYpVcrcNxo/UhPOsCBfCaI/AAAAAAAAAFA/7VHwjDj1TsM/s1600/ZenityShellEval.png
        :target: https://github.com/priendeau/Fnct.D#ZenityShellEval

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

ZenityBuildForm
~~~~~~~~~~~~~~~

Sometimes Hacked Things are miss used term. Having ZenityBuildForm fall in the middle of the development is having unattended result over 2 sets of hack inside Fnct.D, the evaluation-executive brace wounding the --list switches which is re-used to brought you a GUI-tool to select and seek for element to change in a query called command-line And this --list switches is an handly helper coming out of switche --help where GetVarReference was glued in mode Certified Chunck, or quasi hard-coded. Like any code is hard-coded in Fnct.D, Evaluative Brace does it part from TagParser to Inject extra code for building Repository for ZenityBuildForm, for handling Zenity-form where there is not Hard-coded Form for any function, simple --list extraction that sleep inside any function and does only output Prefixed-Variable from your code. Talking about chunk of development are also certified with SHA1SUM and if you doubt having unwilling tweak inside your chunk ZenityShellEval is the one can certify if your code is certified at lest by this GitHub repository or yourself having merging things in your own repository or on your local drive. In both way it's to prevent your idea of the code or our Idea of the integrity is respected and prevent the hole Library to flaw. Interesting write fomr section 0x200 from chapter Programming from [Hacking The Art if Exploit from Jon Erickson] is explainning hacking.

So, the clever conerintuitive solution to a problem inside way to present a easy way to attract users to use my Library is to provide key that prove Bash-Shell can be designed by interface. And have inserted power tools, not like fmt_vuln fmt_vuln2 test_val and heap, but more like BoolVarTest/BoolVarTestVarCreation, TagParser, ValueToVariable __GetVarReferenceList GetVarReference, which play with ability to filter information from declare application from Bash and extract function content. And also the Helper itself is reponsible to provide function infortmation like Prefixed-Variable. So be honest having better tant a DTD to implement it's the story of the function yield in Function helper called with switches --help. ZenityBuildForm is 3 Step Query designed from command line and some picture are placed here to invite Draft to know about what is possible to see to adopt in early stage of understanding the function itself in designing your your own code is to Create it.


Everything start with calling ZenityBuildForm, let use the same interface held by thi images 

.. code:: shell

 # There is 2 type of ouput for ZenityBuildForm, here the command Line for Both Example:
 ##
 ### Example Number 1 
 $> ZBFUUIDQuery=True ZBFFunctionName=ValueToVariable ZenityBuildForm
 
 ### Example Number 2 
 $> ZBFFunctionName=ValueToVariable ZenityBuildForm
 
 ### This one give exactly the same form as Number 2
 
 $> ZBFUUIDQuery=True ZBFFunctionName=ValueToVariable ZenityBuildForm

ZenityBuildForm depend from frienf called ZenityPrefixedVarSelection It's the first windows appearing. This application have other sub-function being callable by uses of Prefixed-Variable BuildListInformation from ZenityPrefixedVarSelection is somewhat a DTD extration-tool. Because it extract the list of variable and do expand the extraction into TAG, having expanded TAG into Default Value Extracted we are not far from created a Dictionnary of common key and type-of-value. But first here the selectable windows from ZenityBuildForm.

.. image:: https://github.com/priendeau/Fnct.D/blob/master/images/ZenityPrefixedVariable.png
        :target: https://github.com/priendeau/Fnct.D#ZenityBuildForm

The second Windows we are exactly in Step 2 inside ZenityBuildForm which had extrated TAG from Prefixed-Variable and have created a Form made from Text-Entry wished to fill from Pre-Selected information. You don't have to go back to look for the Value example inside the previous windows, a set of them are displayed and probably some are taking to much place to enlarge from WIDTH ratio the windows. Zenity Form mode does not support checkable or set of True/False for Entry. Even inside the List mode from Zenity Form we can choose more than one title and not asking to select True-State one. Take in mind, the information you have selected need to be filled or you only have to not select them if they are correct the function will launch ith what the default are. 

.. image:: https://github.com/priendeau/Fnct.D/blob/master/images/ZenityBuildForm.png
        :target: https://github.com/priendeau/Fnct.D#ZenityBuildForm

Here the 2 Type of Windows. One the Number 1 does store all yourtrial inside a repository and use Zenity Text-info to read an UUID-filename from the Repository location. The advantage against Number 2 it's you don't have to run the ZenityBuildForm once to get the same function and the Number 1 does certify what you have selected is finger-printed or clearly certify with SHA1SUM algorithm. Which made the call authentic and using some other tools inside the Librabry will let you see if it's authentic or not. This authenticity trace is part of this section from Draft Paper indicate some tools are contribuying to secure you code if this code will be integrated inside server with many level of management and many Administrator and/or Webmaster or Higher-priviledge with possibility to authentify runnable script mean having a clear vision f what's online should always be checked or it's possibly a trace of faillure. 

.. image:: https://github.com/priendeau/Fnct.D/blob/master/images/ZenityBuildForm-output.png
        :target: https://github.com/priendeau/Fnct.D#ZenityBuildForm




[Hacking The Art if Exploit from Jon Erickson]
Chapter 0x200, Programming 
Hacking us a term used both by those who write code and those exploit it. Even thought these two groups of hackers have different end goals, both groups use similar problems-solvingtechniques. And because an understanding of programming helps those who exploit, and an understanding of exploitation helps those who program, many hackers do both. There are interesting hacks found in both the techniques uses to write elegant code and the techniques used to exploit programs. Hacking is really just the act of finding a clever conerintuitive solution to a problem.


:Note: 7b295e46-9e53-11e6-8b1d-001e4c8856d6
:Title: Sensitive OS / Instant Hardware problems, rely on location where you are 
:Method: Monitoring tools and Experimentation tools
:Function: LoopShellScript
:Reference: Implementation. 
:Reference: Development

It's irrevelant, but System depend of night build and progressive build, delivering an OS like Mint, Ubuntu and many Debian like OS and unfortunately, Fedora, CentOS, Red Hat, they have all the same compiler and sometimes a certified and original package do compile first and the day after it's like nightmare. The Night Build or expression brought from Unix root in late 1970-1980, it does work silently on a mainframe and does produce an answer .... Also having many type of processor quality and memory should produce different result, but pieces of hardware does answer to manufacturing standard and accute place on earth like North-America does produce really strong test to certify material and we should'nt fall on miserable faulty design.... It's sure laptop are subject to to weakness and do produce more interference than a fully isolated desktop case made of metal... Physically easy to spot your processor acrros your keyboard because it heat, your lucky to know it's plastic that slowly heat.... Some keayboard have a weak metal plate, but not wrapping the whole computer so it make interfereces... Other problems, Solar storm doe produce magnetic variation too and since I do developped this script in a non-solar activity or it was simply low, the prototype of few hundred lines does run a script itself, a configure with make command to build a bash 4.3 version with some extra option mot mentionned inside Debian-Mint Version 17.3, like history like echo on network socket which can help demonstrating other artefact but facing-out This script does store successive run and store it inside a file to later retreive it and try it just happens and show a computer can compile a Whole package of bash-4.3 once and not the day after and having the explicit truth with only 668 line of code generating a Function to run a script, keep the SHA1SUM it make and storing it inside associative Array to analyse future occurence of the change of the script... I do doubt over step behind of a configure with too much option, make with too much Cflags, Ldflags, too recent compiler and many option may influence the build of a component. So by definition the Fnct.D have increase of main tool to offer simple proof it's might be the deterministic moment to start thing and wait until condition are satisfying... Like stability of electricity another good point why laptop may perform on this case, relying on huge power protection a.k.a. the battery of laptop is seriously what pushing life of your laptop beyond normal uses and normal decay. Also another point is underpower of all elements like less voltage and amps for a video-card, running cpu-core under fewer watts of energy may keep things older... More stable, maybe not ! 

LoopShellScript is built with idea of managing a script where this one if feeded of tag, parsed and give the ultimate script to monitor. This one runned by this function does run correctly and was backuped on Caching-idea and not real backup method. This application is also not able to start from a cold-boot with sha1sum from last run, it may but not at this stade, but if the application run long enough to produce correct script, the answer is storing inside a file where this file is [MANDATORY] the same as long it's not specified for another file. This file store your file by rank. One rank hold the sha1sum prooving the storage had memory of what it does and information like date where it was stored, the CODEC used for this task and the file encasulated in readeable format... This application have severals operation inside it's design and SHALL run and store sucessive run, DO run also for a survey of file like Image File, file from a depot, file from a conversion file from an action, but principaly operate for and operation the execution of a script. Other action are to list and or Filter the Storage file to seek-in and evaluate information. And Important role to restore the proposed run where this one match successfully. It's also an idea to come over making diff from a configure & make, but a script that do ask for item to configure over non modified source and non modified result I mean the compiled project have surely much important consideration than saving config cache... Extraction from this Storage file is uniquely by querying the SHA1SUM Id generated by this wisdom and there is Search facility inside this application but will never produce an extraction from a search. Since this script save the file-name inside the Storage you can really ask to search for a possible multi-recurrent answer to drop the file where it was.... How many time it will and will really answer to a question, Which one was good ?

So here some clue from Helper, it long enough to give more than important information, simply type 

.. code:: shell

 ### Helper 
 $> LoopShellScript --help 

And will give your this description, coming with a Synopsis, Summary and a Description, the description can also inform you on Prefixed-Variable to use and inside this Description you can also have important Prefixed-Variable to use. Some explaination will come soon with example.  

LoopShellScript
~~~~~~~~~~~~~~~

 From _sub_Function_Appliance

Information from command-shell Helper : 

.. code:: shell

  versionGCT=0.0.1 versionGSPN=0.0.2 versionMC=0.0.2 versionTP=0.0.2 versionGPI=0.0.2 versionCA=0.0.2 versionLSS=0.0.1
  Help:

  Function LoopShellScript
  Name
  LoopShellScript		A Test-Unit to test command with many directive to test and report the working solution.


  Synopsis
    This application is also perfect for Shell-Script with TAG to replace or add directive. Coming with Start and Stop services, it expect to produce execution once and store the file inside file with SHA1SUM header from your script qualified of different from previous save or modification. Result is compressed and this application will deliver a method to extract the compressed file inside this SHA1SUM header. (END OF DRAFT INFORMATION)


  Summary
    This application does survey your script and run-it belong to a different SHA1SUM reported by the application and upon a result it store-it inside a File for working solution. 


  Description
    A common way to use it is to test your source package requiring to change the configure with multiples option some may fail and require to change the information inside. This application will wait until the file is changed and report you if it work or not. File Specified by the application is compressing the working result ready to extract the working solution. This Application can be shutdown from a command from same USER by using --stopservices function. It require to specify a Uniform Ressource Identifier specified inside prefixed-variable, LSSUUIDInstance. Also UUID variable can be used instead. By starting a new instance of this application it show you a UUID identifier and a new file inside prefixed-variable LSSLoopFile will exist the time the loop is testing and compiling succesfull script. Stopping the services will only remove the file and stop the Loop.

  Master Prefixed Variable
  LSSIsExtraction=False ( by default )
  Master Prefixed Variable
  LSSIsExtraction=False ( by default )
  Switch To ShellControlServices main function responsible of looping script and store working script inside file LSSFileStorage (by default .LoopShellScript)


  LSSIsExtraction=True
  Switch To ,DataExtractionTool to access to your file LSSFileStorage (by default .LoopShellScript) by extracting script. Also access to the sub-function of DataExtractionTool, SearchByFile ,SearchDate ,SearchId ,ListFile. Only ListFile is not requiring a query to enter with prefixed variable LSSSearchQuery. Sub Function SearchByFile ,SearchDate ,SearchId require Prefixed-variable to allow a specific search and not working in same time than ListFile. Assuming ListFile can be accessed by using [ LSSIsListID=True, LSSIsExtraction=True ], sub-function SearchByFile ,SearchDate ,SearchId won't be accessible at same time. You do require to acces to them, just use [ LSSIsListID=True, LSSIsSearchID=True | LSSIsSearchDate=True | LSSIsSearchFile=True ] . Using the search facility, your query can be inserted inside Prefixed-Variable LSSSearchQuery=... . A Search engine only search it does not extract the information. 


  LSSSHAIndexExtract=...
  Is the only one prefixed-parameter to use to extract the file under LoopShellScript. One full-length query to extract imply loading the DET ( DataExtractionTool ) by loading extraction:


  LSSIsExtraction=True LSSSHAIndexExtract=8fa097cd6652a6f3d106193a12ff4d5855e894a2.

  Services Engine Section :
  LoopShellScript can start many instance, and each instance information is stored inside /var/cache/Fnct.D/, where a file named Loop-LSS-UUID, where UUID is an UUID Identifier used to identify the active loop for your script detection. To stop a services running it's mandatory require to claim the shutdown by specifying the UUID on prompt with the switche '--stopservices' . 


  ex:
  $> UUID=938cc57c-9c73-11e6-8b1d-001e4c8856d6 LoopShellScript --stopservices
   Or
  $> LSSUUIDInstance=938cc57c-9c73-11e6-8b1d-001e4c8856d6 LoopShellScript --stopservices


  Following Prefixed-Variable can be used for the main-loop called ShellControlServices:

  LSSFileName		STRING The Script, image, the collected data in chunk used to analysed with this application.
  LSSFileStorageLock	STRING File location to control all Lock-ready Instance of LoopShellScript.
  LSSNonScriptValidator	STRING default to ('/usr/bin/file') replace Operator Dot [.] in file-script execution.
  LSSIsScriptFile		Set To True/False Default to True, if LSSFileName is not a script but a file to monitor it's have to turn it to False.
  LSSIsLockFile		Set To True/False Default to False, allow multiple instance to store in the same file. 
  LSSFileStorage		STRING File The default file name to store all SHA1SUM + FILE, beware of multiples instance 
  LSSLoopFile		STRING File Identifier to manage the instance, To create your own repository consult GnrlPrsrInfctr Creation of repository.
  LSSFileFormat		STRING Based on LSSApps LSSFilter prefixed-Var. it required to managed theses variable too to specify something else.
  LSSIsHideScriptOutput	Set To True/False Hide from Stdout output of your script, does not affect the return statement.
  LSSIsDisplayDebug	Set To True/False Display Debugging and verbose left inside.
  LSSIsDisplayIfDebug	Set To True/False Display Debugging and verbose toward Generated-If clause from BoolVarTest.
  LSSDateFormat		STRING and Quoted STRING required use Standard POSIX-date format and can use also Unix-TimeStamp.
  LSSIsLoopOnErrorType	Set To True/False Does Enable Script Looping. This Parameter are for OS or hardware problem
  LSSLoopOnError		INT This is once a script does return alternatively no error and error, must specify the error to filter
  LSSMaxLoopOnError	INT Number of Iteration the script should run to certify for error.


  Comment over LSSIsLoopOnErrorType:
  This is another section used to test and strength scritp, some script like configure loading Makefile and this one using the compiler, does sometimes return no error and the moment after it start to generate Segment-fault with or withour changes on your system, this facility is here to give a try on your night-build.

  Comment over LSSLoopOnError:
  This Prefixed-variable require you do know about recurrent error, like compiler like gcc give ErrorLevel of 2 and enabling suppose your script only loop after detecting Segmentation fault.

  Data Extraction Tool Section :
  Extracting the file from specified Prefixed-variable LSSFileStorage does overwrite your current file-name if this one is present inside the path where you do require to extract it. Mostly if you do have done a Shutdown request you may already own a copy of the file inside the Storage file.

  Prefixed-Variable for DataExtractionTool or ( DET ).

  LSSIsExtraction		Set To True/False Mandatory to use DataExtractionTool search or extraction
  LSSSHAIndexExtract	STRING The SHA1SUM Id information used to extract the file. 
  LSSIsListID		Set To True/False Only List all SHA1SUM Id and file 
  LSSIsSearchID		Set To True/False Actiave DET Search By ID
  LSSIsSearchDate		Set To True/False Actiave DET Search By Date
  LSSIsSearchFile		Set To True/False Actiave DET Search By File
  LSSSearchQuery		STRING The query string used to seach by Date, File, ID.


  Avanced Prefixed-Variable for Both DataExtractionTool and ShellControlServices.

  LSSApps			STRING Specify the active codec for compression, other suggestion can be gzip, lzma, 7z
  LSSAppsCmprOpt		STRING Specify the Compression Codec parameter for compression.
  LSSAppsDeCmprOpt	STRING Specify the De-Compression Codec parameter for de-compression.
  LSSFilter		STRING Specify the encapsulation layer of compressed file stored inside declaration of LSSFileStorage. Should support storage in one line with no EOL.
  LSSFilterCmprOpt	STRING Specify the parameter to use the encapsulation to store inside the file declared by LSSFileStorage
  LSSFilterDeCmprOpt	STRING Specify the paramter to extract from encapulation the compressed file. 


  Parser & Advanced Prefixed-Variable for Both DataExtractionTool and ShellControlServices

  This section does manage uniquely your encapsulation layer and compression tool if you do provide other parameter to the application and will manage your information.
  LSSFileFormat		STRING By Default its 'BZIP2+BASE64'
  LSSCmprTag		STRING Parse your LSSFileFormat into command line to Store your script or file analysed by this application. 
  LSSDeCmprTag		STRING Parse your LSSFileFormat into command line to extract your script out of SHA1SUM Id out of the storage file. 
  LSSTagParserDef		STRING Unless your are not a ParserTag Aware it does transform TAG from Variable definition inside the application.
  LSSFuncStart		STRING From Function member or existing function it's the function LoopShellScript.

  Comment over LSSFileFormat:
  In compression which is default, but internal function GetFileFormatCmd ( visible from Function Member section) callable from LSSFuncStart use the variable LSSIsExtraction and for one way compression the function read your LSSFileFormat into LSSCmprTag parameter from this STRING BZIP2+BASE64. Setting LSSIsExtraction=True the same function can revert this LSSFileFormat and apply BASE64+BZIP2 to getting your file out of storage file. This Parser will use LSSDeCmprTag and parsing your application BASE64+BZIP2 into a command line.

  Comment over LSSTagParserDef:
  Touching-it play with the code and may not work, but quite usefull if you do have to add from Prefixed-Variable from prompt to One of internal function should specified with the affected tag.

  Comment over LSSFuncStart:
  Can bypass the function design like GnrlPrsrInfctr function to implement the Repository Creation. To get familliar with use with GetFileFormatCmd and add prefixed-parameter LSSIsExtraction=[True/False] to test your compression design is throwing you correct parsing.


  Function Member:
   Verbosis ,GetSha1Sum ,GetFileFormatCmd ,FileDeCapsulation ,DataExtractionTool ,SearchByFile ,SearchDate ,SearchId ,ListFile ,FileWriterSupport ,ShellControlServices ,VersionApps ,__main_StopServices ,__main_StartServices 

  Default Variable Value:
  Variable LSSFuncStart ,
   Default Value:__main_StartServices
  Variable LSSFileName ,
   Default Value:start-configure.sh
  Variable LSSFileStorage ,
   Default Value:.LoopShellScript
  Variable LSSFileStorageLock ,
   Default Value:/var/cache/Fnct.D/Lock-LSS
  Variable LSSDateFormat ,
   Default Value:'%Y%m%d-%H:%M:%S'
  Variable LSSLoopFile ,
   Default Value:/var/cache/Fnct.D/Loop-LSS-__UUID__
  Variable LSSUUIDInstance ,
   Default Value:Last-instance-UUID
  Variable LSSSHAIndexExtract ,
   Default Value:None
  Variable LSSFileFormat ,
   Default Value:BZIP2+BASE64
  Variable LSSIsScriptFile ,
   Default Value:True
  Variable LSSNonScriptValidator ,
   Default Value:/usr/bin/file
  Variable LSSIsLoopOnErrorType ,
   Default Value:False
  Variable LSSLoopOnError ,
   Default Value:2
  Variable LSSMaxLoopOnError ,
   Default Value:5
  Variable LSSIsLockFile ,
   Default Value:False
  Variable LSSIsExtraction ,
   Default Value:False
  Variable LSSIsListID ,
   Default Value:False
  Variable LSSIsSearchID ,
   Default Value:False
  Variable LSSIsSearchDate ,
   Default Value:False
  Variable LSSIsSearchFile ,
   Default Value:False
  Variable LSSSearchQuery ,
   Default Value:None
  Variable LSSIsHideScriptOutput ,
   Default Value:False
  Variable LSSIsDisplayDebug ,
   Default Value:False
  Variable LSSIsDisplayIfDebug ,
   Default Value:False
  Variable LSSApps ,
   Default Value:bzip2
  Variable LSSAppsCmprOpt ,
   Default Value:'-9c'
  Variable LSSAppsDeCmprOpt ,
   Default Value:'-dc'
  Variable LSSFilter ,
   Default Value:base64
  Variable LSSFilterCmprOpt ,
   Default Value:'--wrap=0'
  Variable LSSFilterDeCmprOpt ,
   Default Value:-d
  Variable LSSDefaultPipe ,
   Default Value:'|'
  Variable LSSTagParserDef ,
   Default Value:StrPipeCmd:__PIPE__,StrFilterDeCmprOpt:__FILTER_DECR_OPT__,StrApps:__APPS__,StrAppsCmprOpt:__APPS_CMPR_OPT__,StrAppsDeCmprOpt:__APPS_DECR_OPT__,StrFilter:__FILTER__,StrFilterCmprOpt:__FILTER_CMPR_OPT__
  Variable LSSCmprTag ,
   Default Value:__APPS__ __APPS_CMPR_OPT__ __PIPE__ __FILTER__ __FILTER_CMPR_OPT__
  Variable LSSDeCmprTag ,
   Default Value:__FILTER__ __FILTER_DECR_OPT__ __PIPE__ __APPS__ __APPS_DECR_OPT__
  Following switch are available:

   --startservices	Start the application normally.
   --stopservices	Stop the application normally.
   --get		Return value of Internal Variable.
   --list		List all Internal Pre-fixed Variable available to query or get.
   --compword	Word Completion Provide a services to Extract on Demand all Pre-fixed Variable
    \String inside this function.


---------------------------------------
Step forward the ZenityBuildForm sample
---------------------------------------

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
	   ZSEPathStorage=/etc/init.d/Fnct.D/ \
	   ZSEFileName=950966fa-0e67-11e3-98a2-001b3875b29c

	### On screen it report the information 
	File: 57eaab74b095e5d374cf15d5923fef2fb02eaab7
	Footprint: fa3cd4782aa56e9c1725a06904af3293a6b5c532
	file-shasum:/etc/init.d/Fnct.D/950966fa-0e67-11e3-98a2-001b3875b29c:FAILED
	
	# Re-editing the file with ZenityShellEval and removing the FOOTPRINT will save
	### it with newest information... Or possibly need to come back to original file
	### version due to error-insertion with another application and was not analysed
	### by ZenityShellEval and might report error execution. 
	
	### Another Edition with ZenityShellEval and it change the shasum , doing the same
	### command ; now it report the correct information . 
	
	File: 223715eeac461ce63984fd5f9f0ddb749dc3909d
	Footprint: 223715eeac461ce63984fd5f9f0ddb749dc3909d
	file-shasum:/etc/init.d/Fnct.D/950966fa-0e67-11e3-98a2-001b3875b29c:MATCH

***NOTE***, ZenityShellEval, IS changing the SHA1SUM header in any circumstance,
having the chunk conform or not, correct or not...

:Note: f5f7532c-0bac-11e3-999d-001b3875b29c
:Title: Developping and Helper 
:Function: GetVarReference
:Methodology: Structure

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


:Note: d06076ae-e960-11e5-98a2-001e4c8856d6
:Title: WrapPathIntegration, Accessor in MD_CD
:Function: WrapPathIntegration, MD_CD


-------------------
WrapPathIntegration
-------------------

As Path Accessor in some internal development and first integrated to 
md_cd command to transform its call :

.. code:: shell
	
 ### from 
 MdCd __PATH__
 ### to 
 prefixed_var=__PATH__ MdCd 

::
	
 Allowing addition of --startservices to set a possible cumulation of informations
 Allowing addition of --get , --list . 
 Implicitly develop a filter for relativistic path added to the command and 
 or adding default mechanism to filter and inform of explicit action like 
 disallowing uses of relativistic path or inversly disallow uses of absolut
 path...  [ /ekivɔk/-ly /kætʃ/ the /nɑt/ /ɪnˈtɛnt/ /ˈækʃən/ ]


::

 While some may doubt about uses and lack of operability, using a function 
 to factorize the data-collection entry is *Package sensibility* and therefore
 example in code sample stay valid except we are not doubting about elements
 such $* inside functor :
 
.. code:: shell
	
 ### Previously defined Functor. 
 function md_cd()
 {
  prefixed_var=$* MdCd ; 
 }
 
 ### from 
 MdCd __PATH__
 ### to 
 prefixed_var=__PATH__ MdCd
 


Variable WPIListTransformFunc
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

 Will also allow a third-party function being [kc]rafted depending of ListToArray
 this one will also possible to not use it by specifying your own function 
 thru WPIListTransformFunc and its method to call it internally. Using the
 function WPILstFuncCall .
 Helper own its own example of calling the internal function: 
  
 see: (pre-note, not the official pre-fixed var are definied here )

.. code:: shell
	
 Fnct.D $> WrapPathIntegration --help
 
 Help:

 Function WrapPathIntegration
 Default Variable Value:

 Function WrapPathIntegration
 Default Variable Value:
 Variable WPIPathList ,
 Default Value:''
 Variable WPIListTransformFunc ,
 Default Value:ListToArray
 Variable WPIListCSV ,
 Default Value:','
 Variable WPILstFuncCall ,
 
 #      +---------------------------------------------------------------+
 #      | Default Value:LTAComma='__CSV__' LTAEntry=__LIST__ __FNCT__   |
 #      +---------------------------------------------------------------+
 
 Variable WPIVerbose ,
 Default Value:False

Corpus of WPIListTransformFunc -> WPILstFuncCall
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

By Default, LTAComma and LTAEntry are provided by default and should not  interfer
with your own function. Despite having few report based before the Fnct.D appear, it's idea
to own at least the required TAG such __CSV__ and  __LIST__ is mandatory if you do
collect information thru the command-line. Some other thinking may developt a in file
data-collection or from Database query to extract your data, but initially provided a in-hand
and in-command line provider is essential. Some may forget the uses of concept of
Comma separeted value like passing a full-length Base64 Line like precedent development
of __fnctCreateLocalityFuncParam with uses of FParamBase64  to identifie the variable as
Base64 codec and having extra accessor  decoding and encoding... All rejected for getter
and setter problems near 2011/2012 after discovering a development problems in uses of
variable parsing and be unable to acheive a better algorithm. 

:Note: ed0719fe-e959-11e5-98a2-001e4c8856d6
:Title: Toward __fnctCreateLocalityFuncParam
:Function: Old __fnctCreateLocalityFuncParam, Old __call_locality

::

 Evolution of Variable with pre-designed called like ValueToVariable
 and presence of unified Getter .
 While some effort toward __fnctCreateLocalityFuncParam owning ability
 to interpret uses of __call_locality , predecessor from old_Fnct.D does
 owning specificity of variable . Today having unified call of variable 
 thru uses of Array called __call_locality( Member-call Function-Name ), 
 the function __GetVarReferenceList and apparatus :

.. code:: shell

 eval """local ArgGet=\${${ArrayArg[1]}}""" ; 
 echo -ne """${ArgGet}\n""" ;

::
 
 found in '--get' , filter from Arg0 does report information about 
 value inside the function and allow them having different action. 
 - Totally Unified the declaration of Inside-member like Verbosis 
 exemple in WPI, show:
  

.. code:: shell

 IsVerbose=${WPIVerbose:=False} ;

::

 - Presence of variable notation is present inside __GetVarReferenceList and all
 variables like the example starting with Is or Bool will own a priority and 
 being treated . This is also applied to variable that start with Array or Str or 
 even Int.
 

 By Uses of Base64 is not definied Here, a presence of 
 Variable like WPIBase64=True/False will let other function 
 query them with this form :

.. code:: shell

 ### Following is suggestion and not real action.
 ### It represent a candidate owning variable named WPIBase64
 ### which is not for real WrapPathIntegration for the moment. 
 
 __FUNCTION__ --get WPIBase64 

::

 and if this report thru, we guess we can start thinking using 
 this way to enable codec... This improve speed and reduce code .
 Known to be heavy old __fnctCreateLocalityFuncParam, and 
 __call_locality as Function not Array does pump +/- 200 line 
 of code per call... Having discovered a problem, in calling 
 sequence, or problems between Real Unix/Solarix uses of function
 accepting dot ( . )  inside function name it's not scheduled in 
 bash anymore and did not comment anything over this choice... 
 Its purely « acknowledgible » ... 


Strength Affinity, securing with ZenityEditFile.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

 Because Sets of main new function __GetVarReferenceList, GetVarReference, 
 ValueToVariable , It start to unravel a steady way to respect some decent 
 coding adding <Plus> in way to affirm passthru of pre-fixed variable does 
 work and does not leak. 
 
::
 
 GetVarReference being glued inside ZenityEditFile Idiom integrity test leave
 a bad breath in home-made third-party eavesdroping ... Free development
 is also subject to be altered and being hack directly to github server 
 and prone development should depend of at least a codec to infirm in safe
 test being done because some arbitrary code are summed, and ZenityEditFile
 had property to affirm if a today code work or not after testing the 
 integrity. Which is bad in auto-development tool observed being able to 
 alter sub-set of code but not really helping in development. Based on 
 CRAN statistics tools, comming alone this auto-development widget is only
 to let beleive there is work toward a project, while real project path look
 like heratic. Time is something we spend on and it's not counted when it's
 afformentionned finited goal. 
 
End, What missing in __fnctCreateLocalityFuncParam
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

::
   
  Resume in, some part are fixed for good ( require ZenityEditFile to re-apply a new 
  checksum ), some other like ValueToVariable are not finished but give good result 
  and will continue to help the loosed development left as example on what to not 
  follow, help definition of standing component inside a function rather to implement 
  lost variable and nestled function . 

  
:Note: 363cbfd8-308a-11e3-98a2-001b3875b29c
:Title: Prior to BodyFunc, Internal Steady Pre-Variable Loader is...
:Function: BodyFunc
:Structural: Definition


BodyFunc is ultimately the next code re-writing action for actual code need to be
sustained and other function to stay in actual form to compare and leave observer
understanding the concept... Unfortunately it leave student doing homework and 
will have to convert a If-elif-(n-elif)-fi at end of function with BodyFunc. 

BodyFunc engine in Short is a simple widget in code conception for automated 
scription and scriptlet to own a living compound mastering an execution statement.
In a Self-services a function should had a member worrying about user switches, 
but have to hold behavior as well... Switches are only the human action while the
finite-automate should understand what to do with the human inquiry. 

~~~~~~~~~~~~~~~
	ValueToVariable
~~~~~~~~~~~~~~~

This function will be inclued inside the BodyFunc development and shall had an 
interest in simple Load transfer inside internal function layer... Managed on 
top of a Master Function, derived and unique-function held inside the function 
like some had default Main named __main_StartServices, having specialized 
part of __main_StartServices like __Action, __Loop ... those function in some
way to call them require a Load of Prefixed-Variable which is sometime long to
re-transcript for passing argument like variable flow... Explained in 
Transfert-layer, we improve with a Steady mechanism on Definition of BodyFunc, 
it should had a auto-transcription layer... 


See Help :

.. code:: shell
	
	Help:
	
	Function ValueToVariable
	Default Variable Value:
	Variable VTVValueEntry ,
		Default Value:StrTest
	Variable VTVIsArrayStyleInsert ,
		Default Value:False
	Variable VTVIsValueToConvert ,
		Default Value:True
	Variable VTVIsValueReAssign ,
		Default Value:False
	Variable VTVIsTransformed ,
		Default Value:False
	Variable VTVIsTransHadScript ,
		Default Value:False
	Variable VTVIsDebugDisplay ,
		Default Value:False
	Variable VTVITransformScript ,
		Default Value:None
	Variable VTVDefaultTransform ,
		Default Value:'s/([SIB][tno][tro][a-zA-Z0-9]+)/$1/g'
	Variable VTVAppsName ,
		Default Value:/bin/sed
	Variable VTVAppsOpt ,
		Default Value:-r
	Following switch are available:

		--startservices	Start the application normally.
		--get		Return value of Internal Variable.
		--list		List all Internal Pre-fixed Variable available to query or get.


And Code update Like ZenityShellEval will have a Inner region managing switches 
tinier than expected, easier to transform and observe a BodyFunc model more 
adapted. Seems to defeat the law, based on October 8 2013, _sub_jack_script 
delayed for a year since no big move was done toward Jack Served application named
jackd had better implementation from the Shell, A total rewrite let switches 
--testservices, --stopservices having it's origin and updating the fnct_lib with 
switche message StrStopSwitches StrTestSwitches. 


.. code:: shell
	
	### Before upcoming of ValueToVariable
	
	### Version A
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
	### Section A to compare with section B
	 StrFileTmp=${StrFileTmp}                 \
	 StrTitle=${StrTitle}                     \
	 StrDateFormat=${StrDateFormat}           \
	 IntSleep=${IntSleep}                     \
	 IntFontSize=${IntFontSize}               \
	 IsEditField=${IsEditField}               \
	 IntWidth=${IntWidth}                     \
	 IntHeight=${IntHeight}                   \
	 IntDefaultModeExec=${IntDefaultModeExec} \
	 IsEditField=${IsEditField}               \
	 IsAddFootPrint=${IsAddFootPrint}         \
	 IsLoopOnSucc=${IsLoopOnSucc}             \
	 IsCheckSumOnly=${IsCheckSumOnly}         \
	 __main_StartServices                     ; 
	fi
	### End Section a to compare with section B
	
	### Possible evolution while ValueToVariable will be implented permanently
	
	### Version B
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
	### Section B to compare with section A
	eval $( VTVIsArrayStyleInsert=True \
	VTVValueEntry=StrFileTmp,StrTitle,StrDateFormat,IntSleep,IntFontSize,IsEditField,IntWidth,IntHeight,IntDefaultModeExec,IsAddFootPrint,IsLoopOnSucc,IsCheckSumOnly \
	VTVIsValueReAssign=True \
	VTVIsValueToConvert=False \
	ValueToVariable ) __main_StartServices
	fi
	### End of Section B to compare with section A
	

This producing in the in Section A 579 caracter to verify and inside the 
section B it require 303 , a diminution of 50% of the code coverage.


:Note: 48acc93e-0bae-11e3-8e63-001b3875b29c
:Title: Developping The BodyFunc, Reducing code complexity by creating pattern and disposable StartServices signature.
:Function: BodyFunc
:Structural: Definition

function BodyFunc()
- Like BoolVarTestVarCreation, is defined to create on-demand if-pattern based 
on True Statement-Initial affectation and residual False statement as Assertive 
condition being another mechanism or either a branch this function BodyFunc will 
manage the switch condition from Arg0, know to be the Operator for finite and 
unique action. Actual Action are Getter, List, Helper and StartServices. 
__Future__ view predict uses of Setter where it's actually tweaked with external
Subset of command within Bash whole-list of command. Developped has 
Micro-Architecture expansion require several analysis and may depend of another 
compromised information related to Data. Data used from Setter Will stay out of 
the code and actual Pre-fixed Variable are unique Start-up information where 
ultimately all information will migrate to None after uniformisation and 
expansion of Exception into proper design. 

BodyFunc Goal :
To create an [ if / elif / n-elif / fi ] command from finite action required 
inside need of fnct_debian_lib to be wise information discovery . Wise-Discovery 
is not part of the function-type itself, but any coumpound will have Serious 
Notation and minimal helper.  Actually it will cover Finite action of Listing 
Prefixed-Var or Transport-Layer signature and Getter will extract entry from this 
Transport Layer, know to be actual Prefixed-Var. 

BodyFunc and Expanded Entry inside Finite action, StartServices uses : 
- Since Getter, Helper and List are simple finite action, a function body from 
this lib are the core of evolving multi-party-actor involving many sub-derivate. 

Example: Inside PackageRepositoryMgmt, uses of GetOtherDate is crutial to leave 
a valid-footprint inside and index based on File-system information deposition. 

- The StartServices being a function with Tiny Prefixed-Var internally be a 
Inter-transport-Layer, it should result into calling a possible function 
inside the Function Body or Any good compound from this Lib with awarness of 
calling correctly any Pre-fixed var. Exception in Internal design from 
Function to Sub-Function Transport-Layer this mechanism is not regulated, 
but will not work if variable are not transfered. 

:Note: d438ba78-c3ec-11e5-98a2-001e4c8856d6
:Title: Evolution of multi-party-actor involving many sub-derivate imply uses of UUID in BodyFunc
:Function: BodyFunc
:Structural: Definition

- While approving following pattern inside BodyFunc , __HELP__, __GET__, __LIST__, 
__Stack_Variable__, __ApplicationMain__ having a behavior to create a unique-ID 
to promote extraction of many Descendant form of BodyFunc without loosing any other
pre-registered informations. 

Discovered in many sub-function over 3 nested function or simply having more than 
ont __main_StartServices for somes imbricated function, a possibility to call 
efficiently Bodyfunc with registered ID will allow to avoid recall all other 
Variable member in a pre-declared sub-function . Uses of UUID will be implemented
and will required having Variable BFRegister to enhance pattern __HELP__, __GET__, 
__LIST__, __Stack_Variable__, __ApplicationMain__ into :

__HELP__XXXXXXXX_XXXX_XXXX_XXXX_XXXXXXXXXXXX
__GET__XXXXXXXX_XXXX_XXXX_XXXX_XXXXXXXXXXXX
__LIST__XXXXXXXX_XXXX_XXXX_XXXX_XXXXXXXXXXXX
__Stack_Variable__XXXXXXXX_XXXX_XXXX_XXXX_XXXXXXXXXXXX
__ApplicationMain__XXXXXXXX_XXXX_XXXX_XXXX_XXXXXXXXXXXX

Leaving possibility to call BodyFunc with no register and having a clean new 
pattern to fill the information. 


~~~~~~~~~~~~~~~~~
	Strictly talking in hypothesis model.
~~~~~~~~~~~~~~~~~

Facility in External transport connection of BodyFunc. 
- The Hypothetical prefixed-variable BFStackVariableList will accept a language 
operator 
known to be '+' sign to allow any conversion from good appelation of working 
function inside fnct_debian_lib by calling it and extracting variable. 
uses of GetOtherDate will be use inside the example. 

.. code:: shell
	
	BFStackVariableList=$( GetOtherDate --list | sed 's/\([a-zA-Z]*\)/\1+,/g;s/\ //g;s/+,+,/+/g'  ) BF*=... BodyFunc 

Will shorten the transfert mechanism from Outgoing Transport-Connection into 
automated StackList adding sequence, and  will also offer Glueing technique for 
several descendant  uses of BoolVarTestVarCreation / Function from 
fnct_debian_lib, and BodyFunc, with consideration had possibilty to be a fixed 
if-elif-fi topology . 

Or getting smarter, uses is another derivate compound mentioned higher, might 
introduce the function ValueToVariable with a functionnality to transform a 
variable name like StrTest into a ${StrTest}, and having another mode offering 
to create a paired assignation and Entry=StrTest,Strtest1 will produce

.. code:: shell
	
	$> 	VTVIsArrayStyleInsert=True \
		VTVValueEntry=StrTest,Strtest1 \
		VTVIsValueReAssign=True \
		VTVIsValueToConvert=False \
		ValueToVariable
	### output : StrTest=${StrTest} Strtest1=${Strtest1} 
	
	
-------------------
with function BodyFunc()
-------------------

- Like BoolVarTestVarCreation, is defined to create on-demand if-pattern based 
on True Statement-Initial affectation and residual False statement as Assertive 
condition being another mechanism or either a branch this function BodyFunc will 
manage the switch condition from Arg0, know to be the Operator for finite and 
unique action. Actual Action are Getter, List, Helper and StartServices. 
__Future__ view predict uses of Setter where it's actually tweaked with external 
Subset of command within Bash whole-list of command. Developped has 
Micro-Architecture expansion require several analysis and may depend of another 
compromised information related to Data. Data used from Setter Will stay out of 
the code and actual Pre-fixed Variable are unique Start-up information where 
ultimately all information will migrate to None after uniformisation and 
expansion of Exception into proper design. 


- BodyFunc Goal :

To create an [ if / elif / n-elif / fi ] command from finite action required 
inside need of fnct_debian_lib to be wise information discovery . Wise-Discovery 
is not part of the function-type itself, but any coumpound will have Serious 
Notation and  minimal helper.  Actually it will cover Finite action of Listing 
Prefixed-Var or Transport-Layer signature and Getter will extract entry from 
this Transport Layer, know to be actual Prefixed-Var. 

BodyFunc and Expanded Entry inside Finite action, StartServices uses : 

- Since Getter, Helper and List are simple finite action, a function body from 
this lib are the core of evolving multi-party-actor involving many sub-derivate. 

Example: 
Inside PackageRepositoryMgmt, uses of GetOtherDate is crutial to leave a 
valid-footprint inside and index based on File-system information deposition. 

- The StartServices being a function with Tiny Prefixed-Var internally be a 
Inter-transport-Layer, it should result into calling a possible function inside 
the Function Body or Any good compound from this Lib with awarness of calling 
correctly any Pre-fixed var. 

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
:Function: ZenityPythonInstaller


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

.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/950966fa-0e67-11e3-98a2-001b3875b29c-pseudo-code-Main.svg
        :target: https://github.com/priendeau/Fnct.D#5f218798-0ec6-11e3-98a2-001b3875b29c

<PNG>

.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/950966fa-0e67-11e3-98a2-001b3875b29c-pseudo-code-Main.png
        :target: https://github.com/priendeau/Fnct.D#5f218798-0ec6-11e3-98a2-001b3875b29c

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
:Function: FileNameConversion

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

This FileNameConversion function had some root inside Original lib from Fnct.D 
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

.. code:: shell
	
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
:Function: ZenityRadioOptionConfig
:Function: ZenityListOptionConfig
:Function: ZenityPrefixedVarBuilder
:Structural: Definition

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
	


::	
	
	An Example of ZenityLibPolicyList Gui interface displayed while calling the function 
	ZenityPrefixedVarBuilder. This method required at least you select couple of function
	from ArrayLibPolicy. All selected function will loop succesively and will prompt you 
	all Prefixed-Variable from each function. Selecting them will prompt you another
	entry interface to change the value and/or entering other information like Variable 
	and/or function result. 
	
	Once you stop supplying information like selecting nothing it will show you the function 
	interface selected by your choice and later be glued to a Function interface definition 
	helping you to develop some services based on Fnct.D library standard almost eyes closed.
	


.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/ZenityLibPolicyList.png
		:target: https://github.com/priendeau/Fnct.D#7bd8c582-2ebe-11e3-98a2-001b3875b29c	


:Note: 75411766-1969-11e3-98a2-001b3875b29c
:Title: Permanent Sqlite Database to store crutial information introducing connection-layer to a unicast-per-user group and bash interoperability
:Structural: Definition


*** Still in pending ***

Delayed until End-December 2013. 



:Note: 6e61bab0-35eb-11e3-98a2-001b3875b29c
:Title: An effective AgentLoader and StartAgentSSH as sub-componnent. 

SSH shell connection grew in importance with time and sometimes it goes clumsy to
simply configure it from bare-bottom... Many script-shell from Ubuntu and RedHat 
are using bare calling convention of an AgentLoader, a Stub to start it, 
sub-member to store PID when this one is created... but does not offer themself, 
varaible handling, user creation exception like user root does have to set SSH_ENV
to kill other instance. This mechanism is just plain-universal, having one like 
Fnct.D AgentLoader is somewhat easy to use, configurable, and effective to manage

Here old and Plain-Universal example:

.. code:: shell
	SSH_ENV="$HOME/.ssh/environment"
	
	function start_agent
	{
	  local ArrayArg=( $* ) ;
	  echo "Initializing new SSH agent..."
	  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
	echo succeeded
	chmod 600 "${SSH_ENV}"
	. "${SSH_ENV}" > /dev/null
	/usr/bin/ssh-add;
	}

	function Stub_Start_Agent()
	{
	local ArrayArg=( $* ) ;
	start_agent;
	}

	function PS_SSH_Agent()
	{
	local ArrayArg=( $* ) ;
	ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null ;
	}

	function AgentLoader()
	{
	local ArrayArg=( $* ) ;
	# Source SSH settings, if applicable
	if [ -f "${SSH_ENV}" ]; then
	. "${SSH_ENV}" > /dev/null
	#ps ${SSH_AGENT_PID} doesn't work under cygwin
	   PS_SSH_Agent || { Stub_Start_Agent ; } ;
	 else
	   start_agent;
	 fi
	}

AgentLoader Helper :

.. code:: shell
	
	Help:
	
	Function AgentLoader
	Default Variable Value:
	Variable ALStartServices ,
		Default Value:__main_StartServices
	Variable ALStopServices ,
		Default Value:__main_StopServices
	Following switch are available:

		--startservices	Start the application normally.
		--stopservices	Stop the application normally.
		--get		Return value of Internal Variable.
		--list		List all Internal Pre-fixed Variable available to query or get.


StartAgentSSH Helper:

.. code:: shell
	
	Help:

	Function StartAgentSSH
	Default Variable Value:
	Variable SASSHEvFile ,
		Default Value:environment
	Variable SASSHIsUserBasedHome ,
		Default Value:True
	Variable SASSHRootPathNoneUser ,
		Default Value:/root
	Variable SASSHPathStorage ,
		Default Value:.ssh
	Variable SASSHDefaultChmod ,
		Default Value:600
	Variable SASSHIsSetSSHENV ,
		Default Value:False
	Variable SASSHUnregisterSSHENV ,
		Default Value:False
	Variable SASSHChmodApps ,
		Default Value:/bin/chmod
	Variable SASSHSSHADDApp ,
		Default Value:/usr/bin/ssh-add
	Variable SASSHSSHADDOpt ,
		Default Value:
	Variable SASSHSSHAgentApp ,
		Default Value:/usr/bin/ssh-agent
	Variable SASSHSSHAgentOpt ,
		Default Value:
	Following switch are available:

		--startservices	Start the application normally.
		--stopservices	Stop the application normally.
		--get		Return value of Internal Variable.
		--list		List all Internal Pre-fixed Variable available to query or get.


Schema relative dependency relation of AgentLoader and StartAgentSSH.


.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/AgentLoaderRelation.png
		:target: https://github.com/priendeau/Fnct.D#6e61bab0-35eb-11e3-98a2-001b3875b29c


:Note: 208d465e-f6d4-11e5-98a2-001e4c8856d6 
:Title: Uses of Prefixed-Variable in AgentLoader Might work.

Implicitly True, internal pre-fixed var will effectively let the application have it specific behavior, but ultimately specifying other variable from internal application related to Fnct.D and or function explicitly developped inside fnct_debian_lib, fnct_lib and descendant lib if are present inside the Body of the function will receive a initial value rather than pre-specified in theirs declaration. This give opportunity to verify the content of all result generated by BoolVarTestVarCreation with only adding 

.. code:: shell
	
 BVTestDisplayIf=True AgentLoader --stopservices

Will Output current test yield inside AgentLoader, StartAgentSSH... 

.. code:: shell

 VERBOSE:[ 
 Function BoolVarTestVarCreation, Display Result:
  local StrAppsAction="${StrAppsAction}" ;
  if [ "${IsValueSimpleConvert}" == "True" ]  ; then 
   StrAppsAction=${StrDefaultSedScript} 
   ; fi ;
  ]
 VERBOSE:[ 
 Function BoolVarTestVarCreation, Display Result:
  local StrAppsAction="${StrAppsAction}" ;
  if [ "${IsValueToAssignSame}" == "True" ]  ; then 
   StrAppsAction=${StrDefaultAssignScript} 
   ; fi ;
  ]
 VERBOSE:[ 
 Function BoolVarTestVarCreation, Display Result:
  local StrAppsAction="${StrAppsAction}" ;
  if [ "${IsValueTransScript}" == "True" ]  ; then 
   StrAppsAction=${StrDefaultTransform} 
   ; fi ;
  ]
 VERBOSE:[ 
 Function BoolVarTestVarCreation, Display Result:
  local StrParsedVar="${StrValueParser}" ;
  if [ "${IsEntryInComaSep}" == "True" ]  ; then 
   StrParsedVar=${StrValueParser//,/ } 
   ; fi ;
  ]



:Note: 3d46895a-4f41-11e3-98a2-001b3875b29c
:Title: ZenityContentListing, not only a CSV with UI

ZenityContentListing was initially a user extraction function used inside 
GkSuZenityLoader to render and extract all USER using a shell of type /bin/bash 
to  be selected while a default application is loaded... Initially Used to load 
my favorite Shell developper for Python, called IDLE, it's the most standard, 
cost less and usually NOBODY WILL COMPLAIN AND OR COMMENT about this application 
being installed. Once this wrapper was completed, it merely use an old function 
moved inside ZenityContentListing called GetPwdUser and ZenityFilter, where both
acting like file called and regular expression macthing sequence thru egrep 
command called internally. Only thoses 2 function where enought to create a 
CSV + Regular matching information... Assuming CSV is working in a column, it's
hard-stuff mangling content inside a column and buffering result... Keeping it
simple we are dealing with seamless line... Sometime usefull to extract content 
if you doubt having to had no criteron, a seach with '[A-Za-z0-9\-\_]+:' will 
give to application to search for a first valid column having data which is not 
bad after all ... 



Default GUI when calling ZenityContentListing alone. 

.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/ZenityContentListing.png
		:target: https://github.com/priendeau/Fnct.D#3d46895a-4f41-11e3-98a2-001b3875b29c


Help from ZenityContentListing

.. code:: shell
	
	Help:

	Function ZenityContentListing
	Default Variable Value:
	Variable ZCLTitle ,
		Default Value:"Select a user for __APPS__"
	Variable ZCLCol0 ,
		Default Value:"selection"
	Variable ZCLCol1 ,
		Default Value:"user"
	Variable ZCLCSV ,
		Default Value:':'
	Variable ZCLColExtr ,
		Default Value:1
	Variable ZCLFilePasswd ,
		Default Value:/etc/passwd
	Variable ZCLRegSearch ,
		Default Value:"/bin/bash"
	Variable ZCLSUS ,
		Default Value:False
	Following switch are available:

		--startservices	Start the application normally.
		--get		Return value of Internal Variable.
		--list		List all Internal Pre-fixed Variable available to query or get.

Example 1:

Extracting information based on Unique Key, case of Report file from PackageRepositoryMgmt.


- Having a file called 20130823

.. code:: shell

	ADD SNAPSHOT
	DATE:20130823 02:41:11:ID:ffb2f0b2-0bbe-11e3-98a2-001b3875b29c
	SNAPSHOT:SHA1SUM:
	SNAPSHOT END
	NEW TRANSACTION:20130823 02:41:11
	COMMIT TRANSACTION:ID:ffb20698-0bbe-11e3-98a2-001b3875b29c:NB_FILE:134:SHA1SUM:9ff5cb441b7f7946eef9c8d4a98a6b573ae41f14:20130823 02:41:11
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libatk-bridge2.0-dev_2.8.1-1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libxt-dev_1%3a1.1.3-1ubuntu0.13.04.1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libcogl-doc_1.14.0-0ubuntu1_all.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgladeui-dev_3.14.2-0ubuntu1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libftgl2_2.1.3~rc5-4_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgnomecanvas2-dev_2.30.3-1ubuntu2_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libart-2.0-dev_2.3.21-2_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgcrypt11-dev_1.5.0-3ubuntu2.2_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:x11proto-dri2-dev_2.8-1_all.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:gegl_0.2.0-2+nmu1ubuntu1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgles2-mesa-dev_9.2.0~git20130729+9.2.9b8ad643-0ubuntu0sarvatt~raring_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:apitrace-gl-frontend_3.0+git20121018.d1c301f7-0ubuntu1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:freeglut3-dev_2.6.0-4ubuntu1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:conglomerate_0.9.1-3.3ubuntu1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:gir1.2-cogl-1.0_1.14.0-0ubuntu1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libpopt-dev_1.16-7ubuntu3_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgladeui-doc_3.14.2-0ubuntu1_all.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgtk-3-doc_3.6.4-0ubuntu8_all.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgnome2-dev_2.32.1-2ubuntu4_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgnomeprint2.2-0_2.18.8-3ubuntu1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libgnomecups1.0-1_0.2.3-5ubuntu1_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libbonobo2-dev_2.32.1-0ubuntu3_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:libegl1-mesa-dev_9.2.0~git20130729+9.2.9b8ad643-0ubuntu0sarvatt~raring_amd64.deb
	ffb20698-0bbe-11e3-98a2-001b3875b29c:gir1.2-gladeui-2.0_3.14.2-0ubuntu1_amd64.deb

	
.. code:: shell

	### This ZenityContentListing example will search for all line starting with Regular
	### Expression '^ffb20698-0bbe-11e3-98a2-001b3875b29c' and will extract the column
	### number 2... ZenityContentListing will show you all file from COMMIT ID
	### ffb20698-0bbe-11e3-98a2-001b3875b29c

	ZCLRegSearch="^ffb20698-0bbe-11e3-98a2-001b3875b29c" ZCLCSV=':' ZCLColExtr=2 ZCLFilePasswd=20130823 ZenityContentListing

.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/ZenityContentListing-002.png
		:target: https://github.com/priendeau/Fnct.D#3d46895a-4f41-11e3-98a2-001b3875b29c

Example 2:

.. code:: shell
	
	### 
	### This one will give you active commit-ID inside the current date from a 
	### PackageRepositoryMgmt index file. 
	
	ZCLRegSearch="^COMMIT TRANSACTION" ZCLCSV=':' ZCLColExtr=4 ZCLFilePasswd=20130823 ZenityContentListing	

.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/ZenityContentListing-001.png
		:target: https://github.com/priendeau/Fnct.D#3d46895a-4f41-11e3-98a2-001b3875b29c

Example 3:

		
It's a Push-ahead in « Why no GUI » for PackageRepositoryMgmt and PackageRepositoryRest, 
PackageRepositoryFilter... in One command you can acheive a ID-Grab and Package 
Listing of what was installed in last commit, getting them and do a checkup or 
even a dpkg --install.... 

.. code:: shell
	
	### 
	### All in One Zenity List Commit-ID and package-lookup from index created by 
	### PackageRepositoryMgmt 
	### 
	ZCLRegSearch="^$( ZCLRegSearch="^COMMIT TRANSACTION" ZCLCSV=':' ZCLColExtr=4 ZCLFilePasswd=20130823 ZenityContentListing )" ZCLCSV=':' ZCLColExtr=2 ZCLFilePasswd=20130823 ZenityContentListing

And many-more wisdom $( ... ) are coming once stateful-design for Zenity UI will be 
completed... 

:Note: 2f4fd5f0-8421-11e6-8b1d-001e4c8856d6
:Title: TAG used in general require much more attention during creation.
:Function: ZenityContentListing
:Function: TagParser
:Function: All Newer Function
:Structural: Strict Parsing required
:Warning: Not found Exception in parsing event come from evaluative Executive Brace.

Many function will depend from TagParser and this parser inject or simply create code to be evaluated and executed. Even if there only __TAG__ to replace by Variable Name, it either have inside the common function and should exist or at-least be handled or pushed by ValueToVariable. The problem is not the parsing technique, comming from Pure String Variable handling and substituing it deal with Bash expansion pattern and are subject to partially uses execution back-trace to expand to a know value inside your variable. Adding inside a Parser a Query munished from __TAG__ and Variable or temporary un-evaluated variable (like Case1:\${VARNAME} or Case2:\${${VARNAME}}) where Case 1 will be evaluated for having multiple name being placed inside the back-slashed variable location. Case 2 will Browse from Existing variable and a failed expansion from Variable Name forming another Variable will create a execution inside an evaluation and randomly execute something in hand or really close... Case of ZenityContentListing with migration of TagParser create a really-long line holding the Zenity-list parameter and the ZenityFilter to read the content and create a Block-list from TRUE/FALSE Item be selectionned, and ZenityFilter require to be executed inside the Command-line of ZenityFileReader and do create a command line with  Double Executive-Brace and does require a evaluation brace for the pass-thru of ValueToVariable. Don't Forget the TagParser does traversing the Command-line for searching tag and does translate __TAG__ into Variable Name from definition passed to. This case take while to dismiss and discover problems of parsing and after visiting the TagParser, some Hard-quoting style is in force, and TagParser also use it's onw TAG to dequote some region of the code-creation and does working after all in Strict-parsing. So before merging solution or branching other idea to parse the information it's mostly the Parser created a.k.a. your command line used that require some Strict back-slashed to some variable and addition of Pending Evaluation-Executive Brace like '\$( eval __THING__ ) ' and Pending Variable

	
Example 4:

.. code:: shell
	
	### 
	### Latest improvement inside ZenityContentListing to work with TagParser add
	###  posibility to use the multiple-selection from Zenity List helper with options
 ### of selecting checkbox and multiple-selection, let you selecting more than
 ### one package at the time for doing your dayly management, inspection... 
	
	ZCLIsCheckListMulti=True ZCLFilePasswd=latest ZCLColExtr=2 ZCLRegSearch=^fcb9ecc6-8389-11e6-8b1d-001e4c8856d6  ZenityContentListing

.. image:: https://raw.github.com/priendeau/Fnct.D/master/images/ZenityContentListing-003.png
		:target: https://github.com/priendeau/Fnct.D#b9a774fc-8425-11e6-8b1d-001e4c8856d6


:Note: ad9f62fc-8423-11e6-8b1d-001e4c8856d6
:Title: Field Effect, Pending variable Creation and Nth-Pending variable creation
:Action: Parsing with Evaluation and Evaluative Executive Brace 
:Function: TagParser
:Function: All Newer Function
:Structural: Strict Parsing required
:Warning: Are required to fix parsing and substitution in complex algorithm to acheive Code-creation.

The closest effect in this code is thru function TagParser having a Strict parsing engine to create code ready execution inside a function call of you TagParser need over a variable shoosed with TPVarNameParsed and internally are parsed like __TAG__ found and will become \\\${\\${YOUR_VARIABLE}, after one evaluation lost the Double Slashed Aperture and become \${${YOUR_VARIABLE} your variable inside the Receiver hand or called the Evaluative Executive-Brace from your TagParser and this one once executed become ${${YOUR_VARIABLE} or the New ${VARIABLE} this case is the TagValue from a pair found inside TPListTag like first example StrA:__TAGA__ where ${StrA} is the variable existing inside your code and be the required value from your __TAGA__. This is why TagParser does not worry about your value but require the presence of this variable . The advantage of Single-Backslashed Pending Variable are steady variable name, Used inside TagPArser for StrPairRight StrPairLeft are subject to end into ${StrPairRight} and ${StrPairLeft} and nothing much, but does not have to be evaluated during the non-formalisation of the code only on the end. And TagParser can not acheive them niterpreted or it attempt to execute the variable like a program name, has we had made i18n to allow execution function with '=' caracter it probably waiting for and \xHEX value or UTF-8 or UTF-16 with =\0xFF while we are looking for strict typing function name.  

.. code:: shell
	### This state of Variable is pending and will only exist under back-slashed dollar
 ### signed variable on last-stage, being executed from Parser like TagParser 
 ### and being executed by your uses of TagPArser 
 Double-Backslashed Pending variable creation: \\\${\\${StrVarAssign}

 Single-Backslashed Pending Variable creation: \\\${\${StrPairRight}}

 
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


It's name depend of something rational coded inside function GetStdPrefixName, 
and Shall not be used inside declaration of __call_locality for Unability of 
external  function to read un-evaluated value from hand-writted function name... 
But function GetStdPrefixName can give you and Idea what will be a Root for 
Prefixed-Variable. This is almost import for first level function accessible to 
human of simple parser from shell from another level-1 function. See example to 
see where is the Level-1 representation and where is the Calling signature. 

Once the example is controlled or added to your shell if you want to try,  the 
rest of the body  implement the  switches-level.  Shall be implemented  with  
BodyFunc, and another example somewhere should already show you this. For the 
moment, The basic and understandable way imply a Switches level being settled at
the end of the function to clearly show where is the services entry and may rely 
from internal second-level function or external level like 
__GetVarReferenceCompWord, __GetVarReferenceList. 


.. code:: shell
	
	Example: 1
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
		  ###   |           function name EasyTestInRun, you will get ETIR
		  ###	  |
		  ###	  |
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


Introduction to GnrlPrsrInfctr. 

GnrlPrsrInfctr is also called General-Parser-Infrastructure which is a future key in function handling and coumpound-command uses inside function should I suggest you a better way to code your action of calling a command-line to later introduce this application like middle-ware required to register a so 'often-called ' action inside a Registered event to re-useit like instance of that command or synthetized from this knowledge and using a co-instance of something familiar to the code to let you monitor the flow and having hand in by analyzing your function to a lower cost of development. Made out TagParser it act like know Function name ( BoolVarTest / BoolVarTestVarCreation ) which manage if-statement, this application seriously use the TagParser ability to parse and integrate code inside your actual development, then I do decide to produce a similar effect of gathering the Parsing complexity in many command piped and filtered to get a result into an effect eliminated from sub-function problem. Know problem is isolation, a know application being wrapped-in a function do require lot of variable to touch the application[sixth]_

Extended Example . 

While the code is evolving in time, we can work with version of function.
This imply having more than one corresponding goal and being writed in many
version. As example before upcoming of CallArgument, it exist a functionnal
__Call_Argument and even before the initial __call_locality declared by hand 
inside a top-function entry.  Working with version of function imply making
if statement to control which is turned-on'n[first]_ correct time .

 Supposing having function __Call_Argument / CallArgumemt to manage inside the code for evaluate your need's we shall consider Version of Fnct.D start at 0.0.0 and does only support __call_locality Array.
 
Version of Fnct.D start at 0.0.1 does support __CallArgument where it's invisible to completion word and activating Compword and looking for this function will never work
 
Version of Fnct.D start at 0.0.2 does Support CallArgument, visible from any sub functionnality
of bash, it does having ability to make the whole declaration of __call_locality, BootStrap name  	

Example: 2


.. code:: shell
	
  function GnrlPrsrInfctr()
  {  
   if [ "${versionCA:=0.0.0}" == "0.0.0" ] ; then 
     ###   +---------> Calling signature. If you try GetStdPrefixName on 
     ###   |           function name GnrlPrsrInfctr, you will get GPI
     ###   |
     ###   |
     ### See Notice [second]_
     local -a ArrayArg=( $* ) ;
     local -a __call_locality=( GPI GnrlPrsrInfctr ) ;
     local Arg0="${ArrayArg[0]}";  
     local StrStartMain=${GPIFuncStart:=__main_StartServices} ; 
     local StrParentApps=${__call_locality[1]} ; 
   elif [ "${versionCA:=0.0.0}" == "0.0.1" ] ; then 
     ### See Notice [third]_
     eval $( eval CAFunctName=GnrlPrsrInfctr CAIsAddParent=False __Call_Argument ) ; 
   elif [ "${versionCA:=0.0.0}" == "0.0.2" ] ; then 
     ### See Notice [fourth]_
     eval $( eval CAFunctName=GnrlPrsrInfctr CAIsAddParent=False CallArgument ) ; 
  fi
  
  ### This is an evaluation test GnrlPrsrInfctr, for having installing extras
  ### package toward Zenity-Dbus problem and after a reboot, the evaluation 
  ### start to flaw and solution like echo inside an eval is not quite acceptable:
  ### solution offert : write like an echo evaluation where it is already going
  ### out from an echo: eval $( echo "CAFunctName=GnrlPrsrInfctr 
  ### CAIsAddParent=False __Call_Argument" ) ; So I withdraw package from last 
  ### download and imply testing both version __Call_Argument versionGPI==0.0.1
  ### and CallArgument versionGPI==0.0.2, and may come to a conclusion function 
  ### starting with _Prefix or __Prefix may be blind to evaluation and report 
  ### being absent, which is probably a policy-kit altering the code.[fifth]_

  ### ... function Body ... 
  
  ### tiny __main_StartServices example : 
  
  function __main_StartServices()
  {
    ###   +---------> Calling signature. If you try GetStdPrefixName on 
    ###   |           function name __main_StartServices, you will get SS, but 
    ###	  |           CallArgument family does handle an exception here and call it 
    ###   |           Main [sixth]_
    ###   |
   if [ ${versionCA:=0.0.0} == "0.0.0" ] ; then 
    local -a ArrayArg=( $* ) ;
    local -a __call_locality=( Main __main_StartServices ${StrParentApps} ) ;
    local Arg0="${ArrayArg[0]}";  
   elif [ ${versionCA:=0.0.0} == "0.0.1" ] ; then 
    eval $( eval CAFunctName=__main_StartServices CAIsAddParent=True __Call_Argument ) ; 
   elif [ ${versionCA:=0.0.0} == "0.0.2" ] ; then 
    eval $( eval CAFunctName=__main_StartServices CAIsAddParent=True CallArgument ) ; 
   fi   
   
  ### ... extra code
  }
     
  ### The Last-if-block, receiver for switch statement and Extended Helper. 
  local StrSwitchMessages="${StrSwitchesShow}${StrStartSwitches}\n${StrGetMsgSwitches}\n${StrListMsgSwitches}\n${StrCompWordMsgSwitches}\n" ;
  local StrNameHelper="GnrlPrsrInfctr\tStand for General-Parser-Infrastructure...";
  local StrSummary="This TagParser for single function, piped-function and Nth-piped function is ..." ; 
  local StrSynopsis="Soon to fill it with lot of informations";
  local StrDescription="Having surdose of informations, skip this part..." ;
    
  if [ "${Arg0:=--startservices}" == "--help"	] ; then 
   GVRIsName=True GVRIsSummary=True GVRIsSynopsis=False GVRIsDesc=False GetVarReference ${__call_locality[1]} ; 
   echo -ne "${StrSwitchMessages}" > /dev/stderr ; 
  elif [ "${Arg0:=--startservices}" == "--get" ] ; then 
   eval """local ArgGet=\${${ArrayArg[1]}}""" ; 
   echo -ne """${ArgGet}\n""" ;
  elif [ "${Arg0:=--startservices}" == "--list" ] ; then 
   eval $( __GetVarReferenceList ) ;	
  elif [ "${Arg0:=--startservices}" == "--startservices" ] ; then 
   eval $( eval \
     VTVIsArrayStyleInsert=True  \
     VTVValueEntry=${StrVarList} \
     VTVIsValueReAssign=True     \
     VTVIsValueToConvert=False   \
     ValueToVariable ) ${StrStartMain}
  fi
   
 }  	

So Here a method developped to touch and uses variable from Library declared inside _sub_Structure and _sub_Function_Appliance which handle strict versionning of function and do require to call either the version of Function required ( like versionCA=0.0.2 GnrlPrsrInfctr ), or to export from your .bashrc all intended version, at this moment I do recommend to add variable like versionTP, versionGCT, versionGPI, versionCA, versionGSPN to appropriate version. Idem for those who love to play with alpha-stuff and non official version of application, using the common version controlled which is a function held inside your .bashrc (I do recommend to create it and change your version from there .) calling function like :

.. code:: shell

 eval $( FnctDVersion ) __FUNCTION__ 

.. code:: shell

 ### Definition of FnctDVersion 
 ### This code do :
 ### 1- creating the version required to add like pre-fixed variable to your application 
 ### 2- to export directly to your Environment so next call will not require to call FnctDVersion
 ### unless you decide to change version inside your .bashrc .  
 
 ### So inside the .bashrc file : 
 export ORIGINVERSION=0.0.0 ;
 export DEVELVERSION=0.0.1 ;
 export THISVERSION=0.0.2 ; 

 declare -A ArrayFnctDVersion ;
 ArrayFnctDVersion["versionTP"]=${THISVERSION}
 ArrayFnctDVersion["versionGCT"]=${DEVELVERSION} ;
 ArrayFnctDVersion["versionGPI"]=${DEVELVERSION} ;
 ArrayFnctDVersion["versionCA"]=${THISVERSION} ;
 ArrayFnctDVersion["versionGSPN"]=${THISVERSION} ;



 function FnctDVersion()
 {
  local StrExportVar="__VAR__" ; 
  for VerName in ${!ArrayFnctDVersion[@]} ; do 
   StrVersion=${ArrayFnctDVersion[${VerName}]} ;
   echo -ne "Set FunctionTrigger:${VerName} Version:${StrVersion}\n" > /dev/stderr ; 
   StrExportVar=${StrExportVar//__VAR__/${VerName}=${StrVersion} __VAR__}
   export ${VerName}=${StrVersion} ; 
  done 
  StrExportVar=${StrExportVar//__VAR__/} ;
  echo ${StrExportVar} ;  
 }




Quoted Information from this chapter : 


.. [first] : Lexical uses of Crying n, while sentence is which is turned-on on correct time. we can reduce the turned-on expression into turned-on'n and neglect the rest of the sentence 
.. [second] : This is the know signature required for GetVarReference to start looking inside the function and extract know variable based on it's Prefixed-signature. Your design will work without this implmentation but you will not get access and convenient of using switch helper, switch getter, switch listing and compword which are all good key to allow you code to be understand and documented and even being integrated inside the BuildForm Method.
.. [third] : Invisible to compword the design of Fnct.D version 0.0.1 is reserved for function having not intention to uses compword so Hard-stated function do not required to be such convenient have comp-word isolation for some testing purposes, like Bash-command line with Fully-decorated with Ansi coloured caracter coed inside PS1, PS2 variable may broke compoword view. 
.. [fourth] : Version 0.0.2 are using fully extendable CallArgument where also re-integrate visibility lost of evaluated function through the helper. Assuming GetVarReference at version 0.0.1 can inspected inside a function with classic search, version 0.0.2 will expect to expand evaluation of CallArgument.
.. [fifth] : This comment is also a bare-fact and discouraging action often discourage developper to go beyond by make strengter sub-set of controlled application throught Bash-shell. Bourne Against Shell is also a first shell to support addition of plug-in which making exiting at this moment to integration of library like Gnome, GTK, Xwindows, bash was able by simply add some extra library and library-elidation can work and communicate with posix-layer and push this application to respond and having great uses . It come with sides effect like curses take a lot of time deliverying the Ansi compatibility to a text-environment it create gracious flaws and require to be re-written; Note Dbus is have grow enought but still considering slowing down a system once fully installed and interacting freely with this system by using at-spi and collection of tools to query and interact with reduce the performance enough to consider buying more memory if your system can accept-it.   
.. [sixth] : Since __mainStartServices and __mainStopServices can be called in BootStrap, I decide to unify internal name for pre-fixed variable Main, so basic control will remain controlled with MainXXX=VAL1 MainYYY=VAL2 ${StartStartMain} which is another advantage to use CallArgument family they generated steady code. Other exception GetStdPrefixName have internal table of exception and application GetUUID called with GetStdPrefixName will generate prefix of 'GetU' instead of GetUUID, this is done with prefixed-variable GSPNPrefixExcepLst and can have other member like PackageRepositoryMgmt using PkgRepoMgmt Pre-fixed Variable, it's an old package important enough to avoid changing argument style.  


Creating Documentary Acceptable Helper.
---------------------------------------

GetVarReference was simply boosted from Key helping user to add Documentary, « Wisdommation », Documentation to help the user to understand the role of your function or simply the internal function list. ValueToVariablebeing mainly used is not commented everytime. There is few mechanism in some function Throwing out the Evaluated code but are not linked with specific part under the eyes to understand certainly the purposes of this section. Having developped GetVarReference ith Prefixed-Variable built-in, we can arbritrary make documentation like manpage by calling the switch '--help' but require some varaible to exist like 
 
===================  ======================================================================
 Variable             Definitions
===================  ======================================================================
 StrNameHelper       Give a Name to your Descriptive Helper

 StrSynopsis         Give in short-term the uses of your variable

 StrSummary          Give The Summary, or mostly in short how to use it

 StrDescription      Give even more detail if your summary was more theorical than pratical.
===================  ======================================================================


This require at least uses of Prefixed-Variable used by GetVarReference to enbale them.
The pre-release functionnal work in date of September 2016 is barely A ratify comment and 
builting the experience for definition of strength and complexity of function-reign . 
 
.. code :: shell

  # This example enable the Synopsis, NameHelper, Summary and Description
   if [ "${Arg0:=--startservices}" == "--help"	] ; then 
   GVRIsName=True GVRIsSynopsis=True GVRIsSummary=True GVRIsDesc=True GetVarReference ${__call_locality[1]} ; 
   echo -ne "${StrSwitchMessages}" > /dev/stderr ; 
  elif [ "${Arg0:=--startservices}" == "--get" ] ; then 
   eval """local ArgGet=\${${ArrayArg[1]}}""" ; 
   echo -ne """${ArgGet}\n""" ;
  elif [ "${Arg0:=--startservices}" == "--list" ] ; then 
   eval $( __GetVarReferenceList ) ;	
  elif [ "${Arg0:=--startservices}" == "--stopservices" ] ; then 
   eval $( VTVValueEntry=${StrVarList} \ 
           VTVIsArrayStyleInsert=True   \
           VTVIsValueReAssign=True      \
           VTVIsValueToConvert=False    \
           ValueToVariable  ) __main_StopServices ; 
  ...


 In clear to build the helper it's rely on uses of the switches , a.k.a. --list, --get, --help which are called in bottom of the function part allowing to put the Getter without having extra code to be executed after . The Helper function called GetVarReference require these Prefixed-Variable to allow you developping safe description.
 
For GetVarReference there is no Helper for it. At this step to voluntary add a in-hand helper
for this Function is simply out of schedule but putting help here is twice an way to help. 

 =================   =====  ==============================================
 Prefixed-Variable   Value  Require This variable hold the Text to be see.
 =================   =====  ==============================================
 GVRIsName           True    StrNameHelper
 GVRIsSynopsis       True    StrSynopsis
 GVRIsSummary        True    StrSummary
 GVRIsDesc           True    StrDescription
 =================   =====  ==============================================
 
  
Adding Prefixed-Variable to display Fnct.D lib member displaying result.
------------------------------------------------------------------------

Complexe function like BoolVarTestVarCreation may sometime be itchy and all alone it may compromise code execution. A Case Specifying a command line of the generated password command was fixed by displaying the BoolVarTestVarCreation by fixing GPShowFnctDCall a Pre-Fixed variable of GetPasswd allowing to push a True value inside all BoolVarTestVarCreation used inside. Also, developping a neat BoolVarTestVarCreation an alternative called _BoolVarTestVarCreation is used and GetPasswd have grow in size after adding the package auto-installer based on apt-get and gdebi. They own enought stuff to make he switch and observe different BoolVarTestVarCreation reaction. Since I do detecting minor problems inside BoolVarTestVarCreation, this function is elected by adding another prefixed-var named 

	
.. code:: shell

 user@UnderscoreXDevlpt Fnct.D $ GPBVTVCName=_BoolVarTestVarCreation GetPasswd


Here also the latest Helper for this function.

.. code:: shell

 Help:

 Function GetPasswd	
 Default Variable Value:
 Variable GPAppsGen ,
 	Default Value:"/usr/bin/pwgen"
 Variable GPSize ,
 	Default Value:16
 Variable GPFactor ,
 	Default Value:1000
 Variable GPRandomSeed ,
 	Default Value:10
 Variable GPArgType ,
 	Default Value:cnsB1,cysB1,cnsyB1
 Variable GPGenFormType ,
 	Default Value:0
 Variable GPShowCmdEvalAndExit ,
 	Default Value:False
 Variable GPShowOutputFormated ,
 	Default Value:True
 Variable GPShowFnctDCall ,
 	Default Value:False
 Variable GPAutoInstallDependency ,
 	Default Value:False
 Variable GPDownloadManager ,
 	Default Value:/usr/bin/wget
 Variable GPDebianMethodInst ,
 	Default Value:apt,gdebi
 Variable GPPwGenPackager ,
 	Default Value:0
 Variable GPPwgenAptCmd ,
 	Default Value:sudo apt-get install pwgen
 Variable GPPwgenGdebiCmd ,
 	Default Value:sudo gdebi __OPTION__ __PACKAGE__
 Variable GPPwgenGdebiOpt ,
 	Default Value:"""--option=Get::Assume-Yes="true""""
 Variable GPPwgenPackaName ,
 	Default Value:pwgen_2.06-1ubuntu4_amd64.deb
 Variable GPPwgenPackageURL ,
 	Default Value:http://launchpadlibrarian.net/124865523/__PACKAGE__
 Following switch are available:
 
 	--startservices	Start the application normally.
 	--get		Return value of Internal Variable.
 	--list		List all Internal Pre-fixed Variable available to query or get.

Here we do show the sample code of this application making choice between displaying the command and not executing the application and executing it and correctly answer to Pre-fixed var assigned by calling GetPasswd 

.. code:: shell

   if [ ! -e ${StrAppsPwdGenerator} ] ; then 
    StrMsg=$( GetPasswd --get ArrayMsg[5] );
    StrMsg=${StrMsg//__APPS__/${StrAppsPwdGenerator}} ; 
    VerbHeader="PWGEN" VerbMsg=${StrMsg}  VerbDev=/dev/stderr VerbState=True Verbosis
   else 
    local ArrayFormPassword=( ${StrPasswordTypeForm//,/ } ) ;
    local StrPwGenFormPassword="-${ArrayFormPassword[${IntPasswordType}]}" ;
    local end=${IntDefaultFactor} ; 
    local factor=$(( ${end} * $(( ( ${RANDOM} % ${IntRandomSeedFactor} ) + 1 )) )) ; 
    
    local value="" ;
    ### 
    ### Password Line execution ( needed both in display and Loop command. )
    ### 
    local StrCmdPwdEval="""StrAppsPwdGenerator=${StrAppsPwdGenerator} StrPwGenFormPassword=${StrPwGenFormPassword} IntDefaultPwdSize=${IntDefaultPwdSize}""" ; 
    local StrLoopCmd="""${StrCmdPwdEval} factor=\${factor}""" ; 
    local StrDisplayCmd="""${StrCmdPwdEval}""" ; 
    
    ### Decide to display the command-line and exit or do the work. 
    eval $( BVTestVarHold='' BVTestVTVVar=${StrVarListTransfert} BVTestVTFnct=__Display BVTestBoolVarName=\${BoolEvalCmdExit:=False} BVTestBoolCase=False BVTestBoolAssertion='' BVTestIsPreambule=True BVTestScopeTest=local BVTestVTVVarA=${StrVarListTransfert} BVTestVTFnctA=__Loop BVTestIsValueToVar=True BVTestIsValueToVarAssert=True BVTestDisplayIf=${BoolDisplayFnctD} ${StrFnctDSvrBVTVC} ) ;
   fi		 
		 
Declaring Switches Helper inside function
-----------------------------------------

Since revision 6d75717ff2c69d3a14ac05f6e084e23c40d83646 or simple based on latest
revision of fnct_lib from Sep 09, 2013. Fnct.D was now equiped with Standard 
Switches messages. Comming from rule inside the Library to not develop useless 
swicthes because it drastically change to view-point of a services-level. Most
of action inside a regular mechanism called --start-services are configured and 
scheduled based on Pre-fixed Variables uses on function declaration. This leave
few switche to be developped and a common standard to develop same behavior for 
same switche. This lead to a Steady message being printed inside Helper. Since 
this revision I shall adopt a methodology presented inside previous example to
name a Unique Variable responsible of showing switches and using common Variable
name for every switche need to be developped inside the function. 

See example :
	
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
	  ...
	 }
	  
	 function __main_StartServices()
	 {
	  ### ... 
	 }
    }
	
   ### Normal Switches Messages introduction. 
   ### 
   ###
   local StrSwitchMessages="${StrSwitchesShow}${StrStartSwitches}\n${StrGetMsgSwitches}\n${StrListMsgSwitches}\n${StrCompWordMsgSwitches}\n" ;
   ### 
   ### switches-level 
   ###
	
	


.. code:: shell
	
	Variable:			Message:
	${StrSwitchesShow} 		Following switch are available:
	${StrCompWordMsgSwitches}	--compword	Word Completion Provide a services to Extract on Demand all Pre-fixed Variable
							String inside this function. 
	${StrListMsgSwitches}		--list		List all Internal Pre-fixed Variable available to query or get.
	${StrGetMsgSwitches}		--get		Return value of Internal Variable.
	${StrStartSwitches}		--startservices	Start the application normally.
	${StrStopSwitches}		--stopservices	Stop the application normally.
	${StrTestSwitches}		--testservices	Test the application, (dry-run).
	
           
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

In Term, it's the information services available by function allowing to extract 
a componnent from the Communication Layer. Each Item from this communication 
layer is a Prefixed-Variable commonly designed by the autor allowing to pass 
informations. In a layer you can virtually pass all Item and even not assigned 
item or not existing item and should not interfer during Services initiation. 
Known and recognized one will be used and even not intended to be use due to 
switche nature will be ignored and might be used if the user change the switches. 

.. code:: shell
	
	### As example. 
	### calling :
	AFunc001=XXX __FUNCTION__ --help
	### prefixed var AFunc001 is ignored 
	
	AFunc001=XXX __FUNCTION__ --get AFunc001
	
	### prefixed var AFunc001 is not ignored and output value XXX .
	

Like notice *822d36e2-6517-11e6-98a2-001e4c8856d6, from title  Recurrent call in GetUUID Not dangerous and uses isolated Arrays formation, text parsing is NUmber One uses of Getter to provide Finite-Location in function design to provide a easy way to acces to better translation and or wiser mechanism in text mangling, data mangling. It also deal with fact that Getter and Object accessible in second and not in priori. Which mean there is finite and easy path inside a Function Getter-supplied and will exit after it's job done and recurrent call will not repeat itself for it's well designed pseudo-code.  

.. code:: shell


 ### From Same date at the development, the GetUUID 	was owning such Getter
 ### and does use it well. It's located at the end of function 
 ### __main_StartServices()
                                    ###       
                                   ###         #####      #####
                                  ###          #####      #####
                                 ###           #####      #####
                       ####     ###    ####    #####      #####
                        ####   ###  ####       #####      ##### 
                         ############          #####      #####
                           #######             ################
                            ###                ################   ##########   ###    ####  ##########   
  StrMsg=$( GetUUID --get ArrayMsg[4] )        #####      #####  #####  #####  ###  ###### #####  #####  
  StrMsg=${StrMsg//__ACTION__/${StrAction}} ;  #####      #####  #####  #####  #######     #####  #####  
  ### VerbState=${IsVerbosis}                  #####      #####  #####  #####  #####       #####  #####  
  VerbHeader="DEBUG" VerbState=True VerbMsg=${StrMsg} Verbosis;  ###########   ###         ###########
  #echo -ne "[UUID ACTION: ${StrAction}]\n" > /dev/stderr;#####  #####         ###         #####
  eval $( VTVIsArrayStyleInsert=True \         #####      #####   ####   ####  ###          ####   ####
          VTVIsValueReAssign=True \            #####      #####    ##########  ###           ##########
          VTVIsValueToConvert=False \
          VTVValueEntry=IsVerbosis,StrAction,StrUUIDHelper,IntSeqLoop ValueToVariable ) ${StrAction} ; 



:Note: 834204aa-6e12-11e6-8f55-15357d0f8ed3
:Title: Recurrent Getter and overflowing Application Value. 
:Reference: Warning. 
:Function: --get and uses of Getter

- We are discussing of this bundle of function, made to play with a lost Archives required 
bzip2recover to inspect a Big volume, too Big to be handle with syntax :

.. code:: shell

 tar cv | bzip2 -9c > File-destination.tar.bz2 

Many reason exist, possibly of mixing code and mixing file with presence of EOF inside machine code, binary code even picture can old eof like symbols used in their internal dictionnary. This piped tar inside a bzip2 application filter to create dictionnary of approximated 900K symbols will some day pass away and put EOF inside the file. Modern Piped does support holding EOF and does produce strange action. The whole file is handled and does not produce error on creation. Un-tarring does produce error and maintainer of Tar applciation does explicitly added switches like not worring of EOF internal file and the application bzip2recover made from another group does filtering the file and splitting it into huge number of sub-file. Hard to be handled inside one array Index to sometimes overflow and not handling it properly, even shell-command does have explicit limit on nomber of char on command line and also limited in number of syntaxic command per line of command. This required to deal with other tools to inspect and keep information after manipulation. This code expliclitly uses and reuses find application and Word Cound called wc where options of this command does support line counting. This set bundled also own a pattern file to count file from same splitted archives. As example file.tar.bz2 uses with bzip2recover will be split into 5000 other subfile from following name rec0001file.tar.bz2 to rec5000file.tar.bz2 and first parameter of GetListRec invite putting Intelligent parsing parameter to recognize whole 5000 file at the time. 

.. code:: shell

 unset GetListRec ; 
 function GetListRec()
 {
  local __call_locality=( GLR GetListRec ) ;
  local ArrayArg=( $* ) ; 
  local Arg0=${ArrayArg[0]} ;
  
  local StrPath=${GLRPath:=/home/maxiste/recover} ;
  local StrFileRecover=${GLRFile:=2016-08-25-0128-backup.tar.bz2} ;
  local StrPrefixPatrn=${GLRFilePrefixPatrn:=rec[0-9]*__FILE__} ;
  local IsDisplayLength=${GLRDisplayNbItem:=False} ;
  local IsDisplayMember=${GLRDisplayMember:=False} ;
  local IntDisplayMember=${GLRDisplayIntMember:=0} ;
  local StrFileFinderApps=${GLRFindApps:=/usr/bin/find} ; 
  local StrLCApps=${GLRWcApps:=/usr/bin/wc} ;
  local StrLCAppsOpt=${GLRWcOpt:=-l} ;

  ### For any Variable Assigned to True inside IsDisplayLength, will run the associated function
  local ArrayFuncCall=( IsDisplayLength:GetNbRec IsDisplayMember:GetMemberRec ) ;
  local IntFuncCall=${#ArrayFuncCall[@]} ; 
  local StrVarListTransfert="StrPath,StrFileRecover,StrPrefixPatrn,IsDisplayLength,IntFuncCall,IsVerbose,StrLCApps,StrLCAppsOpt,IntDisplayMember" ; 
  local IsVerbose=${GLRVerbose:=True} ; 
  local IntNbRec=${GLRIntNbRec=0}; 
  
  function Verbosis()
  {
   local __call_locality=( Verbosis Verb );
   local StrMsg=${VerbMsg:=__TEXT__} ; 
   local StrDevOut=${VerbDev:=/dev/stderr} ; 
   local IsVerboseState=${VerbState:=False} ;
   local StrVerboseHeader=${VerbHeader:=VERBOSE}
   local ArrayArg=( $* ) ; 
   if [ "${IsVerboseState:=False}" == "True" ] ; then 
    echo -ne "${StrVerboseHeader}:[ ${StrMsg} ]\n" > ${StrDevOut} ;
   fi
  }
  ### Model : VerbHeader="DEBUG" VerbMsg=${StrMsg}  VerbDev=/dev/stderr VerbState=True
  
   
  function GetNbRec( )
  {
   local __call_locality=( GNR GetNbRec ) ;
   local Arg0=${ArrayArg[0]} ;
   local ArrayArg=( $* ) ; 
   local StrFilePrefix=$( GetListRec --get StrPrefixPatrn ) ;
   local StrFileName=$( GetListRec --get StrFileRecover ) ;
   local StrPath=$( GetListRec --get StrPath ) ;
   local StrLookUpFile=${StrFilePrefix//__FILE__/$( GetListRec --get StrFileName )} ;
   local StrCmd="""__APPS__ __PATH__ -type f -iname \"__FILE__\" | __WC__ __WC_OPT__""" ; 
   StrCmd=${StrCmd//__WC__/$( GetListRec --get StrLCApps )} ; 
   StrCmd=${StrCmd//__WC_OPT__/$( GetListRec --get StrLCAppsOpt )} ; 
   StrCmd=${StrCmd//__PATH__/${StrPath}} ; 
   StrCmd=${StrCmd//__FILE__/${StrLookUpFile}} ; 
   StrCmd=${StrCmd//__APPS__/${StrFileFinderApps}} ; 
   
   VerbHeader="CMD" VerbMsg=${StrCmd}  VerbDev=/dev/stderr VerbState=${IsVerbose} Verbosis ;
   
   local IntNbRec=$( eval """${StrCmd}""" ) ; 
   eval """GLRIntNbRec=${IntNbRec} GetListRec --get IntNbRec """  ; 
  }
  
  function GetMemberRec()
  {
   local __call_locality=( GNR GetNbRec ) ;
   local Arg0=${ArrayArg[0]} ;
   local ArrayArg=( $* ) ; 
   IntValue=$(  GLRIntNbRec=$( GetNbRec ) GetListRec --get IntNbRec )
   VerbHeader="DEBUG" VerbMsg="New Value IntNbRec, ${IntValue}"  VerbDev=/dev/stderr VerbState=${IsVerbose} Verbosis ;
  }
  
  function __main_StartServices()
  {
   local __call_locality=( Main __main_StartServices ) ;
   local Arg0=${ArrayArg[0]} ;
   local ArrayArg=( $* ) ; 
  
   ### Example of Assertion inside an IF-FI clause using BoolVarTestVarCreation who is wrapping an  
   ### ValueToVariable call . It's important to ( set to True BVTestIsValueToVarAssert and 
   ### BVTestIsPreambule=False ) or Assertion will be inserted the preambule at the number 2 line ;  
   ### after first preambule if this one also own set of variable BVTestVTVTPL ,BVTestVTVVar ,BVTestVTFnct 
   ### are for preAmbule definition to wrap a call with affiliated function ValueToVariable , Set 
   ### of BVTestVTVTPLA ,BVTestVTVVarA ,BVTestVTFnctA are for the inside call of if-fi clause. Called 
   ### Assertion, it's the result of creating an if clause on demand. 
   local StrItemEvalCode="" ;
   local CmdLine="" 
   for (( intx=0; intx <= ${IntFuncCall}-1 ; intx++ )) ; do 
    StrItemEvalCode=$( GetListRec --get ArrayFuncCall[${intx}] )
   
    StrPairLeft=${StrItemEvalCode/%:[A-Za-z0-9]*/}
    StrPairRight=${StrItemEvalCode/#[A-Za-z0-9]*:/} ;
    StrMsg="Pair « ${StrPairLeft} ; ${StrPairRight} » " ; 
    VerbHeader="DEBUG" VerbMsg=${StrMsg}  VerbDev=/dev/stderr VerbState=${IsVerbose} Verbosis 
    
    StrListVar=$( GetListRec --get StrVarListTransfert ) ;
    CmdLine=$( BVTestVarHold='' BVTestBoolVarName=\${${StrPairLeft}} BVTestBoolCase=True BVTestBoolAssertion='' BVTestIsPreambule=False BVTestScopeTest=local BVTestVTVVarA=${StrListVar} BVTestVTFnctA=${StrPairRight} BVTestIsValueToVar=True BVTestIsValueToVarAssert=True BoolVarTestVarCreation )  ; 
    eval ${CmdLine} ; 
    
   done   ; 
  }

  
  if [ "${Arg0:=--startservices}" == "--help"	] ; then 
    GetVarReference ${__call_locality[1]} ; 
    echo -ne "${StrSwitchMessages}" > /dev/stderr ; 
  elif [ "${Arg0:=--startservices}" == "--get" ] ; then 
   eval """local ArgGet=\${${ArrayArg[1]}}""" ; 
   echo -ne """${ArgGet}\n""" ;
  elif [ "${Arg0:=--startservices}" == "--list" ] ; then 
   eval $( __GetVarReferenceList ) ;	
  else
   eval $( VTVIsArrayStyleInsert=True \
           VTVIsValueReAssign=True \
           VTVIsValueToConvert=False \
           VTVValueEntry=${StrVarListTransfert} ValueToVariable ) __main_StartServices 
  fi 

 }


Overflowing a function like GetMemberRec, is described by last line of GetNbRec,

.. code:: shell

 ...
  local IntNbRec=$( eval """${StrCmd}""" ) ; 
  eval """GLRIntNbRec=${IntNbRec} GetListRec --get IntNbRec """  ; 
 }

This line allow transmission of the Number of record being taked back inside the not finished function GetMemberRec. Testing the recipe to see if the transfert making sense, removing last line from eval line doest not allow to function GetMemberRec to display the Number at all. We also Do Agile preemptive essay here to filter out the result and adding code after, but we do require to know the amount of file to query on of them and to not getting file that not exist. 
  
So Overflowing to correct value are not A setter definition but Acute design to transfert the finite informations into this application where finally hold the correct informations du to a correct procedure. We also know it can not change until you change from another file. But we do agree by calling main function GetListRec will definitively change the content of IntNbRec is changed and because GetNbRec will be called many times the function has it type re-defining existing and allowing the rest of the application to work with correct informations. 


:Note: 2953b00a-749e-11e6-8b1d-001e4c8856d6
:Title: Well compromised Recurrent function for low-use of stdout for variable transfert use. 
:Function: GetterByLineData
:Structural: Nested function-call & overlayed pragmatic function.

Nested function-call
--------------------

MdCd is an important tool and test-case to establish a datafile merely recognized like 
low-level certificate. This application create path, put templated structure of important 
file for your services . The default behavior is described by this box

Using Mdcd becoming mainstream, after port to Mint 17.3 Rosa which is Mate distribution with core of Xenial Ubuntu, I do profit from lack of dependence to add package installer inside some application and upgrading Mdcd, by getting out the Sha1sum agent that produce a validity context after creating the Path, dunping the structure file like .gitignore MANIFEST.in, README.rst it can add many more struture depending of the file-model described own to add it to Mdcd.  Registration of the action is comming and will also have it's «Jeton» inside SSHServicesRequest . Protection of Mdcd is keep inside the main Mdcd file and require only to push the location of the lock for a precise place accessible by any to allow strict survey and avoid multiple path creation in a backup-storyboard reading. 

A backup-storyboard... is Incremental awarness made by many application shelve to allow
 - reading the structure once and updating it based on time . 
 - Avoiding touching file recurrently to reduce access time in a network access. 
 -- Known to be important .htaccess inside webservices, a live-incremental backup with high priority on backuping change of .htaccess / .htpassword can lock the access to it and slowing the services respond. 

::

  While elaborating this backup-storyboard in late 2012 during first draft of fnct_lib for development of 
  UpdateSquashFS, set of tools was developped to update a btrfs tree with possibility to update the 
  SquashFS 4Gb or 8Gb boosted parameter by re-wrinting the usb-disk-writer to accept higher value ; an 
  update of squahfs pivot was bringing too much cpu time until I do realize fuse-fs stack a common 
  socket-file was not ignored and being put inside the squashfs device with all the command. Some update 
  were made to develop a so similar GetterByLineData application this one failed for problems of Stdout 
  output during _func_eval_cmd and producing error... A this moment the primary version of fnct_lib did 
  not handle the output individully and was not possible to make-it appart... In one word, the Ubuntu 
  9 to 10 was holding on arch 64 bit and working on a 16Gb partition to practice a pivot of 8 Gb after 
  update. A Somewhat StackSpace , DblSpace like microsoft did for version msdos 6.02 and beyond that 
  merely did not work for having same problems called file/buffer memory being a disk section being not 
  ignored and slowing the dblspace... 

.. code:: shell
 
 ###
 ### Here the actual helper by typing GetterByLineData --help
 ###
 
 Function GetterByLineData	
 Default Variable Value:
 Variable GBLDTailApps ,
 	Default Value:/usr/bin/tail
 Variable GBLDHeadApps ,
 	Default Value:/usr/bin/head
 Variable GBLDFileStats ,
 	Default Value:/usr/bin/wc
 Variable GBLDFileStatsOpt ,
 	Default Value:__APPS__ -c __FILE__
 Variable GBLDTailCmd ,
 	Default Value:__APPS__ -n 1
 Variable GBLDHeadCmd ,
 	Default Value:__APPS__ -n __INTLINE__
 Variable GBLDFileStoreInfo ,
 	Default Value:None
 Variable GBLDLineID ,
 	Default Value:1
 Variable GBLDVerbose ,
 	Default Value:False
 Variable GBLDAction ,
 	Default Value:FileSplitAction
 Variable GBLDActionReturnError ,
 	Default Value:False
 Following switch are available:

 	--startservices	Start the application normally.
 	--get		Return value of Internal Variable.
 	--list		List all Internal Pre-fixed Variable available to query or get.
 	--compword	Word Completion Provide a services to Extract on Demand all Pre-fixed Variable
 		 String inside this function.


.. code:: shell

 ...
 ###  
 ###  Application Box:
 ###  +GetterByLineData+----------------------------------------+
 ###  |                                                         |
 ###  |                                                         |
 ###  |Tree Order :                                             |
 ###  |                                                         |
 ###  |                                                         |
 ###  |           +----------------+GetHeader                   |
 ###  |GetFile+--+FileSplitAction                               |
 ###  |           +----------------+GetContent                  |
 ###  |                            |                            |
 ###  |                            +-----------ShaSum1Content   |
 ###  |                                                         |
 ###  +----------------------------------------------------------
   
Major Function coming with the Application :
Are all accessible thru GBLDAction where :
 
GetFile ---->Throw the whole content of the file
             GetFile is also First Order in the Execution.
 
GetHeader ----> Most of file are 2 lines height, Being a text-format of 
                2 lines, the lenght can be illimited for second one...
                In this case we have put the SHA1SUM of the content to
                proove the content in second line is safe and can be trusted.
  
 
 
GetContent ---> Get the content of second-text field. 

FileSplitAction ---> The intermediate action preceding GetHeader and GetFile

ShaSum1Content ----> The result of GetContent. 
 
 
- A tiny lexic appear by using ShaSum1Content and require to Call GetContent,
 
while this one query-back FileSplitAction that take GetFile. During the call of this structure, no varaible are query thru the stdout and are queryed thru Getter by using the mechanism of GetterByLineData --get ... Even Text Message are Array of Text a the root level of the GetterByLineData. 

 
Note: reference file 0f86b448-72f4-11e6-8b1d-001e4c8856d6 a un-approved chunk file will be acknoledged by ZenityFileEditor, but still require some work before frozing the integrity. GetterByLineData Also work with function call and external function call alike ZenityStructure can borought the GetterByLineData structure to replace the footprint of chunk developement. 
 

Overlayed Pragmatic Function.
-----------------------------
 
OPF, or Overlayed Pragmatic function are an atomic state of a function. While we are commonly drawing function based on lifetime, its intrinsic action are becoming overlayed if they are requested uring theirs execution.  An Non Overlayed Finite Function is also a Getter in a function and are commonly getting Finite and static result. Even enforcing the getter objectivity to answer to a parsing rules to exchange Tag into variable result it's an action within Non Overlayed Finite Function and result will still being the same if it's calling twice to get the same result. A Overlayed Pragmatic function is dressed like Cumulating layers where this example GetterByLineData had MAster layer being function GetFile it comonly the main function being called every time we do query a part or the whole file. 

.. code:: shell

 Application Box:
 +GetterByLineData+----------------------------------------------------+
 |                                                                     |
 |                                                                     |
 |Layer  ------------> Give Attribute to get Whole file                |
 |GetFile  +-----------------------------------------------------------+-----+
 |         |  Layer                                                    |     |
 |         |  FileSplitAction ----> Give Attribute of decision to split|     |
 |         |                        the file                           |     |
 |         |             +---------------------------------------------+-----+------+
 |         |  +----------|-----+GetHeader   Layer                      |     |      |
 |GetFile+-++FileSplitAction                GetXXXXX                   |     |      |
 |         |  +----------|-----+GetContent   +---> On Part we do trans-|     |      |
 |         |             |     |                   form into result    |     |      |
 |         |             |     |        +---------------------------+  |     |      |
 |         |             |     +--------+--ShaSum1Content           |  |     |      |
 |         |             |              |  Layer With one section   |  |     |      |
 |         |             |              |  we do Apply a Sha1Sum    |  |     |      |
 +---------+-------------+--------------+---------------------------+--+     |      |
           |             |              |                           |        |      |
           |             |              +---------------------------+        |      |
           +-------------+---------------------------------------------------+      |
                         |                                                          |
                         +----------------------------------------------------------+

------
	Setter
------
		
		* Not Developped yet *

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

Since this is available upon delivery of __GetVarReferenceCompWord from delivery 
of chunk 023102e0-1833-11e3-98a2-001b3875b29c after 2013-09-08. This is a way 
to maximize uses of Function Prefixed Variable being show by typing the Function 
Name and 'Tab' .

This is another services freeing memory from unused function. Not all function 
are enabling this feature being loaded by the /etc/init.d/Fnct.D/fnct_lib. 

This nominal feature transform our API into active services and standard being 
this Function Lib render it valid to install this services inside /etc/init.d 
	

-------------
	StartServices
-------------

Main Function or main definition started first. 

This switches is also implicit switche, if no one is called between --get, --list,
( --set  in later version ), --stopservices or even --help; --startservices will 
take effect. Belong to an  [ if / elif / n-elif / fi ] clause or BodyFunc 
controller specified at the end of a Fnct.D services/function, it should mandatory 
call __start_services() sub function or should have a first sub-function being 
called or it should remain  between --start-services switche detection inside 
[ if / elif / n-elif / fi ], which is big and not correctly formed. You may loose 
your point of view calling everything that have not less than 5 line of code 
inside an if-n-elif clause from your first function. 


-------------
	StopServices
-------------

Simply stop a services... asking to uses --compword as example with 
ZenityShellEval because you alway use it and did not remember all the function 
Pre-fixed variables, activating --compword from ZenityShellEval --compword should 
be disabled with --stopservices to cancel the Compword engine... Another 
example LoopJackConnection should have a --stopservices as it's original design 
to start a Jack-deamon and  should manage it... Probably in near future this 
Readme.rst will own much detail. Also AgentLoader being a wrap-up around 
StartAgentSSH, StartAgentSSH had --stopservices but use Prefixed-Variable to 
disable SSH environment from ssh-agent and ssh-add and are not mandatory 
hard-presented to offer an effective management. StartAgentSSH had possibility 
to kill pid of ssh-agent and might also unset variable too to fully disable an
SSH-Agent prior to re-install a certificate of an ssh entry. This is also
why you might be prompted to enter a super-user password to stop an AgentLoader.




Operator
========

There is few Operator known inside the fnct_debian_lib from Fnct.D, but some 
function depend of Prefixed-Variable Transport Mechanism and to prevent writing
informations uselessly a specific Operator was developped during Pre-Fixed variable
writing, known to be the '+' Operator. 


Array Case
----------

Since implementation of Array Insertion state being comma separated value, an 
example named ValueToVariable, a mechanism to perform an action to create a string
based on declaration of value before transfering them inside a function play a 
key in extruding function from an inside context to an external context. This 
function uses a Pre-fixed Variable named VTVValueEntry and using another variables
to activate an Array Insertion state named VTVIsArrayStyleInsert, when set to True
all entry are comma separated or 'virgule' char is required to insert valu in chain.


example from function MakeLink() from revision db848dcd15d771cb5d3b369783aa54e4339f6b98
and lower. 

.. code:: shell
	
	unset MakeLink
	function MakeLink() 
	{ 
	 local ArrayArg=( $* );
	 local __call_locality=( ML MakeLink );
	 local Arg0=${ArrayArg[0]} ;
	
	...
		
	local StrSwitchMessages="${StrSwitchesShow}${StrStartSwitches}\n${StrGetMsgSwitches}\n${StrListMsgSwitches}\n" ;

	if [ "${Arg0:=--startservices}" == "--help"	] ; then 
	  GetVarReference ${__call_locality[1]} ; 
	  echo -ne "${StrSwitchMessages}" > /dev/stderr ; 
	elif [ "${Arg0:=--startservices}" == "--get" ] ; then 
	  eval """local ArgGet=\${${ArrayArg[1]}}""" ; 
	  echo -ne """${ArgGet}\n""" ;
	elif [ "${Arg0:=--startservices}" == "--list" ] ; then 
	  eval $( __GetVarReferenceList ) ;
	elif [ "${Arg0:=--startservices}" == "--startservices" ] ; then 
	  eval $( VTVIsArrayStyleInsert=True \
	  VTVValueEntry=StrRootOrigin,IsMake,StrAction,StrFileSearch,StrAliasFind,StrLinkFormat,StrLinkApps,StrLinkOpt,StrDebugLink,IsRenameDest,StrMoveSuffix \
	  VTVIsValueReAssign=True \
	  VTVIsValueToConvert=False \
	  VTVIsArrayStyleInsert=True \
	  ValueToVariable ) __main_StartServices
	fi


	}


It clearly show the VTVValueEntry from ValueToVariable having an Array Insertion 
based on ',' <virgule> comma separated .

.. code:: shell
	
	eval $( VTVIsArrayStyleInsert=True \
	VTVValueEntry=StrRootOrigin,IsMake,StrAction,StrFileSearch,StrAliasFind,StrLinkFormat,StrLinkApps,StrLinkOpt,StrDebugLink,IsRenameDest,StrMoveSuffix \
	VTVIsValueReAssign=True \
	VTVIsValueToConvert=False \
	VTVIsArrayStyleInsert=True \
	ValueToVariable ) __main_StartServices

	
Escaped Dollar Sign Exception.
------------------------------

Unlike case for \\$ being noted inside an important function it's more important to
talk about this idiom like a SHALL-TO apply correctly and named inside exception 
to save time if error occur in debugging scene to let you discover and important 
part in uses of Escaped-Dollard sign inside case BoolVarTestVarCreation. 

note:
Assuming A variable named IsRenameDest hold following value : 

.. code:: shell
	
	IsRenameDest = 'Value_From_IsRenameDest'
	### A common error, to not respect a Variable named Is... or Bool... to 
	### own True/False Value... 

The Specific reason to uses \\${Variable} inside the BoolVarTestVarCreation by
attribuying a value to BVTestBoolVarName is logically a process structure to 
respect... The interpreted value from this Fabbed-If statement is :

.. code:: shell
	
	if [ "\${IsRenameDest}" == "True" ] ; ... ; fi 
	
And not 

.. code:: shell
	
	if [ "Value_From_IsRenameDest" == "True" ] ; ... ; fi 


It show in what a Evaluation brace was located at the beginning of the 
BoolVarTestVarCreation, to allow entry of information thru a Variable present 
inside the function BoolVarTestVarCreation... Having fixe information mean we 
can remove an arbritrary eval $( ) executive brase from this function and should 
return the same answer if there is nothing to interpret. 


example from function MakeLink() from revision db848dcd15d771cb5d3b369783aa54e4339f6b98
and lower. 

.. code:: shell
	
	unset MakeLink
	function MakeLink() 
	{
	 ...
	 function __Link()
	 {
	  local __call_locality=( _L __Link ) ;
	  local ArrayArg=( $* ) ; 
	  local StrVarSrc=${StrRootOrigin}/${StrFile} ;
	  local StrEval=${StrLinkFormat} ; 
	  
	  local StrFileReplace=$( echo "${StrFile}" | sed 's/\(\.[a-z]*\)/${StrMoveSuffix}\1/g' ) ; 

			  
	  StrEval=${StrEval//__LINK__/${StrLinkApps}} ;
	  StrEval=${StrEval//__OPT__/${StrLinkOpt}} ; 
	  StrEval=${StrEval//__SRC__/${StrVarSrc}} ; 
	  StrEval=${StrEval//__DEST__/${StrFile}}
	  if [ ${StrDebugLink} == "False" ] ; then 
	   eval $( BVTestVarName=StrToMove \
			   BVTestVarHold='' \
			   BVTestBoolVarName=\${IsRenameDest} \
			   BVTestBoolCase=True \
			   BVTestBoolAssertion='$( mv ${StrFile} ${StrFileReplace} )' \
			   BVTestScopeTest=local \
			   BoolVarTestVarCreation ) ;   
	   eval "${StrEval}" ;
	   

	}	
	
Extracted from this Code following line include a \\$ Escaped Dollar sign to 
prevent Shell and eval brace to evaluate this value for a specific reason...
	
.. code:: shell
	
	eval $( BVTestVarName=StrToMove \
			BVTestVarHold='' \
			BVTestBoolVarName=\${IsRenameDest} \
			BVTestBoolCase=True \
			BVTestBoolAssertion='$( mv ${StrFile} ${StrFileReplace} )' \
			BVTestScopeTest=local \
			BoolVarTestVarCreation ) ; 
			

Noticed the searched value was \\${IsRenameDest} to prevent the Bash to interpret 
it directly . 

executing this BoolVarTestVarCreation independently will report this to your 
shell terminal ... 

.. code:: shell
	
	local StrToMove="CONTENT" ;
	if [ "${IsRenameDest}" == "True" ]  ; then
	  StrToMove=$( mv ${StrFile} ${StrFileReplace} ) ;
	fi


... And now the "CONTENT" problem will be explain or be corrected in later 
revision... Nothing is perfect in a draft-definition Shell-Library.


having eyes of a falcon, you may seek for another exception, the mv statement
passed without interpreting the StrFile and StrFileReplace... this mean
the single-apostrophe " ' " work too like interpret as-is the content of what 
single-apostrophe hold... This is good in some case, bad in all other, it may
prevent it to be interpreted at all if no eval was used to interpret which is
avoided here because all case from BoolVarTestVarCreation since no code 
generation inside file is allowed, from Bash-To-Bash Level. Python-to-Bash and 
Sqlite-To-Bash or Bash-from-Sqlite are exception for having their own memory 
support to hold temporary code. ZenityShellEval is developping chunk of code out
of the /etc/init.d/Fnct.D and imply being called from fnct_lib or fnct_debian_lib
of any fnct_... or _sub_... and future revision of fnct_debian_lib will force 
checking integrity of a developped chunk deposed inside /etc/init.d/Fnct.D 


Single-apostrophe case 
----------------------

Are simply usefull in generating Low-Level nested function aggregation from one
line only... Always used inside Pre-fixed Variable to add an exrta line or 
executive brace to allo passing a future code to be execute at the end of 
evaluation brace it was agreed inside Bash since version 2.99 to allow passing 
and passing code in between Single-apostrophe until a evaluation statement ( or 
called here evaluation brace implementing  eval and \$( ) altogether ). 

Noted from know error-prone essay, having no evaluation statement will show at 
the end presence of Single-apostrophe in the output... Some dislike it and 
remove uses of Single-apostrophe in some declaration, will see affected result 
by looses of space and Un-Interpreted result if a Prefixed-Variable are used 
in the way :

.. code:: shell
	
	### From calling function ATest. 
	ATValue=A Stream or a Flow Information ATest
	
	### will throw error and display from variable ATValue
	### will probably only own 'A'
	
	### From calling function ATest on good way .
	ATValue='A Stream or a Flow Information' ATest
	### variable ATValue will own 'A Stream or a Flow Information'
	
