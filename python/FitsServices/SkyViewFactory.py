#!/usr/bin/python
# -*- coding: utf-8 -*-
# -*- file : SkyViewFactory.py -*-

### Web Scrapper required to Parse the SkyView Webform to load and compare celestial coordinate from
### Keppler mission 2 coordinate.
import sys, os, re, cStringIO
import time, datetime

  
import pynav
from pynav import Browser
from pynav.ClientForm import AmbiguityError

class SkyViewFactory( ):
  URL = 'http://skyview.gsfc.nasa.gov/current/cgi/query.pl'
  IsFormQuery = False
  IsFormCollect = False 
  
  FormObject = None
  FormResultList=[]
  CurrentForm=None
  IntFormSeq=None
   

  def __init__( self, **Kargs ):
    ### Required to scan the **Kargs key to find associated key and to
    ### replace them. 
    for Key in Kargs.keys():
      if hasattr( self, Key ):
        setattr( self, Key, Kargs[Key] )

  @property
  def GetUrl( self ):
    return self.URL 

  @property
  def GetFormSequence( self ):
    return self.IntFormSeq

  @property
  def SetFormInstance( self ):
    if self.IntFormSeq == None :
      self.IntFormSeq=0
    else:
      self.IntFormSeq+=1

  @property
  def ResetFormInstance( self ):
    self.IntFormSeq == None

  FormInstance = property( GetFormSequence, SetFormInstance, ResetFormInstance )

  
  @property
  def SetForm( self ):
    self.IsFormQuery = True
    print "Form is Queryied"

  @property
  def SetInputForm( self ):
    self.IsInputForm = True
    print "Form Input information Extracted."

  @property
  def SetCollection( self ):
    self.FormResultList = self.FormObject.r.formDumper().forms
    self.IsFormCollect = True 

  ### First Property to claim ; when URL is associated or Instantied by default   
  ### This will change property of SetForm to to say IsFormQuery = true and action
  ### from QueryForm have getting The FormObject.

    
  @property 
  def QueryForm( self ):
    self.SetForm 
    self.FormObject = pynav.Browser.go( self.GetUrl )

  ### Second Property to claim ;
  ### The FormObject can also contain more than one Form inside, so other property
  ### will extract form and build SkyView skv_survey key available to build the POST
  ### value until we can put the celestial coordinate from Keepler2 fits files. 
  ### like first one ktwo201600024-c01_lpd-targ.fits
  ###
  ###
  ###
  ###
    
  ### Third Property to claim ;
  ### This property will load succesively Form0 .. FormN inside FormResultList
  ### At this stade It will result in a Per Listed Item, a series of instance 
  ### of type ClientForm.SubmitControl, ClientForm.SelectControl, ClientForm.TextControl
  ### where control can be extracted to ''START TO'' feed the control required inside Dictionnary 
  ### to let the API inform you of all type of telescope-view available, Position ( coordinate to enter )to fill
  ### for survey, type of coordinate , projection...
  ### In clear this Property only load the Whole control list into list. Usually with
  ### application skyview.gsfc.nasa.gov/current/cgi/query.pl, there is 2 form.
  ### from past acces before 2003 to 2016... So I doubt before being conceived having already
  ### steady 2 form and by now way after Keepler2 curses we do have more than 2 forms. 
  @property
  def InputFormExtraction( self ):
    self.SetInputForm
    self.FormResultList = self.FormObject.r.formDumper().forms


  @property
  def GetFormInstance( self ):
    ### Since a generator yield element one after one this property activate
    ### Next element.
    ### In case the property FormInstance is not Equal to None we haven't call the
    ### InputFormExtraction or call at least FormGenerator and iteration from
    ### generator does need a variable and to call the attribute next() on it.
    ### It's better to not test the self.CurrentForm if it's set to none because
    ### recipent from a generator does not go back at the beginning to show you
    ### back information for CurrentForm , while property FormInstance is already
    ### controlled to report None if there is no action on and 0 .. N it there is
    ### a setter called at least once . 
    if self.FormInstance == None :
      self.CurrentForm = self.FormGenerator()
    else:
      self.CurrentForm.next()
      
  ###
  ### Controlled by GetFormInstance it's the generator. It should act after InputFormExtraction
  ### but require Fourth action,  The GetFormInstance to Feed at least first Control-set inside 
  ### form0 to CurrentForm to extract such input to generate the dictionnary required to send 
  ### a query with the API conjugated with FitsServices to give a look on earth of space-map and
  ### compare it from ground and seek differences, radio-telescope are targetted while they are
  ### heavy stuff that can not carried by shuttle, even Antares-one tested recently in Oct 16    
  ### 20h03 from Maryland's can not launch a set of radio telescope .
      
  def FormGenerator( self ):
    for ControlInstance in self.FormResultList:
      ### Set FormInstance to initialize or increase  the counter so I can get the reference number of form.
      self.FormInstance
      yield ControlInstance 
      
  

#if __name__ == "__main__":
#  sFactory=SkyViewFactory(  )
