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
  msg = 'Exception raised for missing Prefixed Value For Function Helper Discovery required inside Definition Class: value:{}'
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )

class RSAOperationtypeExeption( Exception ):
  msg = 'RSA_ID Name challenge should be specified and can not be "" or None as value. '
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )

class RSAFileOperationExeption( Exception ):
  msg = 'RSA_ID File Information should be specified and can not be"" or None as value. '
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )
    
class RSAPathExeption( Exception ):
  msg = 'RSA File Realm need a Path specified to read Key. Present Start-PAth :[ %s ]'
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )

class RSAPathWarning( Warning ):
  msg = 'Use of property dependant of RSA_Path, querying them without use of Path specification is subject to an error.'
  def __init__( self, attrname, funcname ):
    Warning.__init__( self, self.msg )
    

  


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
  RSA_ID_PATH     = None
  privateKey      = None 
  publicKey       = None 
  privateBlobFile = None
  publicBlobFile  = None 
  RPropertyPrivateKey = None
  RPropertyPublicKey  = None 
  
  def __init__( self ):
    print "Add Current Object Attribute inside class: %s" % self.__class__.__name__

  def GetFunctionPrefix( self ):
    return self.functionPrefix

  def SetFunctionPrefix( self, value):
    if self.functionPrefix == "":
      raise PrefixFunctionOperationtypeExeption, value 
    self.functionPrefix = value

  def ResetFunctionPrefix( self ):
    self.functionPrefix = None

  FunctionPrefixHelper = property( GetFunctionPrefix, SetFunctionPrefix, ResetFunctionPrefix)

  def GetAttrPrivateKey( self ):
    return self.RPropertyPrivateKey

  def SetAttrPrivateKey( self, value ):
    setattr( self, RPropertyPrivateKey, value )
  
  def ResetAttrPrivateKey( self ):
    setattr( self, RPropertyPrivateKey, None )
    
  AttrPrivateKey = property( GetAttrPrivateKey, SetAttrPrivateKey, ResetAttrPrivateKey )
  # AttrPrivateKey = 'privateBlobFile'
  def GetAttrPublicKey( self ):
    return self.RPropertyPublicKey

  def SetAttrPublicKey( self, value ):
    setattr( self, RPropertyPublicKey, value )
  
  def ResetAttrPublicKey( self ):
    setattr( self, RPropertyPublicKey, None )
    
  AttrPublicKey = property( GetAttrPublicKey, SetAttrPublicKey, ResetAttrPublicKey )
  # AttrPublicKey = 'publicBlobFile'

  def GetRSAPath( self ):
    return self.RSA_ID_PATH
  
  def SetRSAPath( self, value ):
    if self.RSA_ID_PATH == "" :
      raise RSAPathExeption, value
    self.RSA_ID_PATH=value
    
  def ResetRSAPath( self ):
    self.RSA_ID_PATH=None 
    
  RSA_Path= property( GetRSAPath, SetRSAPath, ResetRSAPath)

  def GetRSA_ID( self, value ):
    if self.RSA_ID_NAME == "":
      raise RSAOperationtypeExeption, value 
    try:
      if self.RSA_ID_PATH == "None":
        raise RSAPathWarning
      value="%/%" % (self.RSA_ID_PATH , self.RSA_ID_NAME )
    except RSAPathWarning:
      value="%" % self.RSA_ID_NAME
    return self.RSA_ID_NAME

  def SetRSA_ID( self , value ):
    if self.RSA_ID_NAME == None:
      raise RSAOperationtypeExeption, value 
    self.RSA_ID_NAME = value

  def ResetRSA_ID( self ):
    self.RSA_ID_NAME = None
    
  RSA_Name = property( GetRSA_ID, SetRSA_ID, ResetRSA_ID )

  def GetRSA_File( self, value ):
    if self.RSA_ID_FILE == "":
      raise RSAFileOperationExeption, value 
    try:
      if self.RSA_ID_PATH == "None":
        raise RSAPathWarning
      value="%/%" % (self.RSA_ID_PATH , self.RSA_ID_FILE )
    except RSAPathWarning:
      value="%" % self.RSA_ID_FILE 
    return value

  def SetRSA_File( self , value ):
    if self.RSA_ID_FILE == "":
      raise RSAFileOperationExeption, value 
    self.RSA_ID_FILE = value

  def ResetRSA_File( self ):
    self.RSA_ID_FILE = None
    
  RSA_File = property( GetRSA_File, SetRSA_File, ResetRSA_File)

  def getRSAPrivateKeys( self ):
    return keys.Key.fromString(data=getattr( self, self.AttrPrivateKey ) )
  
  def setRSAPrivateKeys( self, valAttrName ):
    self.AttrPrivateKey = valAttrName 
    print "Openning File : %s as private key" % self.RSA_Name
    setattr( self, valAttrName, open( self.RSA_Name ).read() )
  
  DataPrivateKey = property( getRSAPrivateKeys, setRSAPrivateKeys )
  
  def getRSAPublicKeys( self ):
    return keys.Key.fromString(data=getattr( self, self.AttrPublicKey ))

  def setRSAPublicKeys( self, valAttrName ):
    self.AttrPublicKey = valAttrName 
    print "Openning File : %s as private key" % self.RSA_File
    setattr( self, valAttrName, open( self.RSA_File ).read() )
  
  DataPublicKey = property( getRSAPublicKeys, setRSAPublicKeys )
    
    


  
