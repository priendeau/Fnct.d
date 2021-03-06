#!/usr/bin/python
# -*- coding: utf-8 -*-
# -*- file : python-startup.py -*-

import pipimport
pipimport.install()

###
### This startup file used in python 2.7.6 use variable 
### PYTHONSTARTUP={PATH_TO_PYTHON_FNCTD}/python-startup.py python2.7
### if a script used with virtualenv with a proper environment 
### configuration, to avoid installation problems known to be classic
### in Twisted installation. Mere system from Debian/Mint 17.3 does 
### support twisted version 13.2 and normal upgrade to a higher 
### version does causing problem, and some functionnality of SSH 
### services from twisted.conch.ssh and other module like twisted.cred
### and twisted.conch.interfaces causing problems. Keeping the 
### file inside Fnct.D/python of requirement.txt does include module list
### of qualified module making twisted work. This python-startup is also
### a easy method tp import and install module on demand. Provided by 
### pipimport, it's own installation does use version 9.0.1 while system
### version using pip  8.1.2. So it's a common startup to ensure code 
### added will automatically follow an automatic installation and does
### follow common easy installation process to ensure success of this 
### Services . 
###
### What is PipFreezeDict / PipFreeze :
###
### While it's important to keep trace of dependency and having ultimately
### a method to follow what's happenning inside this virtualenv. I do craft
### a class based on dict to allow an easy representation of installed module
### and will soon store theirs result in a easy-storage infrastructure 
### to compare missing componnent in case of migration, retreival of componnent
### and even upgrading them . Also these classe are a Big demonstration of 
### uses of super, used in special case, here a way to profit of class 
### inheritance by calling element from other class whitout bypassing or using 
### a new instanciation of this class ( example stipulate uses of PipFreeze member ) 
### called from PipFreezeDict, and do test presence of instance with isinstance
### function to not blindly call derivated member from PipFreeze. Also offering
### alternative in case this Class PipFreezeDict is not used by PipFreeze, but 
### alone. 




import sys, os, re, cStringIO
import time, datetime
from datetime import datetime as Date 
import iterpipes
try:
  from iterpipes import cmd, bincmd, linecmd, run, call, check_call, cmdformat, compose
except ImportError:
  print "Warning cmdformat not compatible or can not be loaded properly .\nLoading cmd, bincmd, linecmd, run, call, check_call, compose.\n"
  from iterpipes import cmd, bincmd, linecmd, run, call, check_call, compose


class VerbHandler( object ):

  VerboseValue        = False 
  FunctionNameInfo    = None
  IsRequireSynch      = False 
  LoggingByFunction   = False 
  DictVerbose = {} 

  def __init__( self ):
    print "Loading Verbose Handler"
  
  def SetVerbose( self, value ):
    print "Status of Verbose Handler, does produce verbosity:{}".format( value ) 
    self.VerboseValue = value

  def GetVerbose( self ) :
    return self.VerboseValue 

  Verbose = property( GetVerbose, SetVerbose )

  def SetFunctionName( self, value ):
    self.FunctionNameInfo = value
    self.DictVerbose[ self.FunctionNameInfo ]=list()

  def GetFunctionName( self ):
    return self.FunctionNameInfo

  funtion_name = property( GetFunctionName, SetFunctionName )

  def SetSynchVerbose( self, value ):
    self.IsRequireSynch = value

  def GetSynchVerbose( self ):
    StrBuffer = ''
    if self.IsRequireSynch == True:
      if len( self.DictVerbose[ self.FunctionNameInfo ] ) > 0:
        for item in self.DictVerbose[ self.FunctionNameInfo ]:
          StrBuffer += "{}\n".format( item ) 
    return StrBuffer 

  SynchVerbose = property( GetSynchVerbose, SetSynchVerbose )

  def GetLogByFunction( self ):
    return self.LoggingByFunction 

  def SetLogByFunction( self, value ):
    self.LoggingByFunction = value 
    if value == True :
      print "Verbose will be cumuled and being pushed at the exist of a function."
    else:
      print "Verbose will be pushed at every verbose call."
     

  LogByFunction = property( GetLogByFunction, SetLogByFunction )

  @property
  def AddToBuffer( self, value ):
    self.DictVerbose[ self.FunctionNameInfo ].append( value )

  @property
  def FlushCurrentVerbose( self ):
    del self.DictVerbose[ self.FunctionNameInfo ]

  def SetVerbosis( self, value ):
    """A one-time Setter and Doing an action. This is not a getter because it
require value like comment to show or display and it manage the Buffer for the
LogByFunction=True property and print on received information with
LogByFunction=False. The property verbosis is not accepting 2 parameters like
changing the state of LogByFunction, for ineffective design and require a
decorator to configure a function verbose . """
    self.StrLineVerbose = value 
    if self.Verbose == True:
      if self.LogByFunction == True:
        self.AddToBuffer = self.StrLineVerbose
      else:
        print self.StrLineVerbose

  verbosis = property( None, SetVerbosis )
  """verbosis, an half-property. The uses is like a print line except uses of
__equal__ allowing to manage it's value entry and automatically print-it if
it's require to print after receiving the information or to account it inside
a buffer. Usually It's won't be usefull to call it once , and generate extra
code to if it move the print inside a getter method. """

  @staticmethod
  def VerboseFunctionTrigger( ):
    """
    This Decorator Will:
      Add information to class VerbHandler.
      -- Trigger property of synchronisation after each function
      tell to VerbHandler it as moved in/out from function.
      If the VerbHandler is configured to cumul the information
      during function execution it cumul information inside a Dict.
      This is only possible if property LogByFunction = True 
            
    """
    def decorator( func ):
        def inner( *args ):
          VerbHandler.funtion_name = func.func_name
          VerbHandler.SynchVerbose = True 
          func( *args )
          print VerbHandler.SynchVerbose
          VerbHandler.FlushCurrentVerbose
        return inner
    return decorator
  

