#!/usr/bin/perl
#
#       Exercise 3-3
#

while(1) {

    print "\nEnter a file name: ";
    $filename = <STDIN>;
    chop($filename);

    if (-e $filename) {
        last;
    }

    print "Sorry, $filename does not exist\n";
}


if (-d $filename) {
    print "$filename is a directory\n";

} elsif (-T $filename) {
    open (FILE, ">> $filename") || die "Error opening $filename\n";
    print FILE "extra line\n"; 
    close FILE;
    print "Extra line appended to $filename\n";

} else {
    $age = -M $filename;
    printf("Last modification of $filename was %.1f days ago\n", $age);
}

