#!/usr/bin/perl
#
#	Exercise 8-1: 
#
#	Write a script which compares two directories to see if
#	they contain the same file names
#
	
die "Need 2 directory args\n" if $#ARGV != 1;

die "$ARGV[0] not a directory\n" if  ! -d $ARGV[0];
die "$ARGV[1] not a directory\n" if  ! -d $ARGV[1];

opendir(DIR1, $ARGV[0]) || die "Can't open $ARGV[0]\n";
opendir(DIR2, $ARGV[1]) || die "Can't open $ARGV[1]\n";

@dir1 = readdir(DIR1);
@dir2 = readdir(DIR2);

closedir DIR1;
closedir DIR2;

#
#	Test to see if the two directories contain the same number of files.
#
if ( $#dir1 != $#dir2 )
{
	print "$ARGV[0] and $ARGV[1] do not contain the same number of files\n";
	exit;
}

@d1 = sort(@dir1);
@d2 = sort(@dir2);

#
#	test to see if the names are the same
#
for ($i = 0; $i <= $#d1; $i++)
{
	if ( $d1[$i] ne $d2[$i] )
	{
		print "$ARGV[0] and $ARGV[1] do not contain the same file names\n";
		exit;
	}
}

print "$ARGV[0] and $ARGV[1] DO contain the same file names\n";
