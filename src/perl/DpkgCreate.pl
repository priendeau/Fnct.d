#!/usr/bin/perl -w 

use DBI;
#use Digest::MD5 qw(md5 md5_hex);
use strict;
use warnings;

### 
### DpkgCreate.pl
### Helper to create many table responsible of storing informations 
### for dpkg-package . 
### 
### 
### 

my @switch_var = qw( DCDisplayDebug:DebugInfo
	                   DCEnforceDrop:CheckIsDrop
	                   DCStatistic:CheckIsOperationMode
	                   DCCreateFunction:CheckDefaultCreation ) ;

### ####################################################################
### #       Important Prefixed variable required in the run.
### ####################################################################

### A by default value, require to get DSDisplayDebug being by default 
### to 'False' to prevent showing the debug and the helper. 
###

if ( ! defined( $ENV{"DCDisplayDebug"} ) ) 
{
	$ENV{"DCDisplayDebug"}="False" ; 
}

### 
### DCCreateFunction isused to set the function used to process the Creation.
### By default DCCreateFunction=DefaultCreation, read the configuration variable
### inside the script and perform a basic creation for a specific need. 
### And come the function ReadSqlFile, that either do the stats of your SQL file 
### script to read information inside. Turning of the statistic and reading and  
### processing SQL statement one by one from your file specified inside FILE variable
### at the prompt make this script able to create the whole database back to your 
### configuration. 

if ( ! defined( $ENV{"DCCreateFunction"} ) ) 
{
	$ENV{"DCCreateFunction"}="DefaultCreation" ; 
}

### 
### Used to give statistic of the DROP table inside a SQL file script
### and to process the DROP table to SQL execution when this Pre-fixed
### variable is set to True. By default it should be False.  
### 

if ( ! defined( $ENV{"DCEnforceDrop"} ) ) 
{
	$ENV{"DCEnforceDrop"}="False" ; 
}

### 
### Important notice. 
### DCStatistic set by default as True make only the application reporting 
### information inside the selected file with POSIX variable FILE . Then 
### to change it at the prompt it pass in mode SQL processing where the 
### DROP will be processed belong to DCEnforceDrop status, process CREATE
### TABLE, UPDATE, INSERT.
### 
if ( ! defined( $ENV{"DCStatistic"} ) ) 
{
	$ENV{"DCStatistic"}="True" ; 
}

### From the posibility the function DefaultCreation declare an error, you
### can add the default code to read at the error, but mean it should it's attempt
### in a case there is no possibility to continue, make the first action fail 
### and the second to abandon it's happening . Returning $ExitCode=1 anre return 
### it inside YOUR PERSONAL FUNCTION will stop the process if you intent to halt it.

my $ExitCode=0 ; 
my $StrFunctErrorName = undef ;  
### ContinueCode does report an error against check-function from @switch_var and 
### do operate from the inside foreach. That ContinueCode will fall into $ExitCode
### when this one come in error . Error inside the foreach mean a constraint is not
### respected inside the POSIX variable you are using, enforcing them with 
### $ENV{NAME}=YOURVALUE to ensure your code can adapt to another function for 
### creating yourself other table. 
### do persist
### Why $ContinueCode is out of the foreach. 
### - Simply because after a first execution of the defined name inside switch_var
### does have to return 0 or 1 ; and in a case it's wrong it return 1 and the process 
### continue the rest of the foreach with the $ContinueCode will continue with 1. 
### at the beginning after the foreach the condition treat $ContinueCode to not 
### execute the next function, and do report it wrong. Only external variable out of the 
### foreach will keep a memory of a possible termination.
### - In prime the variable $StrFunctErrorName does store which function report an error.  
my $ContinueCode=0 ; 
 
my $fmt_print = "%s\n" ;
my $fmt_md5_print = "md5:%s:%s\n" ; 

my $DropTablePkgInf="DROP TABLE IF EXISTS PackageInformation" ; 
my $CreateTablePkgInf="CREATE TABLE IF NOT EXISTS PackageInformation ( PkID	INTEGER NOT NULL UNIQUE, PackageName	TEXT NOT NULL, PackageStatus	TEXT NOT NULL, ProcessorType	TEXT NOT NULL DEFAULT 'None', PRIMARY KEY( PkID AUTOINCREMENT ) )" ; 
my $PkSpecialInsert="INSERT INTO sqlite_sequence ( name, seq ) VALUES ( \"PackageInformation\" , 0 ) ;" ; 

### SQLite
my $database = "dpkg-database.sqlite";
my $DbDsn = "DBI:SQLite:dbname=$database";
my $userid = "";
my $password = "";

my $Apps="/usr/bin/dpkg" ; 

my $DisplayDebugState = $ENV{"DCDisplayDebug"} ; 

