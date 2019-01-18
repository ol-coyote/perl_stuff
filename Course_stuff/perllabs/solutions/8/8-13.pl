#!/usr/bin/perl
#
#  Exercise 8-13
#


system("cal > cal.out") && die "Couldn't execute system function\n";

open(CMDOUTPUT, "cal.out") || die "Could not open cal.out\n";
@lines = <CMDOUTPUT>;
close CMDOUTPUT;

print @lines;