class PipFreezeDict( VerbHandler , dict ):
  

  """PipFreezeDict is a dict() based type to hold python module information from a virtualenv
setting. While it can accept to not be instancianted inside a virtualenv it require pip from
various version and do hold system information based on declaration of a new key. It's design
made from a dictionnary type, it allow to update the collection of key only if there is a
signifiant modification of the Freeze list from a virtualenv instance. Actually using this
Dictionnary is allowed to add a 'set of key' based on String type to add about everything, but
as a reserved mechanism based on set of key made from 'datetime', adding from a new datetime
call or in-class datetime property / member from a combined class derivation, will refer to a
request to add an update of the freeze-list of pip. This class will also update a sqlite database
to store the information in persistent format. """


  StrDefaultTimeFormat = "%Y%m%d-%H:%M:%S"
  """Default Variable of time format. Use internally, inherited instance of
PipFreeze are using self.DateFmt """

  list_keys = list() 
  
  def SubDictFiltering( self ,item ):
    """Definition called by __setitem__ and it's a private definition to manage
information of a iterpipes run( ) command. It parse the line and split the
information based on command output. """
    self.list = []
    self.iLines = ''
    for self.iLines in item:
      ### Official example of Branch StringCodecEx2 
      ### Codec New use,  
      ### Register the 'iLines' to be the variable to apply a 
      ### conversion. It does, require to put some content inside the variable 
      ### self.iLines, like content of item . 
      self.StringCodec =  'iLines'
      self.iLines = self.StringCodec 
      self.verbosis = "Type of iLines:{}".format( type(self.iLines).__name__ )
      IsSystemDepend=False 
      if self.iLines.find( '===' ) > 0 :
        IsSystemDepend=True
        StrSplit='==='
      else:
        StrSplit='=='
      
      ListPair=self.iLines.split( StrSplit )
      if len( ListPair ) < 2:
        self.verbosis = "Rejected Pip-Freeze Lines information: {}".format( self.iLines )
      else:
        StrModuleName = ListPair[0]
        StrVer=ListPair[1].strip( '\n' )

        ### The self.key is already in Normal-String form and don't require
        ### to be converted. 
        self.__dict__[ self.key ][ StrModuleName ]=StrVer
    

  def __setitem__(self, key, item):
    """This default hided function __setitem__, does analyse the key and the item itself
and does pose condition. Suggesting PipFreeze does control the Timestamp it is not
allowing to propose a new key by adding the information of 'pip freeze' command
by looking itself. For instance it's not clean as design to provide a no-key or
not based datetime key but it's still a design to forbid it's own definition of
time unless it's simple addition of key and must not be based on datetime type.
"""
    self.verbosis = "New Dict Added, filtering the informations.\n\tInspecting Key type:{}\n".format( type( key ).__name__ )
    if type( key ).__name__ == 'datetime':
      self.verbosis = "Key is a datetime compatible module"
      if isinstance( self, PipFreezeDict ):
        ###
        ### Which is good to prove the super implementation of 
        ### PipFreezeDict Specialization forbid uses new key and only 
        ### allow declaration of self.GetDate from Class PipFreeze
        ### called here because super 'super( PipFreeze, self ).__init__(  )' 
        ### act as method or way to push the class PipFreeze in top of this 
        ### PipFreezeDict, allowing uses of PipFreeze call like self.GetDate
        ### afformentionned.

        
        self.verbosis = "This dict is an instance of {}.".format( self.__class__.__name__ )
        self.key = self.GetDate
        ### Adding self.key as known key inside a List to retreive it
        ### from keys() opertor.
        self.list_keys.append( self.key )

        self.verbosis = "New Key Specification : {}".format( self.key )
      else:
        self.verbosis = "setting independently Time-Format."
        self.key = key.strftime( self.StrDefaultTimeFormat )
      self.verbosis = "Item Specification:\n\tType:{}".format( type( item ).__name__ )
      if self.__dict__.has_key( self.key ) == False:
        self.__dict__[self.key]={}
      if hasattr( item , '__name__'):
        self.verbosis = "Item added has a specific name."
        if getattr( item, '__name__') == 'iterdecode' :
          self.SubDictFiltering( item )
      else:
        self.verbosis = "item detection did not found __name__ identification "
        if type( item ).__name__ == 'tuple':
          self.verbosis = "Inspecting Tuple"
          self.SubDictFiltering( item )
    else:
      self.verbosis = "Adding to Dict normal sequence, not a datetime compatible-key"
      self.__dict__[key] = item

  def __getitem__(self, key): 
    return self.__dict__[key]

  def __repr__(self): 
    return repr(self.__dict__)

  def __len__(self): 
    return len(self.__dict__)

  def __delitem__(self, key): 
    del self.__dict__[key]

  def clear(self):
    return self.__dict__.clear()

  def copy(self):
    return self.__dict__.copy()

  def has_key(self, k):
    return self.__dict__.has_key(k)

  def pop(self, k, d=None):
    return self.__dict__.pop(k, d)

  def update(self, *args, **kwargs):
    return self.__dict__.update(*args, **kwargs)

  def keys(self):
    return self.list_keys
    #return self.__dict__.keys()

  def values(self):
    return self.__dict__.values()

  def items(self):
    return self.__dict__.items()

  def pop(self, *args):
    return self.__dict__.pop(*args)

  def __cmp__(self, dict):
    return cmp(self.__dict__, dict)

  def __contains__(self, item):
    return item in self.__dict__

  def __iter__(self):
    return iter(self.__dict__)

  def __unicode__(self):
    return unicode(repr(self.__dict__))