my $DbHandler = DBI->connect($DbDsn, $userid, $password, { RaiseError => 1, AutoCommit => 1 }) or die $DBI::errstr ;

my ( $DbAnswer, $DbResult ) = undef  ;

### Required by ReadSqlFile , and AttributeManagement 

my @ArrayDROPStmt ; 
my @ArrayCREATEStmt ;
my @ArrayUPDATEtmt ;
my @ArrayINSERTStmt ;

my %AttrStatement = ( 'DROP'		=> 	0,
											'CREATE' 	=>  0, 
											'UPDATE'  =>  0,
											'INSERT'  =>  0) ;


sub CheckDefaultCreation
{
	my $ErrorState=0;
	my $StrValue=$_[0];
	if ( $DisplayDebugState =~ /True/ ) 
	{ 
		printf STDERR ( $fmt_print, "Check status of $_[0], it's String general check,\nbe sure the function exist in your code." ) 
	} 
	if ( $DisplayDebugState =~ /True/ ) 
	{ 
		printf STDERR ( $fmt_print, "value:[$StrValue]" ) 
	}
	
	if ( $StrValue =~ /^[a-zA-Z0-9\-\_]*/ )
	{
		$ErrorState=0 ;
	} 
	else
	{
		### the generality of the regular expression make it simple as if you 
		### create function-name with unknow or unpritable character even perl 
		### won't be able to compile it. Accent too are in the case. 
		### Ne pas créée une fonction du nom de 'CréeUneTable' elle ne passera
		### pas à la compilation de perl. Et pourquoi pas CreezUneTable ?
		### 
		$ErrorState=1 ;
	}
	return $ErrorState ; 
}

