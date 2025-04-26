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

#$text=q{Dpkg helper for perl application.} ;
#																					 text => $text, 
my $TUI = new UI::Dialog::Backend::Whiptail( title => "Dpkg Configuration.",
																					 height => 16, 
																					 width => 70,
																					 listheight => 7,
																					 debug => 1,
																					 test_mode => 0 );

$text =q{This application shortened the way you will acces to your registered application and the configuration of them to let use your application with less typing at the prompt.Here you will be introduce to the main menu allowing to change or establish a configuration for each application.} ;
### 
### First Msgbox 
### 
$TUI->msgbox( title => 'Welcome', text =>  $text );

if ($TUI->state() =~ /OK/ ) 
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

my $radioSelect = $TUI->radiolist( title => 'Configuration interface',
																 text => $text,
																 list =>
																 [ 'DpkgCreate ' , [ 'Create database' , 0 ],
																	 'DpkgSelect'  , [ 'Obtain summary'  , 0 ],
																	 'DpkgSearchDb', [ 'Extensive apps for dpkg.', 0],
																   'DpkgInsert'  , [ 'Insert data to database',0],
																   'General'     , [ 'For everyone.', 0],
																   'Recycle'     , [ 'Reduce your configuration.', 0]
																 ] );

 
if ( $TUI->state() =~ /OK/  ) 
{
  print sprintf( "Processing configuration for: %s.\n", $radioSelect ) ;
	$StrAnswer =  $radioSelect;
} 
else 
{
  printerr("The user pressed CTRL+C or ESC instead of OK.");
}


if ( $StrAnswer =~ /DpkgCreate/ )
{
	$text = q{This is a menu for configuration of DpkgCreate Where it's claims DefaultCreation it stand into abreviation D.C., ReadSqlFile will be named R.S.F.};
	
	my $SubTUI = new UI::Dialog::Backend::Whiptail( title => "Dpkg Configuration.",
																					 height => 20, 
																					 width => 65,
																					 listheight => 10,
																					 debug => 1,
																					 test_mode => 0 );
	my $menuSelect = $SubTUI->menu( title => 'DpkgCreate setting(s) available.',
															 text => $text,
															 list => [ 'DebugMode', 'Activate the Debug Mode.',
																				 'OperationMode' ,  'In statistic or insert mode.' ,
																				 'database' ,  'Database filename.' ,
																				 'DBI',  'The database type.' ,
																				 'DROPT' ,  'Drop statement for D.C., ' ,
																				 'CREATET' ,  'Create statement for D.C.' ,
																				 'UPDATET' ,  'Update statement for D.C.' ,
																				 'FILE' ,  'File to submit with R.S.F.' ,
																				 'Drop', 'Enforce the drop in insert sql statement.',
																				 'CreateFunc', 'Change the CreateFunction parameter.',
																				 'BACK', 'Leave the DpkgCreate go back to main menu.' ] );
	
	if ($SubTUI->state() =~ /OK/ ) 
	{
		print sprintf( "Menu selection: %s\n", ($menuSelect||'NULL') );
	} 
	else 
	{
		printerr("The user pressed CTRL+C or ESC instead of OK.");
	}	

}
