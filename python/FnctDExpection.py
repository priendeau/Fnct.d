#!/usr/bin/python
# -*- coding: utf-8 -*-
# -*- file : FnctDExpection.py -*-

class PrefixFunctionOperationtypeExeption( Exception ):
  msg = 'Exception raised for missing Prefixed Value For Function Helper Discovery required inside Definition Class: value:{}'
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )

class RSAOperationtypeExeption( Exception ):
  msg = 'RSA_ID Name challenge should be specified and can not be "" or None as value. '
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )

class RSAFileOperationExeption( Exception ):
  msg = 'RSA_ID File Information should be specified and can not be"" or None as value. '
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )
    
class RSAPathExeption( Exception ):
  msg = 'RSA File Realm need a Path specified to read Key. Present Start-PAth :[ %s ]'
  def __init__( self, value ):
    Exception.__init__( self, self.msg.format( value ) )

class RSAPathWarning( Warning ):
  msg = 'Use of property dependant of RSA_Path, querying them without use of Path specification is subject to an error.'
  def __init__( self, attrname, funcname ):
    Warning.__init__( self, self.msg )

