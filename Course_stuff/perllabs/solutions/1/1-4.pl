#!/usr/bin/perl
#
#	Exercise 1-4
#

$begin = 1;
$end = 100;
$total = 0;
    
for ($i = $begin; $i < $end; $i += 2)
{
	$total += $i;
}

print("The sum of the odd integers between $begin and $end is $total\n");
