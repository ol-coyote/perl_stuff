#!/usr/bin/perl
#
# Exercise 3-10
#


while(1) {

    print "\nEnter a file name (or 'quit'): ";
    $filename = <STDIN>;
    chop($filename);

    if ($filename eq 'quit') {
        last;
    }

    print "$filename ";

    if (! -e $filename) {
        print "does not exist\n";
        next;
    }
     
    if (-d $filename) {
        print "is a directory ";
    } elsif (-T $filename) {
        print "is a text file ";
    } elsif (-B $filename) {
        print "is a binary file ";
    }
    
    if (-r $filename) {
        print "(readable) ";
    } 
    if (-w $filename) {
        print "(writeable) ";
    }
    if (-r $filename) {
        print "(executable) ";
    } 
    print "\n";
}
