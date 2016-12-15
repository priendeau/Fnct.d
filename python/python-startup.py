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

class PipFreezeDict( dict ):

  StrDefaultTimeFormat = "%Y%m%d-%H:%M:%S"
  
  def SubDictFiltering( self ,item ):
    self.list = []
    self.iLines = ''
    for self.iLines in item:
      ### Codec New use, 
      ### Register the 'iLines' to be the variable to apply a 
      ### conversion. It does, require to put some content inside the variable 
      ### self.iLines, like content of item . 
      self.StringCodec =  'iLines'
      self.iLines = self.StringCodec 
      print "Type of iLines:{}".format( type(self.iLines).__name__ )
      IsSystemDepend=False 
      if self.iLines.find( '===' ) > 0 :
        IsSystemDepend=True
        StrSplit='==='
      else:
        StrSplit='=='
      
      ListPair=self.iLines.split( StrSplit )
      if len( ListPair ) < 2:
        print "Rejected Pip-Freeze Lines information: {}".format( self.iLines )
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
    print "New Dict Added, filtering the informations.\n\tInspecting Key type:{}\n".format( type( key ).__name__ )
    if type( key ).__name__ == 'datetime':
      print "Key is a datetime compatible module"
      if isinstance( self, PipFreezeDict ):
        ###
        ### Which is good to prove the super implementation of 
        ### PipFreezeDict Specialization forbid uses new key and only 
        ### allow declaration of self.GetDate from Class PipFreeze
        ### called here because super 'super( PipFreeze, self ).__init__(  )' 
        ### act as method or way to push the class PipFreeze in top of this 
        ### PipFreezeDict, allowing uses of PipFreeze call like self.GetDate
        ### afformentionned.

        
        print "This dict is an instance of {}.".format( self.__class__.__name__ )
        self.key = self.GetDate
        print "New Key Specification : {}".format( self.key )
      else:
        print "setting independently Time-Format."
        self.key = key.strftime( self.StrDefaultTimeFormat )
      print "Item Specification:\n\tType:{}".format( type( item ).__name__ )
      if self.__dict__.has_key( self.key ) == False:
        self.__dict__[self.key]={}
      if hasattr( item , '__name__'):
        print "Item added has a specific name."
        if getattr( item, '__name__') == 'iterdecode' :
          self.SubDictFiltering( item )
      else:
        print "item detection did not found __name__ identification "
        if type( item ).__name__ == 'tuple':
          print "Inspecting Tuple"
          self.SubDictFiltering( item )
    else:
      print "Adding to Dict normal sequence, not a datetime compatible-key"
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
    return self.__dict__.keys()

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

  ### String Encoding Property
  def SetStringEncoder( self, value ):
    print "StringEncoder property set to codec value : {}".format( value )
    self.StrStringEncode = value

  def GetStringEncoder( self ):
    return self.StrStringEncode

  StringEncoder = property( GetStringEncoder, SetStringEncoder )

  ### String Codec Property.
  ### Will work by assigning which variable from A class will
  ### to apply the codec. Changing the codec information from
  ### SetCodecAttribute ( uniformely 'equal' operator to
  ### StringCodec property ) will trigger a new variable to be
  ### returned by member of StringCodec ( Like GetStringCodec )

  def SetStringCodec( self, value ):
    print "Codec Aligned to Read information of Variable: {}".format( value )
    self.StrStringCodecAttr = value

  def GetStringCodec( self ):
    """In Fact it's equivalent to a str(<variable>).encode('codec','ignore') where
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
  StrDisplayFmt = "module:{}, version:{}\n"
  
  @property
  def TimeStamp( self ):
    self.date = Date.today() 

  def SetFormatDate( self, value ):
    print "Date Format changed to {}".format( value )
    self.DateFmd=value

  def GetFormatDate( self ):
    return self.DateFmd

  DateFmt = property( GetFormatDate, SetFormatDate )

  @property
  def GetDate( self ):
    if hasattr( self.date, 'strftime' ):
      value=getattr( self.date , 'strftime')( self.DateFmt ) 
    return value

  def SetPipCommand( self, value ):
    self.PipCmdArg = value

  def GetPipCommand( self ):
    return self.PipCommandFormat.format( self.PipCmdArg )

  PipCommand = property(  GetPipCommand, SetPipCommand ) 

  @property
  def CreatePipFreezeRequest( self ):
    self.pip_freeze = run( linecmd( self.PipCommand ) )

  @property
  def GetPipRunCmd( self ):
    return self.pip_freeze

  def SetOutputDisplayFmt( self, value ):
    print "New Format for Outputing property SelectedOutputbyDate choosed:\n[{}]".format( value )
    self.StrDisplayFmt = value 

  def GetOutputDisplayFmt( self ):
    return self.StrDisplayFmt 

  OutputDisplayFmt = property( GetOutputDisplayFmt, SetOutputDisplayFmt )

  def SetSelectedDateOutput( self, value ):
    print "Selected date:{} to display".format( value )
    self.StrDateSelection = value

  def GetSelectedDateOutput( self ):
    StrBuffer=''
    for StrKey in self[ self.StrDateSelection ].keys():
      StrBuffer+=self.OutputDisplayFmt.format( StrKey, self[self.StrDateSelection][StrKey] )
    return StrBuffer 

  SelectedOutputbyDate = property( GetSelectedDateOutput, SetSelectedDateOutput )
  
  def __init__( self ):
    self.TimeStamp 
    self.DateFmt = "%Y%m%d-%H:%M:%S"
    self.StringEncoder = "ascii"
    super( PipFreeze, self ).__init__(  )
    self.PipCommand = 'freeze'
    print "Creating PIP Freeze List from iterpipes cmd:( {} )".format( self.PipCommand )
    self.CreatePipFreezeRequest
    self[ self.date ] = self.GetPipRunCmd 
      
   
      
  



print "Creating the Dictionnary Dict of type PipFreeze, a wrapup to manage date, version..."
AModuleInfo=PipFreeze( )
