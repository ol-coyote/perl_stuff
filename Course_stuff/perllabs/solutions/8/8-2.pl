#!/usr/bin/perl
#
#	Exercise 8-2:
#
#	Write a Perl program that takes a range of characters on the
#	command line and a directory.  The program should list all those
# 	files in the named directory that begin with any of the characters
#	in the range.
#
#	Example:
#
#	$ prog g-m .
#
#		would list all files that bein with g-m in the current directory
#

die "$0 range_of_chars directory\n" unless $#ARGV == 1;

die "$ARGV[1] is not a directory\n" unless -d $ARGV[1];

opendir(DIR, $ARGV[1]) || die "can't open $ARGV[1]\n";

@files = readdir(DIR);

foreach $file ( @files )
{
	print "$file\n" if $file =~ /^[$ARGV[0]]/;
}

closedir(DIR);
