#!/usr/bin/perl
#
#	Exercise 9-1
#
#	Write a program which reads a file such as the one shown below 
#	and creates a two dimensional array and then prints it
#
#
#	100 200 300 400
#	300 400 500 600 300
#	50 60 70

while(<STDIN>)
{
	push(@matrix, [ split]);
}
#
#	print it one way
#
foreach $row (@matrix)
{
	print @$row, "\n";
}
#
#	print it another way
#
for ($i = 0; $i <  @matrix ; $i++)
{
	for ( $j = 0; $j < @{$matrix[$i]}; $j++)
	{
		print "$matrix[$i][$j] ";
	}
	print "\n";
}	
