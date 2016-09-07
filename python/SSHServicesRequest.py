#!/usr/bin/python
# -*- coding: utf-8 -*-
# -*- file : SSHServicesRequest.py -*- 

from twisted.conch            import avatar, recvline
from twisted.conch.interfaces import IConchUser, ISession
from twisted.conch.ssh        import factory, keys, session
from twisted.cred             import portal, checkers
from twisted.internet         import reactor
from zope.interface           import implements

from AttrDecorator import AttributeGenerationDecor
from FnctDDef import SSHClassDefinition
from FnctDExpection import ( PrefixFunctionOperationtypeExeption ,
                             RSAOperationtypeExeption,
                             RSAFileOperationExeption,
                             RSAPathExeption,
                             RSAPathWarning ) 

### Importing Sqlite/Sqlobject Database object to receive GetUUID registration
### on voluntary application asking for a registration.

from getUUID import Application
from getUUID import FKGetUUID

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

  