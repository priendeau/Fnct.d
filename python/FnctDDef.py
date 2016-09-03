#!/usr/bin/python
# -*- coding: utf-8 -*-
# -*- file : FnctDDef.py -*-



  
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

  ### ##############################################################################

  def GetFunctionPrefix( self ):
    return self.functionPrefix

  def SetFunctionPrefix( self, value):
    if self.functionPrefix == "":
      raise PrefixFunctionOperationtypeExeption, value 
    self.functionPrefix = value

  def ResetFunctionPrefix( self ):
    self.functionPrefix = None

  FunctionPrefixHelper = property( GetFunctionPrefix, SetFunctionPrefix, ResetFunctionPrefix)
  ### ##############################################################################

  ### ##############################################################################

  def GetAttrPrivateKey( self ):
    return self.RPropertyPrivateKey

  def SetAttrPrivateKey( self, value ):
    setattr( self, RPropertyPrivateKey, value )
  
  def ResetAttrPrivateKey( self ):
    setattr( self, RPropertyPrivateKey, None )
    
  AttrPrivateKey = property( GetAttrPrivateKey, SetAttrPrivateKey, ResetAttrPrivateKey )
  # AttrPrivateKey = 'privateBlobFile'
  ### ##############################################################################

  ### ##############################################################################
  def GetAttrPublicKey( self ):
    return self.RPropertyPublicKey

  def SetAttrPublicKey( self, value ):
    setattr( self, RPropertyPublicKey, value )
  
  def ResetAttrPublicKey( self ):
    setattr( self, RPropertyPublicKey, None )
    
  AttrPublicKey = property( GetAttrPublicKey, SetAttrPublicKey, ResetAttrPublicKey )
  # AttrPublicKey = 'publicBlobFile'

  ### ##############################################################################



  ### ##############################################################################
  def GetRSAPath( self ):
    return self.RSA_ID_PATH
  
  def SetRSAPath( self, value ):
    if self.RSA_ID_PATH == "" :
      raise RSAPathExeption, value
    self.RSA_ID_PATH=value
    
  def ResetRSAPath( self ):
    self.RSA_ID_PATH=None 
    
  RSA_Path= property( GetRSAPath, SetRSAPath, ResetRSAPath)

  ### ##############################################################################
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
  ### ##############################################################################

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
  ### ##############################################################################

  ### ##############################################################################
  def getRSAPrivateKeys( self ):
    return keys.Key.fromString(data=getattr( self, self.AttrPrivateKey ) )
  
  def setRSAPrivateKeys( self, valAttrName ):
    self.AttrPrivateKey = valAttrName 
    print "Openning File : %s as private key" % self.RSA_Name
    setattr( self, valAttrName, open( self.RSA_Name ).read() )
  
  DataPrivateKey = property( getRSAPrivateKeys, setRSAPrivateKeys )
  ### ##############################################################################
  
  ### ##############################################################################
  def getRSAPublicKeys( self ):
    return keys.Key.fromString(data=getattr( self, self.AttrPublicKey ))

  def setRSAPublicKeys( self, valAttrName ):
    self.AttrPublicKey = valAttrName 
    print "Openning File : %s as private key" % self.RSA_File
    setattr( self, valAttrName, open( self.RSA_File ).read() )
  
  DataPublicKey = property( getRSAPublicKeys, setRSAPublicKeys )
  ### ##############################################################################
    
   
