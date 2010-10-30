#!/usr/bin/python
import os, sys, re
import passogva
import cPickle
import random
from optparse import OptionParser

class CPass( object ):
  VDict={
    'filename':{
      'overwrite' : False },
    'IntMin':10,
    'IntMax':20,
    'nospace':None,
    'generate':10,
    'list':False,
    'random':False, 
    'unique':False, 
    'list':False }
  CmdPickle=None
  DictDirective=None
  FhDirective=None
  DictPass=None
  DirectiveFile='.passogva-env'
  SizeDirectiveFile=None
  ArgParser=None
  IsCreationPassogva=False
  PassogvaStream=None
  PassogvaStreamList=[]
  DefaultPassogvaAttrOut=None
  IsUnique=None
  RandomNumber=None
  RListIntegrity=[] 
  
  def GenerateRandomNumber( self ):
   Arand=None
   if len(self.RListIntegrity) == 0 :
    Arand=str(int( random.gauss( 100, 25 ) ) )		
   else:
    while Arand in self.RListIntegrity or Arand == None :
     Arand=str(int( random.gauss( 100, 25 ) ) )
     self.RListIntegrity.append( Arand )
     self.RListIntegrity.sort( )
     self.RListIntegrity.reverse( )
   return Arand
  
  def PerPassogva( self ):
   BasedPassogva=passogva.generate_password( self.VDict['IntMin'], self.VDict['IntMax'] )[1].replace('-',' ')
   if self.VDict['random']:
    BasedPassogvaList=BasedPassogva.split( ' ' )
    NewPassogvaNumVariant=str()
    for ItemCount in range( 0 , len( BasedPassogvaList )-1 ):
     NewPassogvaNumVariant += "%s%s" % ( BasedPassogvaList[ItemCount], self.GenerateRandomNumber() ) 
    self.PassogvaStream=NewPassogvaNumVariant
   else:
    self.PassogvaStream=BasedPassogva
   self.FilterNoSpace()
   
  def UniquePassogva( ):
   if self.VDict['unique']:
    if self.VDict['list']:
     if not self.PassogvaStream in self.PassogvaStreamList:
      self.IsUnique=True
     else:
      self.IsUnique=False
    else:
     self.IsUnique=True  
    
  def ListPassogva( self ):
   self.DefaultPassogvaAttrOut='PassogvaStreamList'
   for ItemCount in range( 0 , self.VDict['generate'] ):
    self.IsUnique=False
    while self.IsUnique != False:
     self.PerPassogva()
     self.UniquePassogva()
    self.PassogvaStreamList.append( self.PassogvaStream )
  
  def FilterNoSpace( self ):
    if self.VDict['nospace']:
     self.PassogvaStream =self.PassogvaStream.replace(' ', '')
   
  def CreatePassogva( self ):
    self.DefaultPassogvaAttrOut='PassogvaStream'
    self.PerPassogva()
    print "Function : CreatePassogva "
  
  def PassogvaGenerator( self ):
   if self.VDict['list']:
     self.ListPassogva( )
   else:
     self.CreatePassogva( )
  
  def Get( self ):
   print "Returning Attr:%s" % ( self.DefaultPassogvaAttrOut )
   return getattr( self, self.DefaultPassogvaAttrOut ) 

  def ArgHandler( self ):
    self.ArgParser = OptionParser()
    #~ self.ArgParser.add_option("-h", "--help", dest="Help",
                  #~ help="""
                  #~ -c  --createPickle    Create Pickle Based Directive
                  #~ -l  --minimum         Passogva Minimum Length for Stemming.
                  #~ -u  --maximum         Passogva Maximum Length for Stemming.
                  #~ -h  --help            This Help.
                  #~ """, default=False)
    
    self.ArgParser.add_option("-c", "--createPickle", dest="createPickle", action="store_true",
                  help="Create Pickle Based Directive", default=False)
    self.ArgParser.add_option("-n", "--nospace", action="store_true", dest="nospace",
                  help="Create Unified String, with no space.", default=False)
    self.ArgParser.add_option("-l", "--minimum",type='int',
                  dest="IntMin", default=10,
                  help="Passogva Minimum Length for Stemming.")
    self.ArgParser.add_option("-b", "--maximum",
                  dest="IntMax", default=10,type='int',
                  help="Passogva Maximum Length for Stemming.")
    self.ArgParser.add_option("-g", "--generate",
                  dest="generate", default=10,type='int',
                  help="Generation length")
    self.ArgParser.add_option("-t", "--list",
                  dest="list", default=False, action='store_true',
                  help="Generate a list of Passogva")
    self.ArgParser.add_option("-u", "--unique",
                  dest="unique", default=False, action='store_true',
                  help="All Generated passogva are unique")
    self.ArgParser.add_option("-f", "--format",
                  dest="format", default='python', type='string',
                  help="Output format if no Pickle supplied ( Format: python, string, csv, xml, bash-shell )")
                  
    self.ArgParser.add_option("-r", "--random",
                  dest="random", default=False, action='store_true',
                  help="Put random number between stemm. ( do not use with -n, --nospace... )")
                  
    (self.ArgParseroptions , self.ArgParserargs) = self.ArgParser.parse_args()
    for ItemKeyInVDict in self.VDict.keys():
     if hasattr( self.ArgParseroptions, ItemKeyInVDict ):
      self.VDict[ItemKeyInVDict]=getattr( self.ArgParseroptions, ItemKeyInVDict )
    
  def __init__( self ):
    self.ArgHandler( ) 
    self.PassogvaGenerator( )
    
    
if __name__ == '__main__':
  AObj=CPass()
  print "%s" % ( AObj.Get( ) )
else:
  AObj=CPass()
  print "%s" % ( AObj.Get( ) )
