#!/usr/bin/gawk 
### This script require to use --assign=StrName="__TAG__"
### Where  __TAG__ is the item to seacrh.
###
### As Example, this script can find out all __TAG__ inside an html
### file. as example we have an xml file with a lot of tag 
### File geany.glade:
### ./data/geany.glade:717:    <child internal-child="vbox">
### ./data/geany.glade:718:      <object class="GtkVBox" id="dialog-vbox3">
### ./data/geany.glade:809:                  <object class="GtkVBox" id="vbox20">
### ./data/geany.glade:826:                              <object class="GtkVBox" id="vbox4">
### ./data/geany.glade:910:                              <object class="GtkVBox" id="vbox34">
### ./data/geany.glade:1179:                  <object class="GtkVBox" id="vbox41">
### ./data/geany.glade:1196:                              <object class="GtkVBox" id="vbox21">
### ./data/geany.glade:1315:                              <object class="GtkVBox" id="vbox36">
### ./data/geany.glade:1416:                              <object class="GtkVBox" id="vbox35">
### ./data/geany.glade:1505:                  <object class="GtkVBox" id="vbox14">
### ./data/geany.glade:1522:                              <object class="GtkVBox" id="vbox11">
### ./data/geany.glade:1537:                                          <object class="GtkVBox" id="vbox46">
### ./data/geany.glade:1894:                              <object class="GtkVBox" id="vbox22">
###
### Where many vbox existing and It require to add one other and avoiding 
### conflicts mean adding a vbox higher than what it exist. 
###
### Once the Grep command can acheive to filter all the 'vbox[0-9]*'
### it show approximately what we can see. 
###
### Using this script with --assign=StrName='vbox' -F ' ' , this will extract
### If and only if searched item are having hexadecimal value like UUID, you 
### can rewrite the variable StrId with --assign=StrId='[0-9a-fA-F\-]+' where
### will turn the numerical boundary to respect. Usually there is no problem 
### of order with hexadecimal since they are respecting the output format for  
### __VALUE____ID__ where ID can be 2, 4 16, 28 char long depending it's 
### unicity implied. 
###
###
### all vbox unsorted
### vbox
### vbox03
### vbox20
### vbox04
### vbox34
### vbox41
### vbox21
### vbox36
### vbox35
### vbox14
### vbox11
### vbox46
### vbox22
### vbox54
### vbox26
### vbox15
### vbox42
### vbox52
### vbox53
### using this script and a sort ( /usr/bin/sort -g ) will sort it numerically 
### and provide you the last one. 
### 
### We recommend usinf -F ' ' because the script is using the space to parse 
### the line attempting to find the item inside StrName imported from 
### --assign switches.
BEGIN{
}
{
 MatchingUniqueNumber="TRUE" ; 
 RegStrName=sprintf("%s[0-9]+",StrName);
 if ( StrID != "" )
 {
  RegExpId=StrID;
  MatchingUniqueNumber="FALSE" ; 
  RegStrName=sprintf("%s%s+",StrName,StrID);
 
 }
 for( IntX=1 ; IntX <= NF ; IntX++ )
 { 
  ### This test will : 
  ### run from i to NF (Number of field) againt presence of 
  ### RegStrName. 
  ### Noted RegStrName and simple StrName can fit inside an 
  ### Regexp operator '~', since it's a variable and not a 
  ### hand writing looking for '/vbox[0-9]/' . Writing thru
  ### a variable can accept automatically the  RegStrName or
  ### you have to code it with /__TAG__/ 
  if(  $(IntX) ~ RegStrName )
  { 
    StrI=$(IntX) ; 
    if( MatchingUniqueNumber == "TRUE" && StrI ~ /[A-Za-z][0-9]\>/ )
    { 
     ### This section filtering all about unique __TAG__ between 
     ### __TAG__0 to __TAG__9 and should return it into __TAG__01
     ### to __TAG__09 .
     ### The if and Regexp operator '~' does use awk compatible regexp  
     ### End-boundary detection of word '\>' opposed to Beginning-boundary 
     ### detection of word '\<' which is useless to use because in fact It
     ### require to add a '0' to a ordinal 0-9 value to make the __TAG__ 
     ### sortable with Gnu Sort with 
     ### option '-g' '
     ### compare according to general numerical value'
     match( StrI,RegStrName,ArrayNum ) ; 
     match(ArrayNum[0],/[0-9]\>/,ArrayRes) ; 
     ArrayRes[0]=sprintf("%s0%i", StrName,ArrayRes[0]) ; 
    } 
    else 
    { 
     match( StrI,RegStrName,ArrayRes ) ; 
    } ; 
    printf("%s\n",ArrayRes[0]);
  }
 }
}END{}
