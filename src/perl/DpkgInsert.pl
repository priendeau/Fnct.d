#!/usr/bin/perl -w 


### 
### Dpkginsert.pl
### 
### This version does clean the table, add the data and create an
### insert-statement of all the collected element. So you can add 
### this insert by reading the file and put all the insert statement.
### 
### 
### 
### 

### An Automatic entry inside function OneToOneInsertion is define 
### by default. To test any other mechanism relative to a database
### management, add a function and call it at the command prompt with
### pre-defined variable. DIEntryFunction=OneToOneInsertion
###
if ( ! defined( $ENV{"DIEntryFunction"} ) ) 
{
	$ENV{"DSDisplayDebug"}="OneToOneInsertion" ; 
}

use DBI;
#use Digest::MD5 qw(md5 md5_hex);
use strict;
use warnings;

my $ExitCode=0 ; 
my $fmt_print = "%s\n" ;
my $fmt_md5_print = "md5:%s:%s\n" ; 
my $StrInsertPackage_fmt="INSERT INTO PackageInformation (PackageName, PackageStatus, ProcessorType) VALUES ('%s','%s','%s') ;" ;
### my $strQuickInsertPackage=qw( INSERT INTO PackageInformation \( PackageName, PackageStatus, ProcessorType \) \( ?, ?, ? \) ; ) 
my $StrUpdateTableSequence_fmt="UPDATE sqlite_sequence set seq = 0 where name='%s' ;" ;
my $StrDeleteTableData_fmt="delete from %s where PkID > 0 ;" ;
my $StrPackageStatusRep_fmt="SELECT PackageStatus,COUNT(*) FROM PackageInformation GROUP BY PackageStatus ;" ;
my $StrPackageSumInsert="SELECT count(*), PackageStatus FROM PackageInformation GROUP BY PackageStatus ORDER BY PackageStatus DESC LIMIT 0, 49999" ; 

### SQLite
my $InsertFile = "insert-PackageInformation.sql" ; 
my $database = "dpkg-database.sqlite";
my $DbDsn = "DBI:SQLite:dbname=$database";
my $userid = "";
my $password = "";

my $Apps="/usr/bin/dpkg" ; 

###
### Example of cmd to extract other package information.
###
### dpkg-query  --showformat='${Depends}|${Pre-Depends}|${Replaces}|${Breaks}|${Conflicts}\n' -W 
###
###

### 
### AutoCommit mode for CleanDatabase . 
### As it's usefull to use automatically commiting information while 
### it's required to have a direct operation with the database to get
### it as it's default clean state before an insertion. this mode 
### allow one query at the time. 
### 

my $DbHandler = DBI->connect($DbDsn, $userid, $password, { RaiseError => 1, AutoCommit => 1 }) or die $DBI::errstr ;


sub CleanDatabase
{
	print "\nFlushing Database Sqlite.\n" ;
	
	### Openning the Database handler.  
	my ( $DbStmt,$DbAnswer ) = undef ; 
	
	### The delete data segment belong to all package status.
	### Delete with prepare statement.
	$DbAnswer = $DbHandler->do( sprintf( $StrDeleteTableData_fmt, "PackageInformation"  ) ) or die $DBI::errstr ;
	
	### Update the sqlite_sequence for PkId of PackageInformation to start 
	### back at 1. 
	$DbAnswer = $DbHandler->do( sprintf( $StrUpdateTableSequence_fmt, "PackageInformation"  ) ) or die $DBI::errstr ;
	
	print "\nDatabase now empty.\n" ;
	
	### Don't close the database handler.
	### Insertion function will require to use the link . 
}


### 
### AutoCommit mode disabled for this foreach .
### This loop will use many insert of $StrInsertPackage_fmt with all 
### appropriate information. In a case there is no procesor information
### and belong to All type of processor and are subjective to own images,
### configuration, help, documentation, they are noted to None . As the 
### other type provide the processor information, it's still the same 
### query. Feeded with information from the 2 type of regular, expression,
### one will hold 'None' as value for related package. 
###
### All option are store with push operator inside ArrayBindValue. 
### Later we will use the execute query option to pass all parameter comming
### from '?' inside insert query into data passed here. 
###
### It's also require that this action store individually inside $StrQueryBuild
### all insert querry-model with the '?' as the variable information 
### pass-throught. 
###
###

my $BoolIsMatch="False";
my @ArrayBindValue ;

my @ArrayApp ; 

push @ArrayApp, "$Apps --get-selections | grep -v \"deinstall\"" ; 
push @ArrayApp, "$Apps --get-selections | grep \"deinstall\"" ;

my $StrQueryBuild = undef; 
my $StrCurrentQuery = undef ;  

sub SelectSumarizeReport
{
	my $TitleReport = $_[0] ; 
	my $StrQuery=$_[1] ;
	my $DBHANDLER = $_[2] ; 
	my $DbAnswer = $DBHANDLER->prepare( $StrQuery );
	my $DbResult = $DbAnswer->execute() or die $DBI::errstr;

	if($DbResult < 0) 
	{
		 print $DBI::errstr;
	}
	else
	{
		print $TitleReport ;
		while( my @ArrayRow = $DbAnswer->fetchrow_array())
		{
			print sprintf("%s\t%s\n", $ArrayRow[0], $ArrayRow[1] ) ;
		}
	}
	
}



for( my $intx=0 ; $intx <= $#ArrayApp ; $intx++	 )
{
	foreach $_ ( `@ArrayApp[$intx]` )
	{
		chomp ;
		### 3 positions match pattern.
		if( $_ =~ m/(^[a-z0-9]*[\-\_\.a-z0-9]*)(?::)([a-z0-9]{4,}?)(?:\s*)(install|deinstall)$/is )
		{
		 $BoolIsMatch="True";
		 $StrCurrentQuery = sprintf( $StrInsertPackage_fmt , $1, $3 ,$2 ) ;
		 print sprintf("%s\n",$StrCurrentQuery );
		 push @ArrayBindValue, $StrCurrentQuery ;
		}
		
		if( $BoolIsMatch =~ /False/ )
		{		
			### 2 positions match pattern.
			if( $_ =~ m/(^[a-z0-9]*[\-\_\.a-z0-9]+)(?:\s*)(install|deinstall)$/is )
			{	
			 print sprintf("%s[2 value:\tval1:%s val2:%s]\n" , $_, $1, $2 ) ;
			 $StrCurrentQuery = sprintf( $StrInsertPackage_fmt , $1, $2 ,'None' ) ;
			 print sprintf("%s\n",$StrCurrentQuery ) ;
			 push @ArrayBindValue, $StrCurrentQuery ;
			} 
		}

		$BoolIsMatch="False";
	}
}

my $DbAnswer ; 

$DbHandler->{ AutoCommit } = 1  ;

if ( -f $InsertFile )
{
	unlink $InsertFile ; 
}

open INSERT_FH, ">" , $InsertFile ; 

foreach $_ ( @ArrayBindValue ) 
{
	print INSERT_FH sprintf( "%s\n" , $_ ) ; 
	$DbAnswer = $DbHandler->do( $_ ) or die $DBI::errstr ;
}

close INSERT_FH ; 


### Generate a summary report for insertion of installed
### mode and de-installed package. 
### 

### $DbAnswer = $DbHandler->do( $StrPackageSumInsert ) or die $DBI::errstr ;

SelectSumarizeReport( "Summary database report\nCount\tStatus\n", 
											$StrPackageSumInsert, 
											$DbHandler  ) ;

$DbHandler->disconnect ;

