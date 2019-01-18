#!/usr/bin/perl
#
#  Exercise 8-6
#


opendir(DIRECTORY, ".") || die "Can't open current directory for reading\n";
@files = readdir(DIRECTORY);
closedir(DIRECTORY);

print "Files in the current directory are:\n";
print join ("\n", @files);
print "\n\nThere are ", scalar(@files), " files.\n";

