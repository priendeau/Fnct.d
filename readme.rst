### Header 6

-------------------------------------------------------------------------------------------------------------
These are Common Bash-Object for FnctList _pre-Alpha-Init.d re-implementation of
services in Ubuntu/Debian/Fedora, which pass secessfully some handy-test in 3 years of developpement.
This will serve in generation of test and auto-creation of test, upcoming Breaker, a helper in Fuse
for deployment in many Arm-like, tiniscale and precious gadget un 5th generation os of in market of
pc-to-embedded Envirronement.

While bash start to offer more than conventional Shell, memory start to be very affordable, many
Boot-loader start to offer socket for Bash-like comportement and will be soon be part os Posix
conformance in Command-line automation, and FnctList is a moderated Sub-API, a Wrapping in
automatisation of services and check-up services.

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

-------------------------------------------------------------------------------------------------------------
Common implementation work at least by calling these script first :

. /etc/init.d/Fnct.d/fnct__in_for
. /etc/init.d/Fnct.d/_sub_call_locality


Some adaptation need to be done to adapt the roll-up function list inside fnct_var_decl and fnct_lib 
to be use but all structure are almost valid 


Following doc is not yet ported to a wiki...


-------------------------------------------------------------------------------------------------------------
These are Common Bash-Object for FnctList _pre-Alpha-Init.d re-implementation of
services in Ubuntu/Debian/Fedora, which pass secessfully some handy-test in 4 years of developpement.
This will serve in generation of test and auto-creation of test, upcoming Breaker, a helper in Fuse
for deployment in many Arm-like, tsiniscale and precious gadget un 5th generation os of in market of 
pc-to-embedded Envirronement. 

While bash start to offer more than conventional Shell, memory start to be very affordable, many 
Boot-loader start to offer socket for Bash-like comportement and will be soon be part os Posix 
conformance in Command-line automation, and FnctList is a moderated Sub-API, a Wrapping in 
automatisation of services and check-up services.

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

-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------

Variable Evaluation Statement : 
Service, Problems of common command pass-thru... 
There is a Big problems with role of $* [ $1, $2 $3, $3... ], handling when un-handy want a magic wand
do to everything... If server does-not turn into "Whoss'h" and crash for un-handy beginner, This is why
Services stating from Red-hat and some close friend start to elaborate the start/stop/restart and some
like Apache project may be friend by doing standard like this, because having swith for -condtart -start-half
-test-start, -start-test , may understand someday it's good, but variable play like : 
/etc/init.d/httpd AServicesShould=start When=testok AndIfItFails=dontcalltheboss 
even written in disorder, a parser should understand... 

Well, 3 or four year or intense Cygwin, Mingw32/64 FedoraCore, Ubuntu, Debian will help to translate 
Any Services in growable form based or course in the Command item available in Bash 3.x... which 
implement simple state of variable and marshalled-state of variable. Marshalled-State will be introduced
with fnct_QueryDebugManager is almost a golden-state of the art of Command-stepping where a 
Services-Bash-Command should Worry... Too beautiful, It Evaluate a command and based on the function
name Like, Having a function AServicesShould, it will parse automatically AServicesShouldCallType and 
AServicesShouldDebug, where you can see, and can 'Octroi' right or state-execution returned value
and control statement while you can create on-the-fly function like Pre-filter, Process and post-filter
result....

Benefit of parse_newvar : 
- While Skeleton of function can be Hard-stated, they can depend on test and possibly result from test.
These result and test are subjective to value where in any occasion, function and program fail when 
there is no value or no predicated value.... Bash and many shells have this switches where a value
assigned has variable may hold pre-defined statement, like :

function this_do()
{
  
  if [ ${ActionOn:=echo} == "echo" ] ; then
   eval "${ActionOn=echo} \"Hello world !!!\""  ;
  fi 
} 

While ActionOn is declared with nothing, while a test is make on The content, ActionOn will
take association of echo and evaluation will allow using 'echo' as valid command... 

Note : There is no statement over variable ActionOn if it's local variable or global but this following
test will give-us better understanding, why best-friend variable will fail altogheter. 

In the main program : 
  ActionOn=printf
  function this_do
  this_can_no_do

