#!/usr/bin/python
# -*- coding: utf-8 -*-
# -*- file : SSHServices-request.py -*- 

from twisted.conch            import avatar, recvline
from twisted.conch.interfaces import IConchUser, ISession
from twisted.conch.ssh        import factory, keys, session
from twisted.cred             import portal, checkers
from twisted.internet         import reactor
from zope.interface           import implements


class PrefixFunctionOperationtypeExeption( Exception ):
  msg                             = 'Exception raised for missing Prefixed Value For Function Helper Discovery required inside Definition Class: value:{}'
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )

class RSAOperationtypeExeption( Exception ):
  msg                             = 'RSA_ID Name challenge should be specified and can not be "" or None as value. '
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )

class RSAFileOperationExeption( Exception ):
  msg                             = 'RSA_ID File Information should be specified and can not be"" or None as value. '
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )
  


class AttributeGenerationDecor( object ):

  DisplayKargs2AttrItemAdded=True
  DictAttrRefferal                = 'DictAttrAdd'
  DictStorage                     = dict() 
  IntStartId                      = 1
  AttrName                        = None 
  DictAttrRefferalType            = list
  DictAttrRefferalAdd             = 'append'
  ErrorClassReceivedAttrList      = None
  ErrorClassReceivedAttrListName  = None
  LoggingNamFunc                  = []
  LogingStorageName               = './AppsFlowStorage.log'
  DefaultLogginTerminator         = '\n'
  DisplayDelayTime                = True
  StoreDelayExecAttr              = 'ExecTime'

  @staticmethod
  def Timer( ):
    """
    This Decorator Will:
      perform an Display output of the actual function entry.
      - In second it will also store inside the Static Class AttributeGenerationDecor
      all function entry until a trigger is set to save all the List content of actual
      Dataflow of the application. 
            
    """
    def decorator( func ):
        def inner( *args ):
          print "Entry in Function:{}".format( func.func_name )
          StartTime=time()
          func( *args )
          EndTime=time()
          TotalTime=EndTime-StartTime
          if AttributeGenerationDecor.DisplayDelayTime:
            print "Execution time:{}".format( TotalTime )
          else:
            setattr( AttributeGenerationDecor,
                     AttributeGenerationDecor.StoreDelayExecAttr,
                     TotalTime ) 
        return inner
    return decorator


  @staticmethod
  def NameFunc( ):
    """
    This Decorator Will:
      perform an Display output of the actual function entry.
      - In second it will also store inside the Static Class AttributeGenerationDecor
      all function entry until a trigger is set to save all the List content of actual
      Dataflow of the application. 
            
    """
    def decorator( func ):
        def inner( *args ):
          print "Entry in Function:{}".format( func.func_name )
          func( *args )
          AttributeGenerationDecor.LoggingNamFunc.append( func.func_name )
        return inner
    return decorator

  @staticmethod
  def NameFuncEndTrigger( ):
    """
    This Decorator Will:
     Read the *args key but do not consume it or affect any variable at this times . 
     Reaf **kwargs key and add it to current Object-class ClassTinyDecl under current
     name readed from **kwargs key name. 
            
    """
    def decorator( func ):
        def inner( *args ):
          print "Storing Path-Flow of the function before ending. filename:{}".format( AttributeGenerationDecor.LogingStorageName )
          FHStore = open( AttributeGenerationDecor.LogingStorageName, 'w' )
          for FuncNameStore in AttributeGenerationDecor.LoggingNamFunc:
            StrLineAndTerm = FuncNameStore + AttributeGenerationDecor.DefaultLogginTerminator
            FHStore.writelines( StrLineAndTerm )
          FHStore.close() 
          func( *args )
        return inner
    return decorator


  @staticmethod
  def Kargs2Attr( ClassTinyDecl ):
    """
    This Decorator Will:
     Read the *args key but do not consume it or affect any variable at this times . 
     Reaf **kwargs key and add it to current Object-class ClassTinyDecl under current
     name readed from **kwargs key name. 
            
    """
    def decorator( func ):
        def inner( *args ,**kwargs ):
          ### Create a New-Hash Value:
          ### This technic not problematic in dev will not go further to allow an engine doing same
          ### backplain one-and-other is idiomatic and useless... for FibonacciOffset at least .
          localObject=ClassTinyDecl
          InitialObject=ClassTinyDecl
          IsInHash=True
          IntHash=None 
          while IsInHash:
            IntHash=hash( localObject )
            if IntHash in AttributeGenerationDecor.DictStorage.keys():
              localObject=getattr( localObject, '__new__' )( InitialObject )
              try:
                raise AttrGenDecorWarning, "key {} existing inside Dict, suggesting using another class or instance of {}".format( IntHash, ClassTinyDecl.__name__ )
              except AttrGenDecorWarning:
                print "Warning, will create another hash of object from {}.__new__( {} )".format( localObject.__class__.__name__, InitialObject.__class__.__name__ )
            else:
              IsInHash=False
            #
          else:
            ### Is this one is a Management Bootstrap of recurrent object in many
            ### declaration of redundant object !!! 
            AttributeGenerationDecor.DictStorage[ IntHash ]=ClassTinyDecl() 
          for ItemName in kwargs.keys():
            if AttributeGenerationDecor.DisplayKargs2AttrItemAdded == True :
              print "Processing Key %s, Value: %s" % ( ItemName, kwargs[ItemName] )
            setattr( ClassTinyDecl, ItemName , kwargs[ItemName] )
          if type( ClassTinyDecl ) == type( object() ):
            print "Calling function {}".func.func_name
            func( )
          else:
            func( *args ,**kwargs )
        return inner
    return decorator

