#!/usr/bin/perl
#
#	Exercise 8-5:
#
#	Write a Perl program which takes a directory as a command line argument.
#	For each file in this directory print the name, the size, and the mod date.  
#	Exclude files that begin with a dot or that are directories themselves.
#

require "ctime.pl";

die "$0 directory\n" unless $#ARGV == 0;

$dir = $ARGV[0];

if ( ! -d $dir )
{
	print "$dir is not a directory\n";
	exit 1;
}

opendir(DIR, $dir) || die "Do not have permission to open $dir\n";

@files = readdir(DIR);
closedir(DIR);

chdir($dir);
print "Listing files in $dir:\n";

foreach $file (@files)
{
	next if ( -d $file );
	next if ( $file =~ /^\./ );
	
	@info = stat($file);
	printf "\t%-20s %8d %30s", $file, $info[7], ctime($info[9]);
}