class PipFreeze( PipFreezeDict ):
  """This Class is the common interface to update de Dictionary and will insert a
new-page definition of all module and version of python from a virtualenv when
this application is launched from the beginning. This had less to be re-executed
but can be. Using a method to enforce time as key, it's only time-format can be
changed like having unix-timestamp, or similar to make this design time-based.
It's sure specifying ourself our time-key can corrupt information and make it
resonnable to make this PipFreezeDict having it's own design to avoid important
modification to module list and avoid evolution of Fnct.D design being flawed
"""

  def SetStringEncoder( self, value ):
    """Part of property of StringEncoder, it's the Setter method.
"""
    self.verbosis = "StringEncoder property set to codec value : {}".format( value )
    self.StrStringEncode = value

  def GetStringEncoder( self ):
    """Part of property of StringEncoder it's the Getter method.
"""
    return self.StrStringEncode

  StringEncoder = property( GetStringEncoder, SetStringEncoder )
  """Property of StringEncoder, it's the configuration purposes for string
encoder type. Accept same parameter as String.encode( 'codec' ), codec accept.
ex:
 self.StringEncoder = 'ascii'
 self.StringEncoder = 'iso8859-1'
 
 Pip command made from iterpipes are unicode compliant in most case and do
require to be formated to plain string type no unicode. This property allow to
change the format of the command result. The example used in Codec conversion
can be see inside PipFreezeDict for definition of __setitem__, using a
sub-definition, called SubDictFiltering."""

  ### String Codec Property.
  ### Will work by assigning which variable from A class will
  ### to apply the codec. Changing the codec information from
  ### SetCodecAttribute ( uniformely 'equal' operator to
  ### StringCodec property ) will trigger a new variable to be
  ### returned by member of StringCodec ( Like GetStringCodec )

  def SetStringCodec( self, value ):
    """Part of property of StringCodec, it's the Setter method.
"""
    self.verbosis = "Codec Aligned to Read information of Variable: {}".format( value )
    self.StrStringCodecAttr = value

  def GetStringCodec( self ):
    """Part of property of StringCodec it the Getter method. Particularity
to this method it return the string encoded through uses of
getattr( getattr( self, String), 'encode' )( encode parameter ), and it's
shortened by the SetStringCodec Setter side, who register the variable to
encode.

It's equivalent to a str(<variable>).encode('codec','ignore') where
it's the variable name that goes inside '<variable>', and I Shall use the getattr
to focus on ( object , variable ) first and reusing this getattr to push
another getattr to align the encode property . Later The codec policy can be
changed to bu require a try/except to raise and have a Error/Warning class.
Notice, it's more concerned to use these Property outside of PipFreeze, like
inherited dict named PipFreezeDict which require to filter the new coming
dictionary information.
"""
    return getattr( getattr( self, self.StrStringCodecAttr ), 'encode' )( self.StringEncoder, 'ignore' )

  StringCodec = property( GetStringCodec, SetStringCodec )
  """Once StringCodec is configured through StringEncoder for choosing the String codec,
StringCodec will require to hold a Varible Name. Proposed variable from PipFreezeDict will
be key StrModuleName StrVer, or iLines which comming the iterpipes command; which require
to be set from base class like self.StrModuleName,StrVer and property self.StringCodec will
throw the information converted. """

  PipCommandFormat =  'pip {}'
  """Default command and it's parsing field reserved. Changing this will either
require more parameter or imply fixed parameter. Changing this String require
to use self.PipCommand to change it ."""

  StrDisplayFmt = "module:{}, version:{}\n"
  
  @property
  def TimeStamp( self ):
    """TimeStamp is the main Property to apply the date-synchronisation or
date-update of this module. It initialize self.date allow to read from this
variable member of this module."""
    self.date = Date.today() 

  def SetFormatDate( self, value ):
    self.verbosis = "Date Format changed to {}".format( value )
    self.DateFmd=value

  def GetFormatDate( self ):
    return self.DateFmd

  DateFmt = property( GetFormatDate, SetFormatDate )
  """property used inside __init__( self ), and modify the key-format of a datetime-key
formated key result from PipFreezeDict. It can be used to change to unix-timestamp format
or any convenient format. """

  @property
  def GetDate( self ):
    """This is the main Formating engine of this module. inspecting the self.date
for correct member name, it use 'strftime' as default function/definition."""
    if hasattr( self.date, 'strftime' ):
      value=getattr( self.date , 'strftime')( self.DateFmt ) 
    return value

  def SetPipCommand( self, value ):
    self.PipCmdArg = value

  def GetPipCommand( self ):
    return self.PipCommandFormat.format( self.PipCmdArg )

  PipCommand = property(  GetPipCommand, SetPipCommand )
  """PipCommand is a property to alter and change self.PipCommandFormat allow
to use more complex pip-command call and allow to add or retreive field parsing
to the command called by iterpipes."""

  @property
  def CreatePipFreezeRequest( self ):
    """The property to call the commandline, using an iteration from iterpipes run command.
The rest of overloading definition from PipFreezeDict __setitems__ will by handle by property
GetPipRunCmd, this one simply call the command and put it a queue-list until a iteration
mechanism read from this run statement ."""
    self.pip_freeze = run( linecmd( self.PipCommand ) )

  @property
  def UpdateModuleList( self ):
    self.__setitem__( self.date, self.GetPipRunCmd )

  @property
  def GetPipRunCmd( self ):
    return self.pip_freeze

  def SetOutputDisplayFmt( self, value ):
    self.verbosis = "New Format for Outputing property SelectedOutputbyDate choosed:\n[{}]".format( value )
    self.StrDisplayFmt = value 

  def GetOutputDisplayFmt( self ):
    return self.StrDisplayFmt 

  OutputDisplayFmt = property( GetOutputDisplayFmt, SetOutputDisplayFmt )
  """This property handle 2 field replacement and it's the main format property
to change the display format. Default is "module:{}, version:{}\n", can accept
carriage-return, tab  and many meta-character . require to be use before using
property SelectedOutputbyDate, or it's on next SelectedOutputbyDate call it will
take effect."""

  def SetSelectedDateOutput( self, value ):
    self.verbosis = "Selected date:{} to display".format( value )
    self.StrDateSelection = value

  def GetSelectedDateOutput( self ):
    StrBuffer=''
    for StrKey in self[ self.StrDateSelection ].keys():
      StrBuffer+=self.OutputDisplayFmt.format( StrKey, self[self.StrDateSelection][StrKey] )
    return StrBuffer 

  SelectedOutputbyDate = property( GetSelectedDateOutput, SetSelectedDateOutput )
  """The most revelant property to consult this Class and it's issued command from
__init__. SelectedOutputbyDate require at least a key-name in str type and will accept
the Date-Format in format "%Y%m%d-%H:%M:%S", or specified by property DateFmt. to get
the actual key generated by this module you can also use the keys() property from de-
rivated dict class to get actual knows keys. """
  
  def __init__( self ):
    self.TimeStamp 
    self.DateFmt = "%Y%m%d-%H:%M:%S"
    self.StringEncoder = "ascii"
    super( PipFreeze, self ).__init__(  )
    self.PipCommand = 'freeze'
    super( VerbHandler, self ).__init__(  )
    self.Verbose = True
    self.LogByFunction = False 
    self.verbosis = "Creating PIP Freeze List from iterpipes cmd:( {} )".format( self.PipCommand )
    self.CreatePipFreezeRequest
    self.UpdateModuleList
    #self[ self.date ] = self.GetPipRunCmd 
      
   
      
  



print "Creating the Dictionnary Dict of type PipFreeze, a wrapup to manage date, version..."
AModuleInfo=PipFreeze( )
