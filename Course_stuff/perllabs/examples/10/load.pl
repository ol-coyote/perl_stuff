#!/usr/bin/perl
#
#	load.pl
#
     
use MyDBUtils;

$dbh = connectToDB;

$sth = $dbh->prepare("INSERT INTO product VALUES(?,?,?,?,?)");

while(<>)
{
	@fields = split(',');
	$sth->execute($fields[0],$fields[1],$fields[3],$fields[2],$fields[4]);
	print "Added: $fields[0]\n";
}
     	 
$dbh->disconnect;