class SSHFunctionController( recvline.HistoricRecvLine ):

  def __init__( self, user ):
    self.user = user
    
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
    serverProtocol = insults.ServerProtocol(SSHFunctionController, self)
    serverProtocol.makeConnection(protocol)
    protocol.makeConnection(session.wrapProtocol(serverProtocol))

  def getPty(self, terminal, windowSize, attrs):
    return None

  def execCommand(self, protocol, cmd):
    raise NotImplementedError()

  def closed(self):
    pass


class SSHFunctionControllerRealm( SSHClassDefinition ):
  implements(portal.IRealm)
  """We do suppose Model added SSHClassDefinition, holding
  other property being important in management of RSA Key
  (public / private ) require some Property extract information
  from declaration and both ability to raise Error/Warning if
  informations are missing....
  """

  Arg=None 
  
  
  @AttributeGenerationDecor.Kargs2Attr( SSHClassDefinition )
  def __init__( self, **Kargs ):
    
    super(SSHFunctionControllerRealm, self).__init__(  )

    if hasattr( self, 'RSA_Name' ):
      print "RSA-Key ID name was defined:[ name=%s ]" % ( self.RSA_Name ) 
    if hasattr( self, 'RSA_File' ):
      print "RSA-Key File name was defined:[ name=%s ]" % ( self.RSA_File ) 
    if hasattr( self, 'RSA_Path' ):
      print "RSA-Key Path name was defined:[ name=%s ]" % ( self.RSA_Path ) 

  def requestAvatar(self, avatarId, mind, *interfaces):
    if IConchUser in interfaces:
      return interfaces[0], SSHDemoAvatar(avatarId), lambda: None
    else:
      raise NotImplementedError("No supported interfaces found.")



if __name__ == "__main__":
  AttributeGenerationDecor.AttrName = 'SSHDict'
  StrMsgAttrName="If DataPublicKey exist inside the KeyRing it mean in declaration of AttrPublicKey have been done corectly. By querying the Attribute DataPublicKey Type we should have it in form of a reader. Keyname: %s , Attr-type : %s"
  sshFactory = factory.SSHFactory()
  KeyRing=SSHFunctionControllerRealm( FunctionPrefixHelper= "Fnct_",
                              AttrPrivateKey= 'privateBlobFile',
                              AttrPublicKey= 'publicBlobFile',
                              RSA_Path="/home/maxiste/github/Fnct.D/python",
                              RSA_Name="/home/maxiste/github/Fnct.D/python/rsa_id",
                              RSA_File="/home/maxiste/github/Fnct.D/python/rsa_id.pub",
                              users = {'admin': 'admin', 'fnct.d': 'fnctd'})
  sshFactory.portal = portal.Portal( KeyRing )
  

  sshFactory.portal.registerChecker( checkers.InMemoryUsernamePasswordDatabaseDontUse(**KeyRing.users) )
  if hasattr( KeyRing, 'publicBlobFile' ):
    print StrMsgAttrName % ( KeyRing.AttrPrivateKey,type( KeyRing.publicBlobFile ) )
  try:
    pubKey = KeyRing.DataPublicKey
    privKey = KeyRing.DataPrivateKey 
  except RSAPathExeption:
    print "Path was not declared inside SSHClassDefinition.RSAPathFile"
  
  sshFactory.publicKeys = {'ssh-rsa': pubKey}
  sshFactory.privateKeys = {'ssh-rsa': privKey}

  reactor.listenTCP(5082, sshFactory)
  reactor.run()

  
