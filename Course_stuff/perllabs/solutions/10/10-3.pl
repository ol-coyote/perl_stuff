#!/usr/bin/perl
#
#	Exercise 10-3	
#
     
use MyDBUtils;

$dbh = connectToDB;

$sth = $dbh->prepare
	("SELECT name FROM customer WHERE id = '0114'"); 

$sth->execute();
print "\nCustomer with Id 0114:\n";	
while ($row = $sth->fetchrow_hashref) 
{
   print "$row->{name}\n";
}
 
$sth = $dbh->prepare
	("SELECT name, zipcode FROM customer WHERE state = 'CA'"); 

$sth->execute();
print "\nCustomers in CA:\n";	
while ($row = $sth->fetchrow_hashref) 
{
   printf("%-24s %s\n", $row->{name}, $row->{zipcode});
}  

print "\nEnter a state to search for: ";
$state = <>;
chomp($state);

$sth = $dbh->prepare
	("SELECT id, name FROM customer WHERE state = ?"); 

$sth->execute($state);
print "\nCustomers in $state:\n";
while ($row = $sth->fetchrow_hashref) 
{
   printf("%s  %s\n", $row->{id}, $row->{name});
}  

$dbh->disconnect;

