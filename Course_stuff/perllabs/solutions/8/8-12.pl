#!/usr/bin/perl
#
#  Exercise 8-12
#


sub myHandler1 {
    print "Ignoring the INTERRUPT signal\n";
}

sub myHandler2 {
    print "Ignoring the QUIT signal\n";
}

$SIG{INT}  = 'myHandler1';
$SIG{QUIT} = 'myHandler2';

while(1) {
    sleep 2;
    print `date`;
}
