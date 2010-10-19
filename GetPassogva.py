#!/usr/bin/python
import os, sys, re
import passogva
import cPickle

class CPass( object ):
  IntMin=None
  IntMax=None
  VDict={'filename':{ 'overwrite':False } }
  CmdPickle=None
  DictDirective=None
  FhDirective=None
  DictPass=None
  
  def CreatePassogva( self, IntMin=10, IntMax=20 ):
    self.IntMin=IntMin
    self.IntMax=IntMax
    self.FhDirective=open( '.passogva-env', 'r' )
    self.CmdPickle=cPickle.Unpickler( self.FhDirective )
    self.DictDirective=self.CmdPickle.load()
    if 'filename' in DictPass.keys():
      if self.DictDirective['filename']['overwrite']:
        self.Fh=open( '.passogva', 'w' )
        self.Fh.write( StreamCodeName )
        self.Fh.close()
    if 'createPickle' in self.DictDirective.keys():
      FhNewHandler=open( '.passogva-env.new', 0 )
      NewPickle=cPickle.Pickler( FhNewHandler, 0 )
      NewPickle.dump( VDict )

    if 'passogva' in DictPass.keys():
      for Itemkey in self.DictDirective['passogva'].key():
        if Itemkey in ['IntMin', 'IntMax'] :
          setattr( self, Itemkey, self.DictDirective['passogva'][Itemkey] )
          
    StreamCodeName=passogva.generate_password( IntMin, IntMax )[1].replace('-',' ')

  def __init__( self ):
    self.CreatePassogva( )
    
if __name__ == '__main__':
  AObj=CPass()
else:
  AObj=CPass()
