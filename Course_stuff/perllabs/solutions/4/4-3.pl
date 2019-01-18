#!/usr/bin/perl
#
#       Exercise 4-3
#
#	Write a script that counts the total number of lines
#	on all text files on the command line
#
$count = 0;
foreach $file (@ARGV)
{
	next if ! -T $file;
	open(INPUT, $file) || die "can't open $file\n";
	@x = <INPUT>;
	$count += @x;
}
print "$count\n";
