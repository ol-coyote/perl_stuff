#!/usr/bin/perl
#
#  Exercise 8-7
#


opendir(DIRECTORY, ".") || die "Can't open current directory for reading\n";
@files = readdir(DIRECTORY);
closedir(DIRECTORY);

print "Ordinary files in the current directory are:\n";
$ctr = 0;

foreach $file (sort @files) {
    if (-f $file) {				# Ordinary files
        print "$file\n"; 
        $ctr++;
    }
}
print "\nThere are $ctr files.\n";

