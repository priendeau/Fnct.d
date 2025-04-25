#!/usr/bin/perl -w 

### filename: PerlDialogCodeText.pl 

use strict;
use warnings;
use UI::Dialog::GNOME;

my $StrConfFile = "perl-example-script.pl" ;

if ( ! -f $StrConfFile )
{
	`touch $StrConfFile` ; 
}

my $dialogWindows = new UI::Dialog::GNOME ( title => 'Default title',
																						height => 40, width => 130 ,
																						order => [ 'zenity', 'xdialog' ] );

# Either a Zenity or Xdialog msgbox widget should popup,
# with a preference for Zenity.

$dialogWindows->msgbox( title 			=> "Perl Script execution", 
												text 				=> "\nAn Text window wil appear let you insert code.!\n",
												warning 		=> 0 ,
												iconname 		=> 'alarm' ,
												font 				=> 'monospace 14' );

my $StrReturn = undef ; 
my $StrDataFile = undef ; 
my $IntExit=1 ; 

while ( $IntExit )
{							
	$StrDataFile = do 
	{
		local $/ = undef ;
		open FH_READ, "<", $StrConfFile
		or die "Can't open file: $StrConfFile for reading.\n";
		<FH_READ> ;
	} ;
	close FH_READ ; 
	 
	$StrReturn = $dialogWindows->textbox( title 		=> "Editing Script test[$StrConfFile]", 
																				editable 	=> 1, 
																			  font_name	=> "monospace 14",
																				filename 	=> $StrConfFile, 
																				width 		=> 800, 
																				height 		=> 640, 
																				icon 			=> 'alarm' );
	if( $StrReturn ne 0 )
	{
		print sprintf("Content returned from text-box editor:\n%s\n", $StrReturn ) ; 
		
		open OUT_PERL, ">" , $StrConfFile or die "Can't open filename $StrConfFile for writing [$!]\n";  
		
		foreach $_ ( $StrReturn ) 
		{
			chomp ; 
			print OUT_PERL sprintf( "%s\n" , $_ ) ; 
		}
		close OUT_PERL ; 

		chmod 0755, $StrConfFile ; 

		do sprintf("./%s" , $StrConfFile ) ; 
	}
	else
	{
		print sprintf("Program interruption.\n") ; 
		$IntExit=0 ; 
	}
}
