import sys, os, re, cStringIO, cPickle, iterpipes
import thread 
from iterpipes import cmd, bincmd, linecmd, run, call, check_call, cmdformat, compose
from socket import *

def ExceptionFunctionBasedRaiser( ClassName, Raiser ):
    """
    This Decorator Will:
    - Create a variable funcName being assigned automatically to funcName the FunctionName

    The marshaller computes a key from function arguments
    """
    def decorator(func):
        def inner(*args, **kwargs):
            print "Class: %s, Def: %s" % ( ClassName.__class__.__name__, func.__name__ )
            raise Raiser, func.__name__
            func( *args, **kwargs )
        return inner
    return decorator


class ServerHandler( object ):
  
  DictReference={ 'serverHost':None,
                  'serverPort':None,
                  'socketNode':{ 'Object':None,
                                 'connection':None,
                                 'addresse':None } }
  class ServerFactory:
    #FactoryProperty=dict( ServerHandler.DictReference )

    """
    ######## PROPERTY SUB-SET
    ########
    ####
    ####
                        """
    SetValue=None
    SetCount=None
    def Set( self, value ):
      self.SetCount = len( value )
      self.SetValue=value
      
    def Get( self ):
      DictRefTransfertValue=None
      if self.SetCount == 1:
        DictRefTransfertValue=self.FactoryProperty[self.SetValue]
      if self.SetCount == 2:
        DictRefTransfertValue=self.FactoryProperty[self.SetValue[0]][self.SetValue[1]]
      return DictRefTransfertValue

    PropertyFactory=property( Get, Set )
    """                            ####
                                   ####
                               ########
              PROPERTY SUB-SET ########
    """    

  class ServerImplement( object ):
    __RefDef__=[ 'AA' 'AB','BA', 'BB' ]
    __DictProcRef__={ 'AA':{ 0:'AB' },
                      'BB':{ 0:'BA' } }

    class WarningBranchTerminated( Exception ):
      MsgShow='Raised a %s %s, Function %s not inside __RefDef__'
      def __init__( self, value ):
        if not value in ServerImplement.__RefDef__:
          Exception.__init__( self, self.MsgShow % ( self.__class__.__name__, Exception.__name__, value ) )
        else:
          pass

    def ThreadServer( self ):
      print "Class: %s, Def: %s" % ( self.__class__.__name__, self.ThreadServer.__name__ )
      for ItemKey in self.__DictProcRef__[ self.AA.__name__ ].keys():
        getattr( self, self.__DictProcRef__[ self.AA.__name__ ][ ItemKey ] )()

      #for item in self.__RefDef__:
      #  getattr( self, item )( )

    """
    ######## PROPERTY SUB-SET
    ########
    ####
    ####
                        """
    BranchProcRef=None
    BranchProcRefValue=None
    def SetBranchProcRef( self, value ):
      self.BranchProcRef=value
      if not self.BranchProcRefValue  in self.__DictProcRef__.keys():
        self.__DictProcRef__[ self.BranchProcRef ]=dict( { 0:'BranchTerminated' } )
      self.BranchProcRefValue=self.__DictProcRef__[ self.BranchProcRef ]
      
    def GetBranchProcRef( self ):
      return self.BranchProcRefValue

    PropertyBranchProcRef=property( GetBranchProcRef, SetBranchProcRef )
    """                            ####
                                   ####
                               ########
              PROPERTY SUB-SET ########
    """    


    """
    ######## PROPERTY SUB-SET
    ########
    ####
    ####
                        """
    BranchProcKey=None
    BranchProcKeyValue=None
    def SetBranchProcKey( self, value ):
      self.BranchProcKey=value
      self.BranchProcKeyValue=self.__DictProcRef__[ self.BranchProcRef ].keys()
      
    def GetBranchProcKey( self ):
      return self.BranchProcKeyValue

    PropertyBranchProcKey=property( GetBranchProcKey, SetBranchProcKey )
    """                            ####
                                   ####
                               ########
              PROPERTY SUB-SET ########
    """    

    @ExceptionFunctionBasedRaiser( ServerHandler.ServerImplement, WarningBranchTerminated )
    def BranchTerminated( self ):
      print "Entry..."
      #raise self.WarningBranchTerminated, funcName

    @ExceptionFunctionBasedRaiser( ServerHandler.ServerImplement, WarningBranchTerminated )
    def AB( self ):
      print "Entry..."

    @ExceptionFunctionBasedRaiser( ServerHandler.ServerImplement, WarningBranchTerminated )
    def AA( self ):
      print "Entry..."

    @ExceptionFunctionBasedRaiser( ServerHandler.ServerImplement, WarningBranchTerminated )
    def BA( self ):
      print "Entry..."

    @ExceptionFunctionBasedRaiser( ServerHandler.ServerImplement, WarningBranchTerminated )
    def BB( self ):
      print "Entry..."
  
  def __init__( self, **Kargs ):
    for ItemKeyName in Kargs.keys():
      if ItemKeyName not in self.DictReference.keys():
        self.DictReference[ItemKeyName]=dict()
        self.DictReference[ItemKeyName]={ 'type':type(Kargs[ItemKeyName]),
                                          'value':Kargs[ItemKeyName] }
      self.DictReference[ItemKeyName]=Kargs[ItemKeyName]

  #Open socket to listen on
"""
  sSock = socket(AF_INET, SOCK_STREAM)
  sSock.bind((serverHost, serverPort))
  sSock.listen(3)


  #Handle connections
  while 1:

  #Accecpt a connection
      conn, addr = sSock.accept()
      print 'Client Connection: ', addr
      while 1:

  #Receive data
          data = conn.recv(1024)
          if not data: break
          print 'Server Received: ', data
          newData = data.replace('Client', 'Processed')

  #Send response
          conn.send(newData)

  #Close Connection
      conn.close()
"""

if __name__.__eq__( '__main__' ):
  AServerConn=ServerHandler()
  
