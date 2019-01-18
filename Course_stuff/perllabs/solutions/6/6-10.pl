#!/usr/bin/perl
#
#  Exercise 6-10
#

open(DATAFILE, "products") || die "Can't open products file\n";
@lines = <DATAFILE>;
close DATAFILE;

print "Category           Brand Name         Description                  ";
print "Price   Rating  Weight\n";
print "--------           ----------         -----------                  ";
print "-----   ------  ------\n";

foreach $rec (@lines) {
	($cat, $brand, $desc, $price, $rating, $weight) = split(":", $rec);
	printf("%-18.18s %-18.18s %-25.25s  \$%8.2f   %3.1f %5d\n", 
		$cat, $brand, $desc, $price, $rating, $weight);
}
