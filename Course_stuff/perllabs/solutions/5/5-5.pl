#!/usr/bin/perl
#
#  Exercise 5-5
#

open(INFILE, "5-1.data") || die "Can't open 5-1.data\n";

%directory = ();
while ($line = <INFILE>) {
	chop $line;
	($name, $number) = split(',', $line);
	$directory{$name} = $number;
}

close INFILE;

foreach $name (sort keys(%directory)) {
	printf("%-15s%4d\n", $name, $directory{$name});
}
