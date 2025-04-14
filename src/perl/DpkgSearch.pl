#!/usr/bin/perl -w 


### 
### DpkgSearch.pl 
### Script that combine a search facility and return a file list, a package
### list or a md5sum of a list of file from the search result. 
### It use Predefined-Variable at the prompt which is simply withing  
### the ${ENV[VARIABLE]} notation and make it easier to use. 
### Go get the documentation in section Definition of switch_var to get all
### the value. 
### 

use Digest::MD5 qw(md5 md5_hex);
use strict;
use warnings;

###
### switch_var and it's content.
### - hold in a format : VARIABLE:FUNCTION, every variable specified by
### the prompt will be associated to a function where this one deal with 
### criterions of each pre-defined variable.
### 

my @switch_var = qw( DSDisplayDebug:DebugInfo DSPkgStatus:CheckPackageStatus DSSearch:WithSearch DSFilterCol:SelectCol DSIsRegExp:SelectRegexp DSLimit:Islimit DSDisplay:DisplayOutputType DSMD5Process:Md5Process ) ;

my $fmt_print = "%s\n" ;
my $fmt_md5_print = "md5:%s:%s\n" ; 
my $ExitCode=0 ; 
my $ContinueCode=0 ; 
my $MaxValuePrint=0 ; 
my $StrFunctErrorName="" ; 

my $Apps="/usr/bin/dpkg" ; 

my $ctx = Digest::MD5->new; 

### ####################################################################
### #       Important Prefixed variable required in the run.
### ####################################################################

### A by default value, require to get DSDisplayDebug being by default 
### to 'False' to prevent showing the deug and the helper. 
###
if ( ! defined( $ENV{"DSDisplayDebug"} ) ) 
{
	$ENV{"DSDisplayDebug"}="False" ; 
}


### A by default value, require to get DSDisplay being by default 
### to package to let the task supply the package-name. 
###
if ( ! defined( $ENV{"DSDisplay"} ) ) 
{
	$ENV{"DSDisplay"}="package" ; 
}

### A by default value, require to get DSMD5Process being by default 
### to be unsensitive to md5 digest and use md5sum from the shell. 
###
if ( ! defined( $ENV{"DSMD5Process"} ) ) 
{
	$ENV{"DSMD5Process"}="md5sum" ; 
}

### A by default value, require to get DSPkgStatus being by default 
### to filter into the 'install' package . 
###
if ( ! defined( $ENV{"DSPkgStatus"} ) ) 
{
	$ENV{"DSPkgStatus"}="install" ; 
}

### ####################################################################
### #       End Important Prefixed variable 
### ####################################################################


### Definition of Prefixed variable use at the prompt. 
### 
### DSDisplayDebug
### - Allow displaying the Help and debug message from DpkgSearch.pl
### 
### 
### 
### 
### DSPkgStatus 
### - mandatory search inside rank-1 of a dpkg package installation . 
###  set to 'install', let display only package installed while, using
###  'deinstall' will also show only the de-installed state. 
### 
### 
### 
### 
### DSSearch 
### - search for a string inside package-name and likely to work for a 
### full-sequence or exact match. Using regular-expression heer will be 
### treated into regular-expression if DSIsRegExp=True. 
### 
### 
### 
### DSFilterCol 
### - will imply to look inside a specific colum of element of the 
### dpkg package installation string, and telling DSFilterCol=1 look
### inside the install/deinstall while DSFilterCol=0 look inside the 
### name. Usefull to search for procesor-signed package. 
### 
### 
### DSIsRegExp
### - True or False to let the DSSearch variable being used as 
### regular-expression or not. 
### 
### 
### DSDisplay
### All the possible key to set :
### - file, package, path, md5 
### 
### - file or package to let the output from the Search query output
### filename, by adding DSDisplay=file to ./DpkgSearch.pl  or 
### displaying the package by using DSDisplay=package if DSDisplay 
### is not defined, package is the default value. 
### 
### In both case of file, package it exclude parsing the ./ in the 
### output as by specifying 'file' or 'path' .
### 
### - md5 key does produce a line of type 
### md5:{HASH}:{FILE}
### and does generate every md5sum result for any file from the query 
### of DpkgSearch. 
### 
###
### DSMD5Process
### - two type of setting, value: 'perl', use md5 digest from perl.
###                        value: 'md5sum' use /bin/md5sum of bash related md5sum.
### 
### 

