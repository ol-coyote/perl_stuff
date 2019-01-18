#!/usr/bin/perl
#
#  Exercise 2-8
#


print "Enter beginning line number: ";
$begin = <STDIN>;
chop $begin;

print "Enter ending line number: ";
$end = <STDIN>;
chop $end;

if ($begin > $end) {
	print "Error: beginning line no. must be <= ending line no.\n";
	exit;
}

print "Enter file name: ";
$filename = <STDIN>;
chop $filename;

open (INPUT, "$filename");

while (<INPUT>) {
	if ($begin == $. .. $end == $.) {
		print;
	}
}

close INPUT;