function this_do()
{
  if [ ${ActionOn:=echo} == "echo" ] ; then
    eval "${ActionOn=echo} \"Hello world !!!\""  ; 
  fi 
} 

function this_can_no_do()
{
  if [ ${ActionOn:=echo} == "echo" ] ; then
    eval "${ActionOn=echo} \"Hello world !!!\""  ;  
  elif  [ ${ActionOn:=echo} == "printf" ] ; then
   echo "Action : ${ActionOn} is not allowed. "
  fi
}

-------------------------------------------------------------------------------------------------------------

executed back to back in a main program you will get One get nothing and the othe one saying "Action : printf is not allowed. " .
A normal demonstration of hard-stated variable with finite prediction. 

While parse_new_var help...

By Adding after function header :
 eval $( __call_locality ) ; "Which tipically replace "local ArrayArg=( $* ) ;"                      }
 eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ;  }-- In a near future both will be merged and 
                                                                                                     }   probably be able to store in NameVariable other 
                                                                                                         than ArrayArg...
will allow injection of variable while calling function :

Another Main Program Demonstration with idem Function this_do and this_can_no_do


* Demonstration of __in_for is also demonstrated inside this comment, but this function is 
another gift of idiom-technology which is not yet demonstrated in corpus of 80' like Bash
C-Shell or KSH, but API like Python and exceptionnally PHP own map_filter which alter directly
structure ArrayStructure with Function-Pointer-like call inside map_filter...
Exceptionnaly This parenthesis of functor_map_filter_like is not well evaluated and only
logical body is logic and may become equivalent with some decent work...  

__in_for Example ToRead
while __in_for coupled with an idiom or functor like
function functor_map_filter_like()
{
  eval $( __call_locality ) ;
  eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
  eval "ArrayName[${int${ArrayName}}]=$( echo ${${ArrayName}[${int${ArrayName}}]} | ${ProgName:=base64} ${ProgOption:=--wrap=0} )" ; 
}
eval $( __in_for ArrayArgumentToEncode functor_map_filter_like ArrayName=ArrayArgumentToEncode ) ;
--- > Will Encode all information in ArrayArgumentToEncode and will convert-them into base64, thru 
Application base64 with option --wrap=0 option which remove "decorator" of carriage return in this context.

end of example


Main ---
ArrayFuncList=( this_do this_can_no_do ) ;
ActionOn=printf ; 
function FunctorContext()
{
  eval $( __call_locality ) ;  
  eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
  
  function ExceptionFunctorContext()   
  { 
    echo "Warning No Function was added in Secure Function List."
    return 1 ; 
  }
  function FilterContext()
  {
    eval $( __call_locality ) ;  
    eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
    
    if [ ${ArrayFuncList[${intArrayFuncList}]} == "this_can_no_do" ] ; then 
      eval "${ArrayFuncList[${intArrayFuncList}]} ActionMake=${ActionOn:=ExceptionFunctorContext} ActionOn=echo" ;  
    fi  
  }
  eval $( __in_for ArrayFuncList FilterContext ActionOn=${ActionOn} ) ; 
  
}

FunctorContext 

End Main
In this context, while executing FunctorContext, now ActionOn will hold 'echo' when this_do will be inspected
by FunctorContext.FilterContext because it filter the ActionOn and will push printf in ActionMake Where
nothing is involved in function this_do if parse_newvar is called with ${EFunctionTypeDecl}, information
of ActionMake will be lost, but replacing it with ${EGlobalTypeDecl} will preserve ActionMake... 
Management of parse_newvar will be explained in description in the dedicated topic, concept of 
Variable creation and the latency_time of -remannent information in symetric variable declaration- ... 

To try, Correcting All concept. Let you work with bash wreking problems of evaluation... 
A Work is in trial, and parsing is about to win... some demonstration will help. Also building
protoid or near-prototype thru awk is also good, but switch system( ) if common problem in beginner
which does not understand it provide a fake_root_like envirronement... Where things won't come back
and won't be changed when stuff is parsed and ready to executed... 
And because QueryDebugManager is so helpful and cheap of creating order of priority with Assert like 
__FUNCT__CallType And __FUNCT__Debug, overcharging some operator in logical equation or simple 
Addition, parenthesis, division and multiplication will show how mathematic and function calling
convention will probably merge withing 10 years and less in programmation and automation, we will
get rid of Function test() and foo* bar() which hold good concept of uses of bad name in programmation...