### DebugInfo function should not contain any print command, responsible
### to show or hide the preambule or all the information caused by cycling 
### the @switch_var. from a foreach It run function based on 
### Prefixed-Variable, made a lot of debug and, 
### equiped with :
### if ( $DisplayDebugState =~ /True/ ) { NESTED BLOCK WITH PRINT }
### will allow to hide that non heterogenous block. 
### So this function DebugInfo should run first.   

sub DebugInfo
{
	my $ErrorState=0;
	my $StrValue=$ENV{$_[0]}; 
	if ( $StrValue =~ /True/ )
	{
		$ErrorState=0 ;
	} 
	elsif ( $StrValue =~ /False/ )
	{
	  $ErrorState=0 ; 
	}
	else
	{
		$ErrorState=1
	}
	return $ErrorState ;
}

sub CheckPackageStatus
{
	my $ErrorState=0;
	my $DisplayDebugState = $ENV{"DSDisplayDebug"} ; 
	if ( $DisplayDebugState =~ /True/ ) {  printf STDERR ( $fmt_print, "Check status of $_[0], 2 choice, install or deinstall" ) } ;
	my $StrValue=$ENV{$_[0]}; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "value:[$StrValue]" ) };
	if ( $StrValue =~ /install/ )
	{
		$ErrorState=0 ;
	} 
	elsif ( $StrValue =~ /deinstall/ )
	{
	  $ErrorState=0 ; 
	}
	else
	{
		$ErrorState=1
	}
	
	return $ErrorState ;
}

sub WithSearch
{
	my $ErrorState=0;
	my $DisplayDebugState = $ENV{"DSDisplayDebug"} ; 
	if ( $DisplayDebugState =~ /True/ ) {  printf STDERR ( $fmt_print, "Check status of $_[0], Should be a String." ) } ;
	my $StrValue=$ENV{$_[0]}; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "value:[$StrValue]" ) } ;
	return $ErrorState ;
}

sub SelectCol
{
	my $ErrorState=0;
	my $DisplayDebugState = $ENV{"DSDisplayDebug"} ; 
	if ( $DisplayDebugState =~ /True/ ) {  printf STDERR ( $fmt_print, "Check status of $_[0], 2 choice, 0 or 1." ) } ;
	my $StrValue=$ENV{$_[0]}; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "value:[$StrValue]" ) } ;
	if ( ( $_[0] gt 0 ) or ( $_[0] lt 1 ) )
	{
		$ErrorState=0 ; 
	}
	else
	{
		$ErrorState=1 ;
	}	
	return $ErrorState ;
}

sub SelectRegexp
{
	my $ErrorState=0;
	my $DisplayDebugState = $ENV{"DSDisplayDebug"} ; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "Check status of $_[0], can only be True/False, and\n\tchange status of DSSearch into regular-expression." ) } ;
	my $StrValue=$ENV{$_[0]}; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "value:[$StrValue]" ) };
	if ( $StrValue =~ /True/ )
	{
		$ErrorState=0 ;
	} 
	elsif ( $StrValue =~ /False/ )
	{
	  $ErrorState=0 ; 
	}
	else
	{
		$ErrorState=1
	}
	return $ErrorState ;
}

sub Islimit
{
	my $ErrorState=0;
	my $DisplayDebugState = $ENV{"DSDisplayDebug"} ; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "Check status of $_[0], Integer value\n\texpected, value of 0, mean no limit." ) } ;
	my $StrValue=$ENV{$_[0]}; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "value:[$StrValue]" ) };
	if ( $_[0] gt 0 )
	{
		$MaxValuePrint=$ENV{$_[0]} ; 
	}
	else
	{
		$ErrorState=1;
	}
	return $ErrorState ;
}

sub DisplayOutputType
{
	my $ErrorState=0;
	my $DisplayDebugState = $ENV{"DSDisplayDebug"} ; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "Check status of $_[0], String value between\n\t'package', 'file', 'path' and 'md5'\n\tare expecteds. Instead to put no value.\n\tRemove this Predefined-Variable.\n\tIt act like package display by default.\n\tIn case of 'path', 'file', 'md5' it\n\tneglect the ./ entry. In 'file'\n\tmode it skip the path.\n" ) } ;
	my $StrValue=$ENV{$_[0]}; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "value:[$StrValue]" ) } ;
	if ( $StrValue =~ /file/ )
	{
		$ErrorState=0 ;
	} 
	elsif ( $StrValue =~ /package/ )
	{
	  $ErrorState=0 ; 
	}
	elsif ( $StrValue =~ /path/ )
	{
	  $ErrorState=0 ; 
	}
	elsif ( $StrValue =~ /md5/ )
	{
	  $ErrorState=0 ; 
	}
	else
	{
		$ErrorState=1
	}
	return $ErrorState ;
	
}

