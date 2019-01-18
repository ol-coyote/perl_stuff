#!/usr/bin/perl
#
#	Exercise 10-2
#
     
use MyDBUtils;

$dbh = connectToDB;

$sth = $dbh->prepare("INSERT INTO customer VALUES(?,?,?,?,?,?,?)");

while(<>)
{
	@fields = split(',');
	$sth->execute(@fields);
	print "Added: $fields[0]\n";
}
     	 
$dbh->disconnect;

