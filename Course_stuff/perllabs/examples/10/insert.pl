#!/usr/bin/perl
#
#	insert.pl
#
     
use MyDBUtils;

$dbh = connectToDB;

$dbh->do("INSERT INTO product VALUES('101', 'COPY PAPER', 29.00, 'CS', 100)");  
     
$dbh->do("INSERT INTO product VALUES(?,?,?,?,?)", undef,
	'102', 'LARGE COPY PAPER', 49.00, 'CS', 100);  
     	 
$dbh->disconnect;

