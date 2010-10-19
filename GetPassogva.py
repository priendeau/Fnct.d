#!/usr/bin/python
import os, sys, re
import passogva
import cPickle
from optparse import OptionParser

class CPass( object ):
  IntMin=None
  IntMax=None
  VDict={ 'filename':{ 'overwrite' : False } }
  CmdPickle=None
  DictDirective=None
  FhDirective=None
  DictPass=None
  DirectiveFile='.passogva-env'
  SizeDirectiveFile=None
  ArgParser=None
  IsCreationPassogva=False
  
  class OpenDirectiveWarn( Warning ):
    FhDirective=None
    DirectiveFile=None
    SizeDirectiveFile=None
    NextStaticMethod=None

    class OpenDirectiveException( Exception ):
      Msg='OpenDirectiveException filename : %s, Empty size.'
      SizeDirectiveFile=None
      def __init__( self, value ):
        self.SizeDirectiveFile = value
        if self.SizeDirectiveFile == 0 :
          Exception.__init__( self, self.Msg % ( value ) )
        pass

    class IOWarnNoFileOrSocket( Warning ):
      def __init__( self, value ):
        CPass.SizeDirectiveFile=0
        getattr( CPass, value )( CPass )
        pass
      
    def RaiserSetDirectiveFile( self ):
      try:
        self.FhDirective=open( self.DirectiveFile, 'r' )
        self.SizeDirectiveFile=len( self.FhDirective.read() )
        self.FhDirective.close()
      except IOError:
        self.SizeDirectiveFile=0
        raise self.IOWarnNoFileOrSocket, self.NextStaticMethod

    def __init__(self, value ):
      self.DirectiveFile, self.NextStaticMethod = value
      
      self.RaiserSetDirectiveFile()

      
    
  def SetDirectiveFile( self ):
    raise self.OpenDirectiveWarn, [ self.DirectiveFile , 'CreatePassogva' ]

  @staticmethod
  def CreatePassogva( cls , IntMin=10, IntMax=20 ):
    print "Function : CreatePassogva "
    if cls.IsCreationPassogva:
      cls.IntMin=IntMin
      cls.IntMax=IntMax
      #self.FhDirective=open( '.passogva-env', 'r' )
      cls.CmdPickle=cPickle.Unpickler( cls.FhDirective )
      cls.DictDirective=self.CmdPickle.load()
      if 'filename' in DictPass.keys():
        if cls.DictDirective['filename']['overwrite']:
          cls.Fh=open( '.passogva', 'w' )
          cls.Fh.write( StreamCodeName )
          cls.Fh.close()
      if 'createPickle' in cls.DictDirective.keys():
        FhNewHandler=open( '.passogva-env.new', 0 )
        NewPickle=cPickle.Pickler( FhNewHandler, 0 )
        NewPickle.dump( VDict )

      if 'passogva' in DictPass.keys():
        for Itemkey in cls.DictDirective['passogva'].key():
          if Itemkey in ['IntMin', 'IntMax'] :
            setattr( cls , Itemkey, cls.DictDirective['passogva'][Itemkey] )
            
      StreamCodeName=passogva.generate_password( IntMin, IntMax )[1].replace('-',' ')

  def __init__( self ):
    self.ArgParser = OptionParser()
    self.ArgParser.add_option("-c", "--createPickle", dest="createPickle",
                  help="Create Pickle Based Directive", default=False)
    self.ArgParser.add_option("-q", "--quiet",
                  action="store_false", dest="verbose", default=True,
                  help="don't print status messages to stdout")

    self.ArgParser = OptionParser()
    self.SetDirectiveFile()

    
if __name__ == '__main__':
  AObj=CPass()
else:
  AObj=CPass()