sub Md5Process
{
	my $ErrorState=0 ;
	my $DisplayDebugState = $ENV{"DSDisplayDebug"} ; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "Check status of $_[0], Two possible value:\n\t'perl' use the internal md5 digest of perl.\n\tvalue 'md5sum' refer to use an external\n\tapplication md5sum.\n" ) } ;
	my $StrValue=$ENV{$_[0]}; 
	if ( $DisplayDebugState =~ /True/ ) { printf STDERR ( $fmt_print, "value:[$StrValue]" ) } ;
	if ( $StrValue =~ /perl/ )
	{
		$ErrorState=0 ;
	} 
	elsif ( $StrValue =~ /md5sum/ )
	{
	  $ErrorState=0 ; 
	}
	else
	{
		$ErrorState=1
	}
	return $ErrorState ;
	
}

### Part of a Startup sequence, it's should run first. It's not specified  
### inside start function, and should run before the start itself. Driving 
### Pre-defined variable and reading result by executing the function
### for each variable, a name is hook to, see for switch_var and VARIABLE:FUNCTION
### 
### 
### 
### Action to scan the @switch_var and apply a generic test that verify 
### it's presence. 
### 

foreach $_ ( @switch_var )
{
	my ($GlbVar ,$FnctCall) = split /:/, $_ ;
	
	### In any condition there is a default value 
	### that start at False, mean no debug.
	my $DisplayDebugState = $ENV{"DSDisplayDebug"} ; 
	if ( defined( $ENV{$GlbVar} ) )
	{
		if ( $ContinueCode == 0 ) 
		{
			if ( $DisplayDebugState =~ /True/ ) { print STDERR "$GlbVar is defined\n\tFunction reference:$FnctCall\n" } ;
			### adding a keyword from the same name.
			### This time, this one should hold the equivalent of $ENV{VAR}
			### and have also a function binded to it inside @switch_var
			### 
			eval "my \$$GlbVar = $ENV{$GlbVar}" ;
			eval "\$ContinueCode = $FnctCall( \"$GlbVar\" ) " ; 
			if ( $DisplayDebugState =~ /True/ ) { print STDERR "\nFunction $FnctCall return $ContinueCode\n\n" } ;
			if ( $ContinueCode ne 0 )
			{
				$StrFunctErrorName="$FnctCall" ;
				$ExitCode = 1 ; 
			}
		}
		else
		{
			if ( $DisplayDebugState =~ /True/ ) { print STDERR "Function call $StrFunctErrorName report an error with switch configuration.\n" }  ;
			$ExitCode = 1 ;
		}
	}
}


my @lines = `$Apps --get-selections` ; 

sub per_line_matches 
{
	my($pkgNameLine)  = shift @_ ;
	my $intId = $_[0] ; 
  my @ArrayLine = split /[\ \t]+/, $pkgNameLine ;
  return $ArrayLine[$intId] ; 
} 