Hypothetic Demonstration:
CallType : have a least priority, because it's the end of equation.
Debug : is a factoring method and does not impact in priority
ParseWith : Will have parenthesis equivalent priority because the content will be parsed
Filter : Will have a Division Like priority, for it's ability to fraction information and even
create sub-type like ln(ArgType)/ln(N)
__If : will have a multiplication like priority, an ability to increase the amount of possibility
       based on Compund Analysis which is a decendend of Filter of result from ParseWith...

Ex : 
/** Generated Content, will remain secret as long Debug is not passed in parameter for following clauses-function :
     __AlmostVoid.__Functor_Protoid
**/
Function __AlmostVoid()
{
  local ArrayParser=( __TAG__ __ISFILE__ __ISEXEC__ ) ;
  local ArrayRecallArg=( X19GdW5jdG9yX1Byb3RvaWREZWJ1Zz0gX19GdW5jdG9yX1Byb3RvaWRDYWxsVHlwZT0K ) ;
  eval $( __call_locality ) ;  
  local StrFuncName=__AlmostVoid ;
  eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
  function __Functor_Protoid()
  {
    eval $( __call_locality ) ;  
    local StrFuncName=${StrFuncName}.__Functor_Protoid ;
    eval $( parse_newvar ${EFunctionTypeDecl} ${TypeDebugKey[${EParamNoDebugDecl}]} ${ArrayArg[@]} ) ; 
    local EvalCmd=( eval \$( __in_for ArrayParser  ) ) ;
    eval $( __CallType ) ;
  }
  local EvalCmd=( eval \$( __in_for ArrayArg __Functor_Protoid base64=${ArrayRecallArg[0]} ) ;
  eval $( __CallType ) ; 
}

End Main

However another function craft-us a query like a HTTP server receive a POST Like command :
Mini-Main
__AlmostVoid base64=X19GdW5jdG9yX1Byb3RvaWREZWJ1Zz0gX19GdW5jdG9yX1Byb3RvaWRDYWxsVHlwZT0gUGFyc2VyPVEyOTFiblJsY2oxZlgxUkJSMTlmSUVaSlRFVTlMMlYwWXk5cGJtbDBMbVF2Wm01amRDNWtMMlp1WTNSZmJHbGlJRVpUVTNSeVpXRnRWR1Z6ZEQxSlprVjRhWE4wSUVsbVJYaGxZejFmWDBsVFJWaEZRMTlmQ2c9PSAK
End Main 

P.S. : This is the resulting function after calling QueryAutoFunc with :
QueryAutoFunc Body=__AlmostVoid BodyTypeWith=new_var BodyCallType=__in__for BodyInFor=ArrayArg,__Functor_Protoid BodyInForArgType=base64 __AlmostVoidBody=__Functor_Protoid __AlmostVoidBodyRecallArg=__Functor_Protoid __AlmostVoidBodyTypeWith=new_var
And User add extra setting from Specific Context. He want to ensure transition of variable between AlmostVoid and __Functor_Protoid . 


In Fact : Value __Functor_ProtoidDebug=X19GdW5jdG9yX1Byb3RvaWREZWJ1Zz0gX19GdW5jdG9yX1Byb3RvaWRDYWxsVHlwZT0gUGFyc2VyPVEyOTFiblJsY2oxZlgxUkJSMTlmSUVaSlRFVTlMMlYwWXk5cGJtbDBMbVF2Wm01amRDNWtMMlp1WTNSZmJHbGlJRVpUVTNSeVpXRnRWR1Z6ZEQxSlprVjRhWE4wSUVsbVJYaGxZejFmWDBsVFJWaEZRMTlmQ2c9PSAK
only hold : __Functor_ProtoidCallType= Parser=Q291bnRlcj1fX1RBR19fIEZJTEU9L2V0Yy9pbml0LmQvZm5jdC5kL2ZuY3RfbGliIEZTU3RyZWFtVGVzdD1JZkV4aXN0IElmRXhlYz1fX0lTRVhFQ19fCg==
And Parser Value Encapsulated withing this first Base64 : Q291bnRlcj1fX1RBR19fIEZJTEU9L2V0Yy9pbml0LmQvZm5jdC5kL2ZuY3RfbGliIEZTU3RyZWFtVGVzdD1JZkV4aXN0IElmRXhlYz1fX0lTRVhFQ19fCg==
will hold : Counter=__TAG__ FILE=/etc/init.d/fnct.d/fnct_lib FSStreamTest=IfExist IfExec=__ISEXEC__


Note :
AcquireFSStream can potentially parse information in Base64 freely and avoid complex exception... 
Idem for QueryDebugManeger which transfer Element like Variable in Base64 for security purposes and 
lack of security context... Where this one can get parameter from file or from pipe or from 
callable object like network connection, where Endian and Marshalling Object are common in Object envirronement, 
Java, python and even Perl can own this type of serialization...

Second note... This is generated function from prototype QueryAutoFunc which is on-the-fly structure
creation... And since I discover bash parser in visual-code-context I Free out domain of 
of hand-made function to create visual conception in depth to allow shell creation command in good
visual approach thru these type of widget discovered in a contract with TreeTechnologies in 2005-2006,
Where some widget in Perl was asked to hide some content from manager for some law regulation inside 
Canadian territories and right to manage without having rigth to see... quite curious but hilarous in
hand of whom ask-it... probably been paied to see my skill's rather than having real thing to do...

#######################################################################################################



Other Doc:
Section _sub_PackageRepository

### Yet Another Debian package Mangler and backup-management. 
### 
### It basically move actual Debian package from archive /var/cache/apt/archives
### some-where else like /media/COMST500GB/Linux-Debian/archives/Mint-14_x86-64...
### or some NFS mounted point or any mounted partition dedicated to save or backup... 
### - It create an index of the day, inside the Destination.
###  - The index file is in a new directory of the destination, calling it Destination/index
###  - The index file-name is named on the today date or on the day executed by the manager. 
###  - The index used to drop Package into destination are accounted and the index hold 
###  - the beginnign of the transfert. 
###  - Index day used can be changed thru PkgRepoMgmtReposIndexDay, but the time of the transaction
###    remain unchanged... look weird, but may have some goal .... 
###   - Variable PkgRepoMgmtReposIndex change the Index destination. 
### 
### The Action. 
### It's A loop inside the archives, a move to the destination and a link is done between them 
### - to remain somewhat active, or become inacessible if the mount is down... not bad for nfs
### mounting detection or lazy mount with economic transfert mode while having no reason
### to leave it mounted until you need to get some update or removing stuff. 
### If the management from APT, dpkg, gdebi remove the package, it give silent error to 
### remove something not being a file but link, but are not following the source... 
### Being serious with this action, PkgRepoMgmtReposBkpAct can change the Action. 
### 
### basically work like this :
### [ cmd1 __VIRG__ cmd2 ... ] 
### 
### cmd1 should include at least 
### __SRC__ tag , it transform it into proper destication  called __DEST__ 
### __FILE__ is critical and mandatory, it loop the command and turn __FILE__ into every item to be backuped 
### 
### - __VIRG__ tag is an hack, It's required when more then one command is called, it change in into ';' . 
### ex : PkgRepoMgmtReposBkpAct="scp  __SRC__/__FILE__ root@domainname:/__DEST__ __VIRG__ rm -f __SRC__/__FILE__" PackageRepositoryMgmt
### - transfert by scp a file from Debian packages from /var/cache/apt/archives and remove it. 
### 
### 
### ... So basically, this guys had a spade in hand and Spell it: 'I.B.M.' ;) from 1901, I should live long 
### enought to work there or know what they are doing... 
### 


Documentation : 


### Document : 
### 
### Note : 2224fe88-0b6f-11e3-812b-001b3875b29c 
### 
### Title : Using Alias from Bash to replace setter and 
###         permanent Assignation in Prefixed-var . 
### 
### - An efficient way to replace Setter or active method to replace
### Variable value from Prefixed-Var, using alias from shell enhance 
### and allow in a simple .bashrc changing repository of 
### PackageRepositoryMgmt, PackageRepositoryRest ... 
### 
### While not acknoledged Bug from GetVarReference to filter a function
### directly by using declare -f __FUNCTION__, the --help will display 
### original internal Value of Prefixed var, uses of Getter with --get
### will show you actual value including uses of alias. 
### 
### ex:
### simple PackageRepositoryMgmt --help will show for variable 
### PkgRepoMgmtRepository 
###     => 
###        value: /media/COMST500GB/Linux-Debian/archives/Mint-14_x86-64
### 
### - It's original design, developped under Mint-14_x86-64 realm, today
### need evolute and required another Distribution like Mint-15_x86-64
### - Also, using PackageRepositoryMgmt --get PkgRepoMgmtRepository 
### will show you similar value... 
### 
### Except: 
### - using following line imply having made another repository using 
### Mint-15_x86-64 
###   or 
### /media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001
### - Include possibility to use a Level Higher because Acer-One-Travel is also 
### - hook to this drive for feeding the repository of other package where this one
### depend of Radeon and OpenCL infrastructure to made simple uses of GPU during
### my leasure time... ( if it exist... )
### 
### Using Alias...
### Known to be a rubber-knife not depending from variable, but fixed informations
### alias allow rewrite call from command line and Shell execution as well. 
### 
### - To be really important to inspect alias-sanity before doing a script to 
### manage a Server, some doing extra verboses from this aliasing technique and
### generating excess of informations and sometime it reduce filtering 
### possibilities and anhilate uses of grep, sed and awk ... 
### 
### Assuming uses of alias is know, we can attach everyting to an allias.
### - simple prefixed-Var
### - test and execution on $? -eq 0 or 1 deppending how test was involved:
### ex: 
###   alias echo='test -e ${USER}/.echo_right && echo'
###     -> this powerfull thruth involve having impossibility to do an echo
###     on a terminal assuming .echo_right might be a deposed file from 
###     root-priviledge and can not be erased, it allow-you to echo on terminal.
### 
###  using alias : 
### 
###  alias PackageRepositoryMgmt='PkgRepoMgmtAddPkgLst=True \
###        PkgRepoMgmtRepository=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001 \
###        PkgRepoMgmtReposIndex=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001/index \
###        PackageRepositoryMgmt'
### 
###  - Effect on PackageRepositoryMgmt --help 
###       -> PkgRepoMgmtRepository will continue to show :
### 
###          /media/COMST500GB/Linux-Debian/archives/Mint-14_x86-64
### 
###  - effect on PackageRepositoryMgmt --get PkgRepoMgmtRepository
###   will show : 
###    
###          /media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001
### 
###      - Which is the correct value... 
### 
### 
### Of course a complex case of managing creation with md_cd will imply a test
### and result to a permanent verification of Repository path with :
### 
### 
### NewIndexRepository=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001/index
### NewRepository=/media/COMST500GB/Linux-Debian/archives/Mint-15_x86-64/UnderscoreXDevlpt-001
### 
### alias PackageRepositoryMgmt='test -e  $( PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt --get PkgRepoMgmtReposIndex ) && /etc/init.d/Fnct.d/md_cd $( PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt --get PkgRepoMgmtReposIndex ) && PkgRepoMgmtAddPkgLst=True PkgRepoMgmtRepository=${NewRepository} PkgRepoMgmtReposIndex=${NewIndexRepository} PackageRepositoryMgmt'
### 
### - This case is also exceptionnal, Attempting to use the variable without having new declaration of it thru uses of get might cumbershot the call 
### - But next uses of PackageRepositoryMgmt will not depend of 
###   PkgRepoMgmtReposIndex and PkgRepoMgmtRepository anymore .
### 

Usual Shell Chunk-Development. 

 ### ZenityShellEval :
 ###
 ###
 ###	Full-length example : 
 ### Including 1 example :
 ###
 ### $> ZenityShellEval (Enter)
 ### 
 ### - It Open Windows from Zenity with parameter for Text-info in editable
 ### mode.
 ### 
 ### It Open by default a uuid-like temporary file. There is no actual was
 ### to modify the name, but assuming the implementation of ZenityShellEval
 ### imply a limited acces to shell, you might recuper information from shell
 ### or futur adding to transfert a name or simple renaming the uuid-like
 ### file-name... This is to prevent auto-execution of a script from 
 ### canned-design by playing with without having all clearly create your 
 ### shell script and/or having fully pseudo-code explained and having 
 ### confirmation of your design work... 
 ### 
 ### - Like ZenityShellEval, will reach first stage-maturity fast enought,
 ### it's possible the followed function will move into fnct_lib or fnct_lib_tool,
 ### being a method to control chuck of information like descendant script lib
 ### where fnct_debian_lib should descent from:
 ### 
 ### Level1 : ( fnct_lib or fnct_lib_tool )
 ###     |
 ###     +-----------> fnct_debian_lib ( Second Level )
 ###                          |
 ###                          +----------> { _sub_PackageRepository
 ###                                         _sub_Git
 ###                                         _sub_ssh_handler        } ( Third level and specialized chunk )
 ### 
 ### Where fnct_lib shall have all mandatory function being Really Essential.
 ### Where fnct_lib_tool shall have all common tools to create code and Interract
 ### with UX ( User Experience. )
 ### 
 ### Note: UX, like HP-UX, for Home-Profesionnal User-eXperience, and not UX for Unix/*nix 
 ### 
 ### Example of code for ZenityShellEval
 ### 
 ### Assuming you are looking to link fastly unpacked .deb from File-manager into
 ### Unusual path and wanting to link against correct uses nvidia-driver to 
 ### possibly manage a fake instance of CUDA from not-wished Capable-Card like 
 ### Geforce 7000M, where it can exist at leat 4 to 8 node of CUDA GPU which is
 ### not enought because minimal number of node are 16 and higher and willing 
 ### to create so-cheap demo card around 1999-2002 in displaced time-and-space
 ### 
 ### - So having to find all nvidia .so lib, it should be linked inside 
 ### /usr/lib/nvidia-304.84 which is your memory having merely remember the 
 ### automated design from version 295.xx . 
 ### Following that you bring into /usr/lib/lib*.so.1, /usr/lib/lib*.so.[3-5]
 ### all other linked lib found inside /usr/lib/nvidia-304.84,
 ### 
 ### In Other term it's
 ### Also seed to uses X from Xorg with the nouveau driver and wich to use 
 ### the entire GPU memory location and VDPAU reserved operation for GPUing.
 ### Like a package allowing to store image into GPU memory card... Having
 ### feeling many slice of superposed image is just a matrix canonical-form
 ### of code assembly to re-interpret into real execution... 
 ### 
 ### the sample to put inside the Zenity Text-Info in editable mode :
 ### 
 ### ----------------------------- SAMPLE ----------------------------- 
 ### 
 ### function test_expr()
 ### {
 ###   local __call_locality=( Filter __filter ) ;
 ###   local Arg0=${ArrayArg[0]} ;
 ###   local ArrayArg=( $* ) ; 
 ###   local StrPath=/usr/local/src/apt/nvidia-304 ;
 ###   function __filter()
 ###   {
 ###     local __call_locality=( Filter __filter ) ;
 ###     local Arg0=${ArrayArg[0]} ;
 ###     local ArrayArg=( $* ) ; 
 ###     local StrFilterGrep=${FilterGrep:='lib32'} ;
 ###     local StrTaillingSearch={FilterTrSearch:=[:cntrl:]};
 ###     local StrTaillingRepl=${FilterTrReplace:=' '} ;
 ###     grep -v "${StrFilterGrep}" | tr '${StrTaillingSearch}' '${StrTaillingRepl}' ; 
 ###   }
 ###   local AF=( $( find ${StrPath} -type f -iname "*.so*" | __filter ) ) ; 
 ###   for (( x=0 ; x<= ${#AF[@]}-1; x++ )) ; do 
 ###    item=${AF[${x}]} ; 
 ###    local _file=( ${item//\// }  ) ; 
 ###    local file="${_file[$((${#_file[@]}-1))]}" ;
 ###    echo ln -s ${item} $(pwd)/${file} ; 
 ###   done
 ### }
 ### test_expr ; 
 ### ----------------------------- SAMPLE ----------------------------- 
 ### 
 ### You hit Enter or OK from the Window 'Shell Evaluation command', and 
 ### Should not give you an error, if so the same code reapear and you 
 ### have to find yourself the error if ZenityShellEval was not executed
 ### from allowed Terminal or Windows-shell . 
 ### If you do executed it from, you can read error and seemlesly seek for 
 ### error... 
 ### 
 ### - Later example might have support for error like puting into warning 
 ### Windows, error. And possibly conversion between uuid-like file into 
 ### finite name... 
 ### 
 ### PS: Hint:
 ###  - Using AutoChown will also let use execute the script with your own
 ### user and group, and might allow you to put it elsewhere like into 
 ### localized-execution section..... 
 ### 
 ### 
 

- Variable Forwarding Example in BoolVarTestVarCreation & mutation 

 ### Note: f1161962-0ad8-11e3-b166-001b3875b29c 
 ### 
 ### Title : Variable Forwarding Example in BoolVarTestVarCreation & mutation 
 ### of BoolVarTestVarCreation from True/False test into None
 ### 
 ### BoolVarTestVarCreation for substitution of StrFileTmp has unidirectionnaly
 ### a uuid-like file name into Pre-fixed Var ZSEFileName:=None for 
 ### affectation inside StrFileName=None, where if this one != None, will 
 ### get the parameter Name Being passed inside StrFileTmp. 
 ### 
 ### - Had consequence:
 ###  - if the file does not exist, an echo > StrFileTmp will be done . 
 ###  - if the file exist, content will be open by Zenity in text-info --editable
 ###  - Selected filename supplied, content will be overwritted and there is 
 ###  no protection mechanism and no verification against file-permission
 ###    - To this, a workaround will store all code generated from this application
 ###    - into sub-directory being made by the command and store-it inside user
 ###      respective home location which is safe and Pre-fixable into 
 ###      your specification, and not-warrented to be correct but designable. 
 ###  
 ### 
 ### - If the variable ZSEFileName is untouched, the content of StrFileTmp will
 ### hold value 'None' and belong to parsed BoolVarTestVarCreation it should 
 ### get it's uuid-like filename, see generated command from parameter below
 ### 
 ### Command : BVTestVarName=StrFileTmp BVTestVarHold='${StrFileName}' BVTestBoolVarName=\${StrFileName} BVTestBoolCase=None BVTestBoolAssertion='$( uuidgen -t )' BVTestScopeTest=local BoolVarTestVarCreation
 ### 
 ### generated code:
 ### local StrFileTmp="${StrFileName}" ; 
 ### if [ "${StrFileName}" == "None" ] ; then 
 ###  StrFileTmp=$( uuidgen -t ) ; 
 ### fi
 ### 
 ### Which is making sense. 
 ### 
 ### Also Note f1161962-0ad8-11e3-b166-001b3875b29c introduce explanation on mutation of BoolVarTestVarCreation from True/False test into None and moving uuid-file-id variable inside BVTestBoolAssertion
 ### 
 ### 
 
 
 Title : Developping and Helper 
 
 
 ### Default Fast reference Helper. 
### Extract current Prefixed variables from your function and show it on stdout( screen output ). 
### The prefixed variable are indicated on decalation of __call_locality which usually had same name has 
### top function. 
### Desc : It actively look inside the function code and extract value prefixed with function name...
### was initially developped on $0, but change by creating subFunction, and some code may be reserved for private
### use or recurrent-code with recurrent variable name, may be show and alter your perception of functionality of 
### the design ...

### Example to implement the body-helper. 
### 
### function Helper()
### {
###  __call_locality=( Helper ) ; 
### 	local ArrayArg=( $* ) ; 
### 	local Arg0=${ArrayArg[0]}; 
###  local StrHelperInvolved=${HelperQuestionInvolved:=Nothing} ; ### <---1a 
### 	if [ "${Arg0:=--start}" == "--help" ] ; then 
###			GetVarReference ${__call_locality[0]} ; 
###  else	
###   ---> Normal Body event and code. 
###  
###   ... 
###  fi 
### }
### 
### Note, In case your Helper --help be tested, if it does not output only Prefixed var definition.
### retreive all your variable from your command and do like example StrHelperInvolved in 1a
### Create specific local variable and associate the content of your Prefixed variables, help get 
### better body definition and reduce complexity by reading it... 
### 

