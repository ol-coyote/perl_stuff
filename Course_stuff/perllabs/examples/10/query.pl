#!/usr/bin/perl
#
#	query.pl	
#
     
use MyDBUtils;

$dbh = connectToDB;

$sth = $dbh->prepare
	("SELECT id, descrip, price FROM product WHERE price > 10.0"); 

$sth->execute();
while (@row = $sth->fetchrow_array)
{
    print "Id: $row[0]  Descrip: $row[1]  Price: $row[2]\n";
}

$sth->execute();	
while ($row = $sth->fetchrow_hashref) 
{
    print "Price: $row->{price}  Descrip: $row->{descrip}\n";
}
 
$sth->execute();
$rows = $sth->dump_results;
    
$dbh->disconnect;

