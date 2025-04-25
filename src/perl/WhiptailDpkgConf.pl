#!/usr/bin/perl

### filename : WhiptailDpkgConf.pl 

use strict;
use warnings;
use diagnostics;
use UI::Dialog::Backend::Whiptail;

my %PkgAttr =  ( 'DpkgCreate' 	 =>  1,
                 'DpkgSelect' 	 =>  1,
                 'DpkgInsert' 	 =>  1, 
                 'configuration' =>  1 ) ;

sub printerr 
{ 
  print STDERR sprintf("\nUI::Dialog : %s\n",@_ ) ;  
  sleep(1); 
}

# placeholder variable
our $text;
my $StrAnswer = undef ; 

my $d = new UI::Dialog::Backend::Whiptail( title => "Dpkg Configuration.",
																					 text => $text, 
																					 height => 16, 
																					 width => 70,
																					 listheight => 7,
																					 debug => 1,
																					 test_mode => 0 );

$text =q{This application shortened the way you will acces to your registered application and the configuration of them to let use your application with less typing at the prompt.Here you will be introduce to the main menu allowing to change or establish a configuration for each application.} ;
### 
### First Msgbox 
### 
$d->msgbox( title => 'Welcome', text =>  $text );

if ($d->state() eq "OK") 
{
  printerr("The user pressed OK.");
} 
else 
{
  printerr("The user pressed CTRL+C or ESC instead of OK.");
}

### 
### Second Window for main selector to configure . 
###
$text =q{This radio-list menu tell which is the next item to configure.};

my $radioSelect = $d->radiolist( title => 'Configuration interface',
																 text => $text,
																 list =>
																 [ 'DpkgCreate ' , [ 'Create database' , 0 ],
																	 'DpkgSelect'  , [ 'Obtain summary'  , 0 ],
																	 'DpkgSearchDb', [ 'Extensive apps for dpkg.', 0],
																   'DpkgInsert'  , [ 'Insert data to database',0],
																   'General'     , [ 'For everyone.', 0],
																   'Recycle'     , [ 'Reduce your configuration.', 0]
																 ] );

 
if ( $d->state() eq "OK" ) 
{
  printerr( "Processing configuration for: '".$radioSelect."'");
	$StrAnswer =  $radioSelect;
} 
else 
{
  printerr("The user pressed CTRL+C or ESC instead of OK.");
}
