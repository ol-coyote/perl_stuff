#!/usr/bin/perl
#
#	Exercise 8-3:
#
#	Write a Perl program that takes an initial argument and makes a
#	a directory of that name.  Remaining arguments on the command line
#	should be treated as the names of files that will be created in
#	the newly made directory.  Each new file should have a modification
#	time of 1 day ago.  Each new file should contain the name of the 
#	file.
#

die "$0 needs at least two arguments\n" unless $#ARGV > 0;

mkdir $ARGV[0] || die "Can't create $ARGV[0]\n";

chdir $ARGV[0];

shift @ARGV;
foreach $file (@ARGV)
{
	open(FILE, "> $file");
	print FILE "$file\n";
	close(FILE)
}

utime(time, time - 60 * 60 * 24, @ARGV);
