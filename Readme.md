### #######################################################################################################
### These are Common Bash-Object for FnctList _pre-Alpha-Init.d re-implementation of
### services in Ubuntu/Debian/Fedora, which pass secessfully some handy-test in 3 years of developpement.
### This will serve in generation of test and auto-creation of test, upcoming Breaker, a helper in Fuse
### for deployment in many Arm-like, tiniscale and precious gadget un 5th generation os of in market of
### pc-to-embedded Envirronement.
###
### While bash start to offer more than conventional Shell, memory start to be very affordable, many
### Boot-loader start to offer socket for Bash-like comportement and will be soon be part os Posix
### conformance in Command-line automation, and FnctList is a moderated Sub-API, a Wrapping in
### automatisation of services and check-up services.
###
### By The design, it will offer safe-container and safe method of transfering information in management
### of services and will be able to perform gain in check-up in stable envirronement by skipping check
### in Read-only mode of certains loading... Like, If RO-File-system is older than creation date, it will
### be able to query OS to add trigger to perform less operation and load information faster in subsequent
### startup... Idem with services with less touched file configuration. It will be able also to increase
### oeuvrability of uncommon option like Disk-To-Stream accesibility and Memory-To-Stream Uses, aka
### Network-Booting, Network Memory Pool and Network Application Ground-up.
###
### Also , Methodology of implementation is strict and observe Object-oriented transcription in
### transformation of many available Byte-coded of IDL re-interpretation in super-tiny scalling...
###
### Certains option will be implemented in second-stage of developpement, and
### creating wrapper for un-accessible Gpl-services or fast-implementation prototyping,
### switch for DTD extraction of Shell-Application program and XML Verbosis and XML object induction to
### help developpement of functionnality implementation in fnct_list .
###
### #######################################################################################################

Common implementation work at least by calling these script first :

. /etc/init.d/Fnct.d/fnct__in_for
. /etc/init.d/Fnct.d/_sub_call_locality


### Some adaptation need to be done to adapt the roll-up function list inside fnct_var_decl and fnct_lib 
### to be use but all structure are almost valid 


### Following doc is not yet ported to a wiki...


### #######################################################################################################
### These are Common Bash-Object for FnctList _pre-Alpha-Init.d re-implementation of
### services in Ubuntu/Debian/Fedora, which pass secessfully some handy-test in 4 years of developpement.
### This will serve in generation of test and auto-creation of test, upcoming Breaker, a helper in Fuse
### for deployment in many Arm-like, tsiniscale and precious gadget un 5th generation os of in market of 
### pc-to-embedded Envirronement. 
###
### While bash start to offer more than conventional Shell, memory start to be very affordable, many 
### Boot-loader start to offer socket for Bash-like comportement and will be soon be part os Posix 
### conformance in Command-line automation, and FnctList is a moderated Sub-API, a Wrapping in 
### automatisation of services and check-up services.
###
### By The design, it will offer safe-container and safe method of transfering information in management
### of services and will be able to perform gain in check-up in stable envirronement by skipping check
### in Read-only mode of certains loading... Like, If RO-File-system is older than creation date, it will
### be able to query OS to add trigger to perform less operation and load information faster in subsequent
### startup... Idem with services with less touched file configuration. It will be able also to increase
### oeuvrability of uncommon option like Disk-To-Stream accesibility and Memory-To-Stream Uses, aka
### Network-Booting, Network Memory Pool and Network Application Ground-up. 
###
### Also , Methodology of implementation is strict and observe Object-oriented transcription in 
### transformation of many available Byte-coded of IDL re-interpretation in super-tiny scalling...
###
### Certains option will be implemented in second-stage of developpement, and 
### creating wrapper for un-accessible Gpl-services or fast-implementation prototyping, 
### switch for DTD extraction of Shell-Application program and XML Verbosis and XML object induction to
### help developpement of functionnality implementation in fnct_list .
###
### #######################################################################################################


