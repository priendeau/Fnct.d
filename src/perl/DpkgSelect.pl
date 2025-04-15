#!/usr/bin/perl -w 


### 
### DpkgSelect.pl
### Do various select and report information using Sqlite databse
### to read at dpkg tools data extracted and inserted . 
### Actually, SelectSumarizeReport a function allowing 
### to pass an SQL query, a Title and column in text mode and variable 
### from Database Handler declared and return a column list belong to a 
### count(*) function and one column. Inside the function there is only
### 2 columns to display.
### - You can write your query in between quote mark and will do the job.
### As well the column presentation in tab and space with words. 
### 
### 
### 
### 
### 

### *** Not Yet Implemented ***
### An Automatic entry inside function OneToOneInsertion is define 
### by default. To test any other mechanism relative to a database
### management, add a function and call it at the command prompt with
### pre-defined variable. DIEntryFunction=OneToOneInsertion
###
if ( ! defined( $ENV{"DIEntryFunction"} ) ) 
{
	$ENV{"DIEntryFunction"}="SelectExample" ; 
}

use DBI;
#use Digest::MD5 qw(md5 md5_hex);
use strict;
use warnings;

my $ExitCode=0 ; 
my $fmt_print = "%s\n" ;
my $fmt_md5_print = "md5:%s:%s\n" ; 
my $StrInsertPackage_fmt="INSERT INTO PackageInformation (PackageName, PackageStatus, ProcessorType) VALUES ('%s','%s','%s') ;" ;
my $StrUpdateTableSequence_fmt="UPDATE sqlite_sequence set seq = 0 where name='%s' ;" ;
my $StrDeleteTableData_fmt="delete from %s where PkID > 0 ;" ;
my $StrPackageStatusRep_fmt="SELECT PackageStatus,COUNT(*) FROM PackageInformation GROUP BY PackageStatus ;" ;
my $StrPackageSumInsert="SELECT count(*), PackageStatus FROM PackageInformation GROUP BY PackageStatus ORDER BY PackageStatus DESC LIMIT 0, 49999" ; 
my $StrPackageSumProcessor="SELECT count(*), ProcessorType FROM PackageInformation GROUP BY ProcessorType ORDER BY ProcessorType ASC LIMIT 0, 49999" ;

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

my ( $DbAnswer, $DbResult ) = undef  ;


$DbHandler->{ AutoCommit } = 1  ;

### 
### The select responsible of giving a summary report.  
### 
#$DbAnswer = $DbHandler->do( $StrPackageSumInsert ) or die $DBI::errstr ;
#
###
### SELECT count(*), PackageStatus FROM PackageInformation GROUP BY PackageStatus ORDER BY PackageStatus DESC LIMIT 0, 49999
###

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

SelectSumarizeReport( "Summary database report\nCount\tStatus\n", 
											$StrPackageSumInsert, 
											$DbHandler  ) ;


SelectSumarizeReport( "\nSummary Package with processor dependency:\nCount\tType of Processing\n", 
											$StrPackageSumProcessor, 
											$DbHandler  ) ;


$DbHandler->disconnect ;

