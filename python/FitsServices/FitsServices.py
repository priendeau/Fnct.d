#!/usr/bin/python
# -*- coding: utf-8 -*-
# -*- file : FitsServices.py -*-

import fitsio
from fitsio import FITS,FITSHDR

import sys, os, re, cStringIO
import time, datetime

import iterpipes
try:
  from iterpipes import cmd, bincmd, linecmd, run, call, check_call, cmdformat, compose
except ImportError:
  print "MESSAGE FROM iterpipes:Warning cmdformat not compatible or can not be loaded properly .\nLoading cmd, bincmd, linecmd, run, call, check_call, compose.\n"
  from iterpipes import cmd, bincmd, linecmd, run, call, check_call, compose



import cPickle
import decimal

import zipfile
import zlib
import tempfile

from decimal import *
getcontext().prec = 36


class FileFactoryExeption( Exception ):
  msg = """Exception raised, missing information for reading content only,
must provide row, columns, extension information., msg:[{}]"""
  Value=None

  def LastMessage( self ):
    print self.msg.format( self.Value )
    
  def __init__( self, value ):
    self.Value = value 
    Exception.__init__( self, self.msg.format( value ) )

class FileExtensionWarning( Warning ):
  msg = """Number of extension not provided, can not inform you on actual extension called., msg:[{}]"""
  Value=None

  def LastMessage( self ):
    print self.msg.format( self.Value )
    
  def __init__( self, value ):
    self.Value = value 
    Warning.__init__( self, self.msg.format( value ) )



    
class FileFactory( ):
  """This is a File-Factory to handle Primitive to read Fits File from Keepler2 projects.
  where fits file are available at : http://archive.stsci.edu//missions/k2/ . Described in
  module k2flix 2.2.0 this address taking fits file from target-pixel c1 to c92 and draw
  an animation  : http://archive.stsci.edu//missions/k2/target_pixel_files/
  it's possible to read other fits file using the previous addresses. This factory was
  also designed to find information insde the Header . Where a Manual should be available
  at NASA to provide way to read efficiently these FITS files.

  NASA, also provide FPT acces to acces to catalog which is 2.6 Gb file of CSV for detailed
  information:

  ftp://archive.stsci.edu/pub/k2/catalogs/

  
"""
  HeaderRead=False
  ContentRead=False
  IsRow=False
  IsColumn=False
  IsExtension=False
  IsContentRead=False
  IsHeaderRead=False
  
  Header=None
  Content=None
  RowStart=None
  RowEnd=None
  ColumnField=None
  ExtensionType=None
  
  def __init__( self, filename ) :
    self.filename=filename 

  @property
  def header( self ):
    self.IsHeaderRead = True
    print "HEADER reader set to True"
    return self.IsHeaderRead
  
  @property
  def content( self ):
    self.IsContentRead=True
    print "CONTENT reader set to True"
    return self.IsContentRead
  
  @property   
  def SetRow( self , value ):
    self.RowStart, self.RowEnd = value
    self.IsRow=True
    print "CONTENT-ROW defined:[ Start:{}, End:{} ]".format( value )

  @property
  def SetColumn( self, value ):
    self.ColumnField = value
    self.IsColumn=True
    print "CONTENT-COLUMN defined:[ field:{}]".format( value )
    
  
  @property
  def FileExtension( self ):
    self.IsExtension=True
    print "FILE-EXTENSION defined:[ field:{}]".format( self.IsExtension )
    return self.IsExtension
  
  def DelExtension( self ):
    self.ExtensionType=None
    self.IsExtension=False 

  def GetExtension( self ):
    try:
      if self.IsExtension == True:
        return self.ExtensionType
      else:
        raise FileExtensionWarning, "Property Extension not used."
    except FileExtensionWarning, wWarning:
      wWarning.LastMessage()
      
  def SetExtension( self, value ):
    self.ExtensionType = value
    self.FileExtension 
    print "FILE-EXTENSION defined:[ value={}]".format( value )
    
  Extension = property( GetExtension, SetExtension, DelExtension)
  
  def read( self ):
    try:
      if self.IsHeaderRead == True:
        for ListProperty in [ 'IsExtension' ]:
          AttrRes=getattr( self, ListProperty )
          print "Property:{}, value:{}".format(ListProperty, AttrRes)
          if AttrRes == False:
            raise FileFactoryExeption, "Attribute: {}={}".format( ListProperty, AttrRes )
        self.Header = fitsio.read_header(self.filename, self.Extension )
        if self.IsContentRead == True:
            for ListProperty in [ 'Extension' ]:
              try:
                if getattr( self, ListProperty) > 0 :
                  raise FileExtensionWarning, "Property Extension not instantiated."
              except FileExtensionWarning, wWarning:
                wWarning.LastMessage( )
                #raise FileFactoryExeption, "{}=False".format( ListProperty )
            self.ContentRead,self.Header = fitsio.read( self.filename, ext=self.Extension, header=True)
      else:
        if self.IsHeaderRead == False and self.IsContentRead==True:
          for ListProperty in [ 'IsRow','IsColumn','Extension' ]:
            if ListProperty == 'Extension':
              try:
                AttrRes=getattr( self, ListProperty )
                if AttrRes > 0 :
                  raise FileExtensionWarning, "Property Extension not instantiated."
              except FileExtensionWarning, wWarning:
                wWarning.LastMessage( )
            AttrRes=getattr( self, ListProperty )
            if AttrRes == False:
              raise FileFactoryExeption, "Attribute: {}={}".format( ListProperty, AttrRes  )
    except FileFactoryExeption, exceptionHandler :
      exceptionHandler.LastMessage() 
      #print FileFactoryExeption.msg.format( FileFactoryExeption.Value )
      
#if __name__ == "__main__":
#  fFactory=FileFactory( '/home/maxiste/Data/Keppler2/ktwo201600024-c01_lpd-targ.fits' )
  
