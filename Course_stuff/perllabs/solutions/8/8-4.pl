#!/usr/bin/perl
#
#	Exercise 8-4:
#
#	Write a Perl program that every two seconds generates a 
#	random number between 0 and 10 and stores it in an array.
#	Each time the user enters the ctrl-c sequence, the program
#	computes and displays the average of the numbers in the 
#	array.   You can end the program with ctrl-\.
#
#	A random number between 0 and 11 can be generated with
#	rand(11).  You can truncate this to an int with 
#	int(rand(11)).
#

sub summary
{
	my $avg;
	my $sum = 0;
	my $number = @randoms;
	
	for $val (@randoms)
	{
		$sum += $val
	}
	$avg = $sum / @randoms;
	
	print "avg of $number elements is $avg\n"
}

$SIG{INT} = 'summary';

while(1)
{
	push(@randoms, int(rand(11)));
	sleep(2);
}
