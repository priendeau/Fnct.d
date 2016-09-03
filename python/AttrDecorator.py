#!/usr/bin/python
# -*- coding: utf-8 -*-
# -*- file : AttrDecorator.py -*-

import re
import sys, os, re, cStringIO, decimal, tempfile, zipfile, zlib, struct, math, time

from time import time
from cStringIO  import StringIO

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
     Read **kwargs key and add it to current Object-class ClassTinyDecl under current
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
