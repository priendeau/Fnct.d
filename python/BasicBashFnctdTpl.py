#!/usr/bin/env python
# -*- coding: utf-8 -*-

### file BasicBashFnctdTpl.py
try:
  ThisSetTest=Set(['1','2','3'])
except NameError:
  import sets
  from sets import Set
  print "Warning Decorator Error Raiser need some default import like sets and sets.Set.\nTest simply failed. importing manually"

import sys, os, re, cStringIO, cPickle, zipfile, zlib, tempfile, time,  datetime
import sqlitedict, iterpipes 


try:
  from iterpipes import cmd, bincmd, linecmd, run, call, check_call, cmdformat, compose
except ImportError:
  #print "Warning cmdformat not compatible or can not be loaded properly .\nLoading cmd, bincmd, linecmd, run, call, check_call, compose.\n"
  from iterpipes import cmd, bincmd, linecmd, run, call, check_call, compose

from sqlitedict import SqliteDict
from optparse import OptionParser  
from mako.template import Template
from GenericCache.GenericCache import GenericCache
from GenericCache.decorators import cached


class AttributeGenerationDecor( ):
  DisplayKargs2AttrItemAdded=True
  DictAttrRefferal                = 'DictAttrAdd'
  DictAttrRefferalType            = list()
  DictHolderDictExpt              = { 'CurrentAttrRaiserName':{ 'property':'AttrRaiser' },
                                      'CurrentAttrName':{'property':'AttrList'} }
  DictAttrRefferalAdd             = 'append'
  ErrorClassReceivedAttrList      = None
  ErrorClassReceivedAttrListName  = None
  
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
          for ItemName in kwargs.keys():
            if AttributeGenerationDecor.DisplayKargs2AttrItemAdded == True :
              print "Processing Key %s, Value: %s" % ( ItemName, kwargs[ItemName] )
            if ItemName in AttributeGenerationDecor.DictHolderDictExpt.keys():
              ClassTinyDecl.
            setattr( ClassTinyDecl, ItemName , kwargs[ItemName] )
            ListAttr.append( ItemName )
          func( *args ,**kwargs )
        return inner
    return decorator

class BasicObjectWarning( Warning ):
  def __init__( self , value ):
    print "Object {}, raise an exception with value {}".format( self.__class__.__name__, value  )
    Warning.__init__( value )

class ObjectFnctdHolder( object ):
  
  ListAttr=list( )

  CurrentAttr             = None 
  CurrentAttrName         = None
  CurrentAttrValue        = None

  CurrentAttrRaiser       = None 
  CurrentAttrRaiserName   = None 
  CurrentAttrRaiserValue  = None 
  
  def __init__( self ):
    print "Add Current Object Attribute %s" % self.__class__.__name__

  def GetAttrRaiser( self ):
    return self.CurrentAttrRaiserName

  def SetAttrRaiser( self, value ):
    self.CurrentAttrRaiserName = value

  def DelAttrRaiser( self ):
    self.CurrentAttrRaiserName = None

  AttrRaiser = property( GetAttrRaiser, SetAttrRaiser, DelAttrRaiser )

  def GetAttrList( self ):
    return self.ListAttr

  def SetAttrList( self, value  ):
    if self.AttrRaiser != None:
      if hasattr( self, value ):
        raise getattr( self, CurrentAttrRaiser )( value )

  def DelAttrList( self ):
    self.ListAttr = list() 

  AttrList = property( GetAttrList, SetAttrList, DelAttrList )


class FnctdTemplateModel( object ):
  cache = GenericCache()

  CurrTemplateName      = None
  CurrTemplateRendered  = None 

  def GetTemplateName( self ):
    return self.CurrTemplateName

  def SetTemplateName( self, value ):
    self.CurrTemplateName  = value

  def DelTemplateName( self ):
    self.CurrTemplateName = None

  TemplateName = property( GetTemplateName , SetTemplateName, DelTemplateName )
  
  FnctdFunction = Template( """
  function ${ FunctionName }()
  {
    function Init()
    {
      local ArrayArg=( $* ) ;
      local __call_locality=( Init )

    }
    function Main()
    {
      local ArrayArg=( $* ) ;
      local __call_locality=( Main )

    }
    function End()
    {
      local ArrayArg=( $* ) ;
      local __call_locality=( End )

    }
    
    local ArrayArg=( $* ) ;
    local __call_locality=( ${ FunctionName } )
    local Arg0=\${ArrayArg[0]};
    local StrFunctionNameLoop=\${${ FunctionName }FnLoop:=Init,Main,End}
    local ArrayFunctionNameLoop=\${${ FunctionName }FnLoop//,/ }
    if [ "${Arg0:=--startservices}" == "--help" ] ; then
      GetVarReference ${ FunctionName }

    elif [ "${Arg0:=--startservices}" == "--startservices" ] ; then
      for(( intX = 0 ; intX <= \${[@]}-1 ; intX++ )) ; do
        eval \${ArrayFunctionNameLoop[\${intX}]}
      done 
      
    fi
  }""" )

  @cached(cache)
  def ParseTemplate( self )

  @AttributeGenerationDecor.Kargs2Attr( ObjectFnctdHolder )
  def __init__( self, **Kargs ):
    self.FnctdFunction.render( **Kargs ) 
  
if __name__.__eq__( '__main__' ):
  AInstanceBashParser=( 'BasicObjectWarning'