sub DebugInfo
{
	my $ErrorState=0;
	my $StrValue=$_[0] ; 
	if ( $DisplayDebugState =~ /True/ ) 
	{ 
		print STDERR "DebugInfo value:$StrValue\n" ;
	}
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

sub CheckIsDrop
{
  my $ErrorState=0;
	my $StrValue=$_[0]; 
	
	if ( $DisplayDebugState =~ /True/ ) 
	{ 
		print STDERR "CheckIsDrop value:$StrValue\n" ;
	}
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

sub CheckIsOperationMode
{
  my $ErrorState=0;
	my $StrValue=$_[0]; 
	
	if ( $DisplayDebugState =~ /True/ ) 
	{ 
		print STDERR "CheckIsOperationMode value:$StrValue\n" ;
	}
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

sub start
{
	my $FunctionCreate = $ENV{"DCCreateFunction"} ; 
	if ( $DisplayDebugState =~ /True/ ) 
	{ 
		print STDERR "========================================\nCalling function $FunctionCreate.\n" 
	}
	eval "\$ContinueCode = $FunctionCreate( ) " ; 
	return $ContinueCode ; 
}

### 
### Function DefaultCreation
### Possibility to combine DCCreateFunction=ReadSqlFile
### by calling DpkgCreate.pl, allow to run this function.
### - This is a by default action where nothing is added 
### to call DpkgCreate.pl and will have to call this function.
### 
### This function is made to allow create table in the dpkg-project
### allowing to make selection, view and seek for anomalies. 
### This function also come with management of the POSIX environnment 
### variable DCEnforceDrop=[True|False] allowing or not to Drop a  
### table beore the creation of the table.
### 
### 

sub DefaultCreation
{
	my $ExitCode = 0 ; 
	my $BoolDropCond = $ENV{"DCEnforceDrop"} ;
	### 
	### AutoCommit mode for CleanDatabase . 
	### As it's usefull to use automatically commiting information while 
	### it's required to have a direct operation with the database.
	###  
	###  
	### 
	$DbHandler->{ AutoCommit } = 1  ;

	if ( $BoolDropCond =~ /True/ )
	{
		### Droping the table.
		if ( $DisplayDebugState =~ /True/ ) 
		{ 
			print STDERR "Command to drop the Table:$DropTablePkgInf\n" ;
		}
		
		$DbResult = $DbHandler->do( $DropTablePkgInf ) or die $DBI::errstr ; 
		if($DbResult < 0) 
		{
			print $DBI::errstr;
			$ExitCode=1 ;
		}		

		### Creating the table.
		if ( $DisplayDebugState =~ /True/ ) 
		{ 
			print STDERR "Command to Create the Table:$CreateTablePkgInf\n" ;
		}
		
		$DbResult = $DbHandler->do( $CreateTablePkgInf ) or die $DBI::errstr ; 
		if($DbResult < 0) 
		{
			print $DBI::errstr;
			$ExitCode=1 ;
		}		
		
		### Special insert for Sqlite.
		if ( $DisplayDebugState =~ /True/ ) 
		{ 
			print STDERR "Command to Create the Table:$PkSpecialInsert\n" ;
		}
		$DbResult = $DbHandler->do( $PkSpecialInsert ) or die $DBI::errstr ; 
		if($DbResult < 0) 
		{
			print $DBI::errstr;
			$ExitCode=1 ;
		}		
	}
	else
	{
		### Creating the table.
		### Without enforcing a drop table that cause an instant delete. 
		### This will simply not re-create the table an even leave all the
		### data in place. 
		if ( $DisplayDebugState =~ /True/ ) 
		{ 
			print STDERR "Command to Create the Table:$CreateTablePkgInf\n" ;
		}
		$DbResult = $DbHandler->do( $CreateTablePkgInf ) or die $DBI::errstr ;  
		if($DbResult < 0) 
		{
			print $DBI::errstr;
			$ExitCode=1 ;
		}		
	}
 $DbHandler->disconnect ; 
 return $ExitCode; 
}

### 
### Function ReadSqlFile
### Possibility to combine DCCreateFunction=ReadSqlFile
### by calling DpkgCreate.pl, allow to run this function.
###  
### - This function is made to allow create table in the dpkg-project
### as reference when we don't have the dpkg application and willing 
### to find information from a chroot environment or simply to inspect
### the project and use it's SQL capability. 
### 
### This function should read from SQL file at reason of one by line
### statement of CREATE TABLE , DROP TABLE or INSERT statement. Should 
### allow to react to POSIX environnment DCEnforceDrop=[True|False] to 
### let the design pass the DROP TABLE statement if the DCEnforceDrop=False. 
### By default, DCEnforceDrop will be False and you have to declare from 
### the prompt calling DpkgCreate.pl to True for any SQL file owning DROP 
### TABLE command to be skipped. 
###
### Function ReadSqlFile require AttributeManagement . 
###

sub AttributeManagement
{
	### CREATE/UPDATE/INSERT/DROP
	my $AttrKeyName = $_[0] ;
	### CREATESTATEMENT/UPDATESTATEMENT/INSERTSTATEMENT/DROPSTATEMENT
	my $AttrKeyNameStatement = $_[1] ; 
	### Content of $_
	my $StrStatementSQL = $_[2] ;
	my $StrNameVar=sprintf("\@Array%sStmt",$AttrKeyName) ;
	if( ! exists( $AttrStatement{$AttrKeyNameStatement} ) )
	{	
	 ### The non-presence of the key inside $AttrStatement{$AttrKeyNameStatement}
	 ### is not present we create an evaluation code forming the new hash-key
	 ### to be created and being referenced to to the one of @ArrayDROPStmt 
	 ### @ArrayCREATEStmt or  @ArrayINSERTStmt 
	 eval "$AttrStatement{$AttrKeyNameStatement}=$StrNameVar" ;	 
	}
	push( @{ $AttrStatement{$AttrKeyNameStatement} }, $StrStatementSQL )  ;
	$AttrStatement{$AttrKeyName}++ ;
}


sub ReadSqlFile
{
	my $ExitCode = 0 ; 
	my $FileNameVar = $ENV{"FILE"} ; 
	my $BoolDropCond = $ENV{"DCEnforceDrop"} ;
	my $BoolStatMode = $ENV{"DCStatistic"} ;
	
	if ( ! -f $FileNameVar )
	{
		print sprintf("Can't read the filename %s for reading SQL statement.\n",$FileNameVar) ; 
		$ExitCode=1 ;
	}
	else
	{
		print sprintf("Opening filename %s for reading SQL statement.\n",$FileNameVar) ;
		 
		open SQL_FH, "<" , $FileNameVar or die "Can't read file 'filename' [$!]\n";  
		
		foreach $_ ( <SQL_FH> )
		{
			chomp ;
			if ( $BoolDropCond =~ /True/ )
			{
				if( $_ =~ /^DROP/ )
				{
				 AttributeManagement( 'DROP', 'DROPSTATEMENT', $_ )  ;
				}
			}
			if( $_ =~ /^CREATE/ )
			{
				AttributeManagement( 'CREATE', 'CREATESTATEMENT', $_ )  ;
			}
			if( $_ =~ /^UPDATE/ )
			{
			 AttributeManagement( 'UPDATE', 'UPDATESTATEMENT', $_ )  ;
			}
			if( $_ =~ /^INSERT/ )
			{
			 AttributeManagement( 'INSERT', 'INSERTSTATEMENT', $_ )  ;
			}
		}
		close SQL_FH ;
		
		if ( $BoolStatMode =~ /False/ )
		{
			print sprintf("Statistic disabled.\nNow entering in the SQL Processing.\n") ;
		}
		if ( $BoolDropCond =~ /True/ )
	  {
			if ( ! ( exists $AttrStatement{'DROP'} ) )
			{
				print sprintf("no DROP TABLE inside file no statistic for.\n") ;
			}
			else
			{
				print sprintf("DROP TABLE statistic from file:\n%i\n",$AttrStatement{'DROP'}) ;
				print "Drop Table command:\n" ; 
				foreach ( @{ $AttrStatement{'DROPSTATEMENT'} } )
				{
				 print sprintf("%s\n",$_) ; 
				 if ( $BoolStatMode =~ /False/ )
				 {
					### Processing the DROP SQL statement.
					$DbResult = $DbHandler->do( $_ ) or die $DBI::errstr ;
				 }
				}
			}
	
	   }
	   ### 
	   ### CREATE Section
	   ### 
		 print sprintf("CREATE TABLE statistic(s) from file:\n%i\n",$AttrStatement{'CREATE'}) ;
		 foreach ( @{ $AttrStatement{'CREATESTATEMENT'} } )
		 {
		  print sprintf("%s\n",$_) ; 
			if ( $BoolStatMode =~ /False/ )
			{
			 ### Processing the DROP SQL statement.
			 $DbResult = $DbHandler->do( $_ ) or die $DBI::errstr ;
			}
		 }		 
		 ### 
		 ### Update Section
		 ### 
		 print sprintf("UPDATE statistic(s) from file:\n%i\n",$AttrStatement{'UPDATE'}) ;
		 foreach ( @{ $AttrStatement{'UPDATESTATEMENT'} } )
		 {
		  print sprintf("%s\n",$_) ; 
			if ( $BoolStatMode =~ /False/ )
			{
			 ### Processing the DROP SQL statement.
			 $DbResult = $DbHandler->do( $_ ) or die $DBI::errstr ;
			}
		 }
		 
		 ### 
		 ### Insert Section.
		 ### 
		 print sprintf("INSERT INTO statistic(s) from file:\n%i\nNo example will be displayed.\n",$AttrStatement{'INSERT'}) ; 
		 if ( $BoolStatMode =~ /False/ )
		 {
			 foreach ( @{ $AttrStatement{'INSERTSTATEMENT'} } )
			 {
				 ### Processing the INSERT SQL statement.
				 print sprintf(".") ;
				 $DbResult = $DbHandler->do( $_ ) or die $DBI::errstr ;
			 }
		 }
	}
	$DbHandler->disconnect ;
	return $ExitCode ;
}


###
### Example of cmd to extract other package information.
###
### dpkg-query  --showformat='${Depends}|${Pre-Depends}|${Replaces}|${Breaks}|${Conflicts}\n' -W 
###
###


### 
###
### The foreach statement is the biggest entry and processing
### at turn what you can find inside @switch_var, relation 
### between pre-defined variable and function to check your 
### POSIX environnment. Before we found, a set of by default
### value to make the foreach pass to a normal creation of 
### database belong to function DefaultCreation, that 
### imperatively check for $ENV{"DCEnforceDrop"} to set to 
### True and DROP a table before it create one. This application
### can sensitively accept a user added function to allow 
### something else like other DROP/CREATE statement. 
### 
### 
### 


foreach $_ ( @switch_var )
{
	my ($GlbVar ,$FnctCall) = split /:/, $_ ;
	
	### In any condition there is a default value 
	### that start at False, mean no debug.
	
	if ( defined( $ENV{$GlbVar} ) )
	{
		if ( $ContinueCode == 0 ) 
		{
			if ( $DisplayDebugState =~ /True/ ) 
			{ 
				print STDERR "$GlbVar is defined\n\tFunction reference:$FnctCall\n" ;
			}
			### adding a keyword from the same name.
			### This time, this one should hold the equivalent of $ENV{VAR}
			### and have also a function binded to it inside @switch_var
			### 
			$GlbVar = $ENV{"$GlbVar"} ;
			eval "\$ContinueCode = $FnctCall( \"$GlbVar\" ) " ; 
			if ( $DisplayDebugState =~ /True/ ) 
			{ 
				print STDERR "\nFunction $FnctCall return $ContinueCode\n\n" ;
			}
			if ( $ContinueCode ne 0 )
			{
				$StrFunctErrorName="$FnctCall" ;
				$ExitCode = 1 ; 
			}
		}
		else
		{
			if ( $DisplayDebugState =~ /True/ ) 
			{ 
				print STDERR "Function call $StrFunctErrorName report an error with switch configuration.\n" 
			}
			$ExitCode = 1 ;
		}
	}
}


if( $ExitCode == 0 )
{
	start( ) ; 
}
else
{
	print STDERR "Read from error code to know why ExitCode:$ExitCode is not equal to 0.\n"
}





