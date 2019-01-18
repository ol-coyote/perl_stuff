#!/usr/bin/perl
#
#  Exercise 8-8
#


sub getEmptyFileList {
	opendir(DIRECTORY, ".") || die "Can't open current directory for reading\n";
	my @files = readdir(DIRECTORY);
	closedir(DIRECTORY);
	
	my @ordinaryFiles = grep(-f, @files);
	my @emptyFiles = grep(-z, @ordinaryFiles);
	
	return @emptyFiles;
}

print "Files of size zero in current directory:\n";
@files = getEmptyFileList;
print "@files\n";
