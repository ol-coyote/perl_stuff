#!/usr/bin/perl
#
#	MyDBUtils.pm
#   Skeleton for connecting to database using Perl DBI
#
     
use DBI;
     
sub connectToDB {
	my $database = "test";
	my $hostname = "localhost";
	my $user     = "";
	my $password = "";

	my %connectionAttributes = (
	    PrintError       => 0,
	    RaiseError       => 1,
	    FetchHashKeyName => 'NAME_lc'
	);
		 
	#my $dsn = "DBI:mysql:database=$database;host=$hostname";
	my $dsn = "DBI:SQLite:database=$database;host=$hostname";

	my $dbh = DBI->connect($dsn, $user, $password, \%connectionAttributes) 
		or die $DBI::errstr;
	
	return $dbh;
}

1;
	

