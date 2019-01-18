#!/usr/bin/perl
#
#  Exercise 8-11
#


if ($#ARGV < 1) {		# must have at least two arg's
	print STDERR "Must give at least two file names on the cmd line\n";
	exit 1;	
}

if (! -e $ARGV[0]) {
	print STDERR "ERROR: $ARGV[0] does not exist\n";
	exit 1;		
}

@statInfo = stat($ARGV[0]);
$modTime = $statInfo[9];

shift;

utime($modTime, $modTime, @ARGV);

print "Changed times on: @ARGV\n";
