

from optparse import OptionParser
import sys,   os,       re,   cStringIO
import time,  datetime
import sqlite3

import rpyc

conn = rpyc.classic.connect("localhost")


class RPCFnctD( object ):

  parser = OptionParser()

  def __init__( self , *args, **Kargs ):
    sel.__update__( Kargs )


  def __CreateNewBackend__( self ):
    pass
    

  def __start_cmdline_parser__( self ):
    
    self.parser.add_option("--startservices", "--start",
                      action="store_true",
                      dest="IsStartServices",
                      default=True,
                      help="Start the application normally.")

    self.parser.add_option("--stopservices", "--stop",
                      action="store_true",
                      dest="IsStopServices",
                      default=False,
                      help="Stop the application normally.")

  def OptionParserConfig( self ):
    (self.options, self.args ) = self.parser.parse_args()
    if hasattr( self.options ,'IsStartServices' ):
      self.StartServices = getattr( self.options, 'IsStartServices' )
    else:
      self.StartServices = False
  
    if hasattr( self.options ,'IsStopServices' ):
      self.StartServices = getattr( self.options, 'IsStopServices' )
    else:
      self.StopServices = False



    
