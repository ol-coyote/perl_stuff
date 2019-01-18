#!/usr/bin/perl
#
#	Exercise 3-1
#
#	Print the numbers from 1-100 in three columns: DEC, OCT, HEX
#

print " DECIMAL   OCTAL     HEX\n";
print "------------------------\n";

$i = 1;
while( $i <= 100 ) 
{
	printf "%8d%8o%8x\n", $i, $i, $i;
	$i++;
}
