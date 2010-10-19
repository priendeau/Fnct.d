#!/usr/bin/python
import os, sys, re
import passogva
import cPickle
from optparse import OptionParser

class CPass( object ):
  VDict={
    'filename':{
      'overwrite' : False },
    'IntMin':10,
    'IntMax':20 }
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

  @staticmethod
  def CreatePassogva( cls ):
    print "Function : CreatePassogva "
    if cls.IsCreationPassogva:
      IntMin=cls.VDict['IntMin']
      IntMax=cls.VDict['IntMax']
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

  def ArgHandler( self ):
    self.ArgParser = OptionParser()
    self.ArgParser.add_option("-c", "--createPickle", dest="createPickle",
                  help="Create Pickle Based Directive", default=False)
    self.ArgParser.add_option("-l", "--minimum",
                  dest="IntMin", default=10,
                  help="Passogva Minimum Length for Stemming.")
    self.ArgParser.add_option("-u", "--maximum",
                  dest="IntMax", default=10,
                  help="Passogva Maximum Length for Stemming.")
    (self.ArgParseroptions , self.ArgParserargs) = self.ArgParser.parse_args()
    print "Option : %s, type(%s)" % ( self.ArgParseroptions , type( self.ArgParseroptions ) )
    dir(self.ArgParser)
    #self.VDict.update( self.ArgParseroptions )
    
  def __init__( self ):
    self.ArgHandler() 
    raise self.OpenDirectiveWarn, [ self.DirectiveFile , 'CreatePassogva' ]

    
if __name__ == '__main__':
  AObj=CPass()
else:
  AObj=CPass()
