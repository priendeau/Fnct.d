#!/usr/bin/env python
# -*- coding: utf-8 -*-

### file BasicBashFnctdTpl.py

from mako.template import Template

class AttributeGenerationDecor( ):
  DisplayKargs2AttrItemAdded=True
  DictAttrRefferal                = 'DictAttrAdd'
  DictAttrRefferalType            = list()
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
            setattr( ClassTinyDecl, ItemName , kwargs[ItemName] )
            ListAttr.append( ItemName )
          func( *args ,**kwargs )
        return inner
    return decorator

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
    if self.AttrRaiser == None:
      if 

  def DelAttrList( self ):
    self.ListAttr = list() 

  AttrList = property( GetAttrList, SetAttrList, DelAttrList )


class FnctdTemplateModel( object ):

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

  @AttributeGenerationDecor.Kargs2Attr( ObjectFnctdHolder )
  def __init__( self, **Kargs ):
    self.FnctdFunction.render( **Kargs ) 
  