### #######################################################################################################
###
### Variable Evaluation Statement : 
### Service, Problems of common command pass-thru... 
### There is a Big problems with role of $* [ $1, $2 $3, $3... ], handling when un-handy want a magic wand
### do to everything... If server does-not turn into "Whoss'h" and crash for un-handy beginner, This is why
### Services stating from Red-hat and some close friend start to elaborate the start/stop/restart and some
### like Apache project may be friend by doing standard like this, because having swith for -condtart -start-half
### -test-start, -start-test , may understand someday it's good, but variable play like : 
### /etc/init.d/httpd AServicesShould=start When=testok AndIfItFails=dontcalltheboss 
### even written in disorder, a parser should understand... 
### 
### Well, 3 or four year or intense Cygwin, Mingw32/64 FedoraCore, Ubuntu, Debian will help to translate 
### Any Services in growable form based or course in the Command item available in Bash 3.x... which 
### implement simple state of variable and marshalled-state of variable. Marshalled-State will be introduced
### with fnct_QueryDebugManager is almost a golden-state of the art of Command-stepping where a 
### Services-Bash-Command should Worry... Too beautiful, It Evaluate a command and based on the function
### name Like, Having a function AServicesShould, it will parse automatically AServicesShouldCallType and 
### AServicesShouldDebug, where you can see, and can 'Octroi' right or state-execution returned value
### and control statement while you can create on-the-fly function like Pre-filter, Process and post-filter
### result....
### 
### Benefit of parse_newvar : 
### - While Skeleton of function can be Hard-stated, they can depend on test and possibly result from test.
### These result and test are subjective to value where in any occasion, function and program fail when 
### there is no value or no predicated value.... Bash and many shells have this switches where a value
### assigned has variable may hold pre-defined statement, like :
### 
### function this_do()
### {
###   
###   if [ ${ActionOn:=echo} == "echo" ] ; then
###    eval "${ActionOn=echo} \"Hello world !!!\""  ;
###   fi 
### } 
### 
### While ActionOn is declared with nothing, while a test is make on The content, ActionOn will
### take association of echo and evaluation will allow using 'echo' as valid command... 
### 
### Note : There is no statement over variable ActionOn if it's local variable or global but this following
### test will give-us better understanding, why best-friend variable will fail altogheter. 
### 
### ### In the main program : 
###   ActionOn=printf
###   function this_do
###   this_can_no_do
### 
### function this_do()
### {
###   if [ ${ActionOn:=echo} == "echo" ] ; then
###     eval "${ActionOn=echo} \"Hello world !!!\""  ; 
###   fi 
### } 
### 
### function this_can_no_do()
### {
###   if [ ${ActionOn:=echo} == "echo" ] ; then
###     eval "${ActionOn=echo} \"Hello world !!!\""  ;  
###   elif  [ ${ActionOn:=echo} == "printf" ] ; then
###    echo "Action : ${ActionOn} is not allowed. "
###   fi
### }
### 
### ----
### executed back to back in a main program you will get One get nothing and the othe one saying "Action : printf is not allowed. " .
### A normal demonstration of hard-stated variable with finite prediction. 
### 
### While parse_new_var help...
### 
### By Adding after function header :
###  eval $( __call_locality ) ; "Which tipically replace "local ArrayArg=( $* ) ;"                      }
###  eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ;  }-- In a near future both will be merged and 
###                                                                                                      }   probably be able to store in NameVariable other 
###                                                                                                          than ArrayArg...
### will allow injection of variable while calling function :
### 
### Another Main Program Demonstration with idem Function this_do and this_can_no_do
### 
### 
### * Demonstration of __in_for is also demonstrated inside this comment, but this function is 
### another gift of idiom-technology which is not yet demonstrated in corpus of 80' like Bash
### C-Shell or KSH, but API like Python and exceptionnally PHP own map_filter which alter directly
### structure ArrayStructure with Function-Pointer-like call inside map_filter...
### Exceptionnaly This parenthesis of functor_map_filter_like is not well evaluated and only
### logical body is logic and may become equivalent with some decent work...  
### 
### ### __in_for Example ToRead
### while __in_for coupled with an idiom or functor like
### function functor_map_filter_like()
### {
###   eval $( __call_locality ) ;
###   eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
###   eval "ArrayName[${int${ArrayName}}]=$( echo ${${ArrayName}[${int${ArrayName}}]} | ${ProgName:=base64} ${ProgOption:=--wrap=0} )" ; 
### }
### eval $( __in_for ArrayArgumentToEncode functor_map_filter_like ArrayName=ArrayArgumentToEncode ) ;
### --- > Will Encode all information in ArrayArgumentToEncode and will convert-them into base64, thru 
### Application base64 with option --wrap=0 option which remove "decorator" of carriage return in this context.
### 
### ### end of example
### 
### 
### ### Main ---
### ArrayFuncList=( this_do this_can_no_do ) ;
### ActionOn=printf ; 
### function FunctorContext()
### {
###   eval $( __call_locality ) ;  
###   eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
###   
###   function ExceptionFunctorContext()   
###   { 
###     echo "Warning No Function was added in Secure Function List."
###     return 1 ; 
###   }
###   function FilterContext()
###   {
###     eval $( __call_locality ) ;  
###     eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
###     
###     if [ ${ArrayFuncList[${intArrayFuncList}]} == "this_can_no_do" ] ; then 
###       eval "${ArrayFuncList[${intArrayFuncList}]} ActionMake=${ActionOn:=ExceptionFunctorContext} ActionOn=echo" ;  
###     fi  
###   }
###   eval $( __in_for ArrayFuncList FilterContext ActionOn=${ActionOn} ) ; 
###   
### }
### 
### FunctorContext 
### 
### ### End Main
### In this context, while executing FunctorContext, now ActionOn will hold 'echo' when this_do will be inspected
### by FunctorContext.FilterContext because it filter the ActionOn and will push printf in ActionMake Where
### nothing is involved in function this_do if parse_newvar is called with ${EFunctionTypeDecl}, information
### of ActionMake will be lost, but replacing it with ${EGlobalTypeDecl} will preserve ActionMake... 
### Management of parse_newvar will be explained in description in the dedicated topic, concept of 
### Variable creation and the latency_time of -remannent information in symetric variable declaration- ... 
### 
### To try, Correcting All concept. Let you work with bash wreking problems of evaluation... 
### A Work is in trial, and parsing is about to win... some demonstration will help. Also building
### protoid or near-prototype thru awk is also good, but switch system( ) if common problem in beginner
### which does not understand it provide a fake_root_like envirronement... Where things won't come back
### and won't be changed when stuff is parsed and ready to executed... 
### And because QueryDebugManager is so helpful and cheap of creating order of priority with Assert like 
### __FUNCT__CallType And __FUNCT__Debug, overcharging some operator in logical equation or simple 
### Addition, parenthesis, division and multiplication will show how mathematic and function calling
### convention will probably merge withing 10 years and less in programmation and automation, we will
### get rid of Function test() and foo* bar() which hold good concept of uses of bad name in programmation...
### 
### Hypothetic Demonstration:
### CallType : have a least priority, because it's the end of equation.
### Debug : is a factoring method and does not impact in priority
### ParseWith : Will have parenthesis equivalent priority because the content will be parsed
### Filter : Will have a Division Like priority, for it's ability to fraction information and even
### create sub-type like ln(ArgType)/ln(N)
### __If : will have a multiplication like priority, an ability to increase the amount of possibility
###        based on Compund Analysis which is a decendend of Filter of result from ParseWith...
### 
### Ex : 
### /** Generated Content, will remain secret as long Debug is not passed in parameter for following clauses-function :
###      __AlmostVoid.__Functor_Protoid
### **/
### Function __AlmostVoid()
### {
###   local ArrayParser=( __TAG__ __ISFILE__ __ISEXEC__ ) ;
###   local ArrayRecallArg=( X19GdW5jdG9yX1Byb3RvaWREZWJ1Zz0gX19GdW5jdG9yX1Byb3RvaWRDYWxsVHlwZT0K ) ;
###   eval $( __call_locality ) ;  
###   local StrFuncName=__AlmostVoid ;
###   eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
###   function __Functor_Protoid()
###   {
###     eval $( __call_locality ) ;  
###     local StrFuncName=${StrFuncName}.__Functor_Protoid ;
###     eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
###     local EvalCmd=( eval \$( __in_for ArrayParser  ) ) ;
###     eval $( __CallType ) ;
###   }
###   local EvalCmd=( eval \$( __in_for ArrayArg __Functor_Protoid base64=${ArrayRecallArg[0]} ) ;
###   eval $( __CallType ) ; 
### }
### 
### ### End Main
### 
### However another function craft-us a query like a HTTP server receive a POST Like command :
### ### Mini-Main
### __AlmostVoid base64=X19GdW5jdG9yX1Byb3RvaWREZWJ1Zz0gX19GdW5jdG9yX1Byb3RvaWRDYWxsVHlwZT0gUGFyc2VyPVEyOTFiblJsY2oxZlgxUkJSMTlmSUVaSlRFVTlMMlYwWXk5cGJtbDBMbVF2Wm01amRDNWtMMlp1WTNSZmJHbGlJRVpUVTNSeVpXRnRWR1Z6ZEQxSlprVjRhWE4wSUVsbVJYaGxZejFmWDBsVFJWaEZRMTlmQ2c9PSAK
### ### End Main 
### 
### P.S. : This is the resulting function after calling QueryAutoFunc with :
### QueryAutoFunc Body=__AlmostVoid BodyTypeWith=new_var BodyCallType=__in__for BodyInFor=ArrayArg,__Functor_Protoid BodyInForArgType=base64 __AlmostVoidBody=__Functor_Protoid __AlmostVoidBodyRecallArg=__Functor_Protoid __AlmostVoidBodyTypeWith=new_var
### And User add extra setting from Specific Context. He want to ensure transition of variable between AlmostVoid and __Functor_Protoid . 
### 
### 
### In Fact : Value __Functor_ProtoidDebug=X19GdW5jdG9yX1Byb3RvaWREZWJ1Zz0gX19GdW5jdG9yX1Byb3RvaWRDYWxsVHlwZT0gUGFyc2VyPVEyOTFiblJsY2oxZlgxUkJSMTlmSUVaSlRFVTlMMlYwWXk5cGJtbDBMbVF2Wm01amRDNWtMMlp1WTNSZmJHbGlJRVpUVTNSeVpXRnRWR1Z6ZEQxSlprVjRhWE4wSUVsbVJYaGxZejFmWDBsVFJWaEZRMTlmQ2c9PSAK
### only hold : __Functor_ProtoidCallType= Parser=Q291bnRlcj1fX1RBR19fIEZJTEU9L2V0Yy9pbml0LmQvZm5jdC5kL2ZuY3RfbGliIEZTU3RyZWFtVGVzdD1JZkV4aXN0IElmRXhlYz1fX0lTRVhFQ19fCg==
### And Parser Value Encapsulated withing this first Base64 : Q291bnRlcj1fX1RBR19fIEZJTEU9L2V0Yy9pbml0LmQvZm5jdC5kL2ZuY3RfbGliIEZTU3RyZWFtVGVzdD1JZkV4aXN0IElmRXhlYz1fX0lTRVhFQ19fCg==
### will hold : Counter=__TAG__ FILE=/etc/init.d/fnct.d/fnct_lib FSStreamTest=IfExist IfExec=__ISEXEC__
### 
### 
### Note :
### AcquireFSStream can potentially parse information in Base64 freely and avoid complex exception... 
### Idem for QueryDebugManeger which transfer Element like Variable in Base64 for security purposes and 
### lack of security context... Where this one can get parameter from file or from pipe or from 
### callable object like network connection, where Endian and Marshalling Object are common in Object envirronement, 
### Java, python and even Perl can own this type of serialization...
### 
### Second note... This is generated function from prototype QueryAutoFunc which is on-the-fly structure
### creation... And since I discover bash parser in visual-code-context I Free out domain of 
### of hand-made function to create visual conception in depth to allow shell creation command in good
### visual approach thru these type of widget discovered in a contract with TreeTechnologies in 2005-2006,
### Where some widget in Perl was asked to hide some content from manager for some law regulation inside 
### Canadian territories and right to manage without having rigth to see... quite curious but hilarous in
### hand of whom ask-it... probably been paied to see my skill's rather than having real thing to do...

### #######################################################################################################