sub TypeShow
{
	my $StrLine=$_[0] ; 
	my $intPosField=$_[1] ; 
	my $StrTypeShow=$ENV{"DSDisplay"} ;
	my $StrDigestType=$ENV{"DSMD5Process"} ;
	my $intCountLine=1 ; 
	
	if ( $StrTypeShow =~ /package/ )
	{ 
		printf ( $fmt_print, per_line_matches( $StrLine , $intPosField ) ) ;
	}
	
	if( ( $StrTypeShow =~ /file/ ) or ( $StrTypeShow =~ /path/ ) )
	{
		my $StrPackage=per_line_matches( $StrLine , $intPosField ) ;
		my @file_lines = `$Apps --listfiles $StrPackage` ; 
		foreach my $filePackage ( @file_lines )
		{
			chomp($filePackage) ;
			if ( ! ( $filePackage =~ /^\/\./ ) )
			{ 
				if ( $StrTypeShow =~ /file/ )
				{
					if ( -f $filePackage )
					{
						printf ( $fmt_print, $filePackage ) ;
					}
				}
				if ( $StrTypeShow =~ /path/ )
				{
					if ( -d $filePackage ) 
					{
						printf ( $fmt_print, $filePackage ) ;
					}
				}
				
			}
		}
	}
	
	if( $StrTypeShow =~ /md5/ )
	{ 
		my $StrPackage=per_line_matches( $StrLine , $intPosField ) ;
		my @file_lines = `$Apps --listfiles $StrPackage` ; 
		foreach my $filePackage ( @file_lines )
		{
			chomp($filePackage) ;
			if ( ! ( $filePackage =~ /^\/\./ ) )
			{ 
				if ( -f $filePackage )
				{
					if ( $StrDigestType =~ /md5sum/ )
					{
					 my $StrChecksum = `md5sum $filePackage` ;
					 chomp( $StrChecksum );
					 my @ArrayCheckSum = split /[\ \t]+/, $StrChecksum ;
					 printf ( $fmt_md5_print, $ArrayCheckSum[0], $ArrayCheckSum[1] ) ;
					}
					
					if( $StrDigestType =~ /perl/ )
					{ 
						###open( FILE, $filePackage ) or die "Can't open file: $filePackage for reading.\n" ; 
						####my $StrDataFile = <FILE> ;
						### As read on https://stackoverflow.com/questions/953707/in-perl-how-can-i-read-an-entire-file-into-a-string
						### where reading from perl and it loose about formatting for any type of read
						### Adding this method of reading help respecting the file integrity and let 
						### md5sum report exactly the same digest from the perl internal uses of Digest::MD5.
						### 
						my $StrDataFile = do 
						{
							local $/ = undef;
							open my $fh, "<", $filePackage
							or die "Can't open file: $filePackage for reading.\n";
							<$fh>;
						};

						my $digest = md5_hex($StrDataFile);
						
						chomp( $digest );
						#my @ArrayCheckSum = split /[\ \t]+/, $StrChecksum ;
						printf ( $fmt_md5_print, $digest, $filePackage ) ;				
					}
				
				}
			
			}
		}
	}
	return $intCountLine ;	
}
sub ShowByItem
{
	my $RegExpMode=$ENV{"DSIsRegExp"} ; 
	my $RegExpSearch=$ENV{"DSSearch"} ; 
	### to add to allow Package status to be considered.
	my $PackageStatus=$ENV{"DSPkgStatus"} ;
	
	my $StringMatching ;
	my $intCountLine=0 ; 
	my $StrLine=$_[0] ;
	my $intPosField=$_[1] ; 
	$StringMatching=per_line_matches( $StrLine , $intPosField );
	### to add to allow Package status to be considered.
	### It's the official location where a line contain 
	### "PACKAGE\t\tSTATUS\n" format
	my $StrPackageStatus=per_line_matches( $StrLine , 1 );
	
	if ( $StrPackageStatus eq $PackageStatus )
	{
		if ( $RegExpMode =~ /True/ )
		{
			if( $StringMatching =~ /$RegExpSearch/ )
			{
				$intCountLine=TypeShow( $StrLine , $intPosField ) ; 
			}
			else
			{
				$intCountLine=0 ; 
			}
		}
		else
		{
		 if( $RegExpSearch ne "" )
		 {
			if( $StringMatching eq $RegExpSearch )
			{
				### At this level the Counting take or not the count, depending 
				### the number of match item being consider with variable DSLimit. 
				### Based on type of DSDisplay['package'] or DSDisplay['file']
				### It query the number of line for DSLimit by package will certify 
				### to analyse more package than DSLimit. But in file showing
				### we are not showing the package and only the file list.
				### in a case DSLimit=10 .  
				### These can take more than 10 lines per package but not exceding 
				### the limit of 10 for showing 10 package, so $intCountLine will 
				### always serve to count package but does not lime by the time 
				### all the file being show.
				$intCountLine=TypeShow( $StrLine , $intPosField ) ; 
			}
		 }
		 else
		 {
			$intCountLine=TypeShow( $StrLine , $intPosField ) ; ;
		 }
		}
	}
	else
	{
		$intCountLine=0 ; 
	}
	return $intCountLine;
}

sub start
{
	my $intStepAdd=0 ; 
	if ( $MaxValuePrint ne 0 )
	{
		print STDERR "\nExtracting output of running application ($Apps)\nMaxValuePrint limit:$MaxValuePrint package(s)\n" ; 
	}
	my $IsShowTime="False" ; 
	my $IntCountMax=0 ; 
	foreach my $line ( @lines )
	{
		$IsShowTime="False" ;
		chomp($line); 
		if ( $MaxValuePrint > 0 )
		{
			if ( $IntCountMax <= ( $MaxValuePrint - 1 ) )
			{
				$IsShowTime="True" ;
			}
			$IntCountMax=$IntCountMax+$intStepAdd ; 
		}
		else
		{
			$IsShowTime="True" ;
		}
		if ( $IsShowTime =~ /True/ )
		{
			$intStepAdd=ShowByItem($line , 0 ) ;
		}
	}

	return $ExitCode ;
}

if( $ExitCode eq 0 )
{
	start( ) ; 
}