class SSHClassDefinition( object ):

  functionPrefix  = None
  RSA_ID_NAME     = None
  RSA_ID_FILE     = None
  
  def __init__( self, Definition ):
    self.Definition = Definition

  def GetFunctionPrefix( self ):
    return self.TypeOperationVar

  def SetFunctionPrefix( self, value):
    if self.functionPrefix == "":
      raise PrefixFunctionOperationtypeExeption, value 
    self.TypeOperationVar = value

  def ResetFunctionPrefix( self ):
    self.TypeOperationVar = None

  FunctionPrefixHelper = property( GetFunctionPrefix, SetFunctionPrefix, ResetFunctionPrefix)

  def GetRSA_ID( self, value ):
    return self.RSA_ID_NAME

  def SetRSA_ID( self , value ):
    if self.RSA_ID_NAME == "":
      raise RSAOperationtypeExeption, value 
    self.RSA_ID_NAME = value

  def ResetRSA_ID( self ):
    self.RSA_ID_NAME = None
    
  RSA_IDName = property( GetRSA_ID, SetRSA_ID, ResetRSA_ID )

  def GetRSA_File( self, value ):
    return self.RSA_ID_FILE

  def SetRSA_File( self , value ):
    if self.RSA_ID_FILE == "":
      raise RSAFileExeption, value 
    self.RSA_ID_FILE = value

  def ResetRSA_File( self ):
    self.RSA_ID_FILE = None
    
  RSA_File = property( GetRSA_File, SetRSA_File, ResetRSA_File)

  
class SSHFunctionController( recvline.HistoricRecvLine ):
  def __init__( self, user ):
    self.user = user
    self.SSHServicesDef = SSHClassDefinition()
    self.SSHServicesDef.FunctionPrefixHelper = "Fnct_"
    self.SSHServicesDef.RSA_IDName = "RSA_ID"
    
  def connectionInitiator( self ):
    recvline.HistoricRecvLine.connectionMade( self )
    self.terminal.write("### FNCT.D services MGMT")
    self.terminal.nextLine()
    self.Fnct_help()
    self.ShowPrompt()
    
  def ShowPrompt(self):
    self.terminal.write("$ ")

  def getCommandFunc(self, cmd):
    return getattr(self, 'do_' + cmd, None)

  def lineReceived(self, line):
    line = line.strip()
    if line:
      cmdAndArgs = line.split()
      cmd = cmdAndArgs[0]
      args = cmdAndArgs[1:]
      func = self.getCommandFunc(cmd)
      if func:
        try:
          func(*args)
        except Exception, e:
          self.terminal.write("Error: %s" % e)
          self.terminal.nextLine()
      else:
        self.terminal.write("No such command.")
        self.terminal.nextLine()
    self.showPrompt()

  @AttributeGenerationDecor.Timer()
  def Fnct_help(self):
    ### From property :
    FunctionPrefix = self.SSHServicesDef.FunctionPrefixHelper 
    publicMethods = filter( lambda funcname: funcname.startswith( FunctionPrefix ), dir(self))
    commands = [cmd.replace('do_', '', 1) for cmd in publicMethods]
    self.terminal.write("Commands: " + " ".join(commands))
    self.terminal.nextLine()

  @AttributeGenerationDecor.Timer()
  def Fnct_echo(self, *args):
    self.terminal.write(" ".join(args))
    self.terminal.nextLine()

  @AttributeGenerationDecor.Timer()
  def do_quit(self):
    self.terminal.write("0")
    self.terminal.nextLine()
    self.terminal.loseConnection()

  @AttributeGenerationDecor.Timer()
  def do_clear(self):
    self.terminal.reset()

class SSHFunctionControllerAvatar(avatar.ConchUser):
  implements(ISession)

  def __init__(self, username):
    avatar.ConchUser.__init__(self)
    self.username = username
    self.channelLookup.update({'session': session.SSHSession})

  def openShell(self, protocol):
    serverProtocol = insults.ServerProtocol(SSHDemoProtocol, self)
    serverProtocol.makeConnection(protocol)
    protocol.makeConnection(session.wrapProtocol(serverProtocol))

  def getPty(self, terminal, windowSize, attrs):
    return None

  def execCommand(self, protocol, cmd):
    raise NotImplementedError()

  def closed(self):
    pass

class SSHFunctionControllerRealm(object):
  implements(portal.IRealm)

  def requestAvatar(self, avatarId, mind, *interfaces):
    if IConchUser in interfaces:
      return interfaces[0], SSHDemoAvatar(avatarId), lambda: None
    else:
      raise NotImplementedError("No supported interfaces found.")

def getRSAKeys():
  valuRSAName = SSHFunctionController.SSHServicesDef.RSA_IDName
  valuRSAFile = SSHFunctionController.SSHServicesDef.RSA_IDFile
    
  with open( valuRSAName ) as privateBlobFile:
    privateBlob = privateBlobFile.read()
    privateKey = keys.Key.fromString(data=privateBlob)

  with open( valuRSAFile ) as publicBlobFile:
    publicBlob = publicBlobFile.read()
    publicKey = keys.Key.fromString(data=publicBlob)

  return publicKey, privateKey

if __name__ == "__main__":
  sshFactory = factory.SSHFactory()
  sshFactory.portal = portal.Portal( SSHFunctionControllerRealm() )
  users = {'admin': 'admin', 'fnct.d': ''}

  sshFactory.portal.registerChecker( checkers.InMemoryUsernamePasswordDatabaseDontUse(**users) )
  pubKey, privKey = getRSAKeys()
  sshFactory.publicKeys = {'ssh-rsa': pubKey}
  sshFactory.privateKeys = {'ssh-rsa': privKey}

  reactor.listenTCP(2222, sshFactory)
  reactor.run()

  
