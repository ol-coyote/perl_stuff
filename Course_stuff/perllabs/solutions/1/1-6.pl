#!/usr/bin/perl
#
#	Exercise 1-6 
#

$i = 7;

while($i >= 1) 
{
	$j = 1;
	while($j <= $i) 
	{
		print "$j ";
		$j++;
	} 
	print "\n";
	$i--;
} 
