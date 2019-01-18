#!/usr/bin/perl

#$year = 2000;
#while ($year++ <= 2200)
#for ($year = 2000; $year <= 2200; $year++)
open(LEAPS, "> leap_years.txt") || die "error: $!";
foreach $year (2000 .. 2200)
{
    #print "Enter a year: ";
    #chomp($year = <STDIN>);
    #if (lc($year) eq "quit")
    #{
    #    last;
    #}

    if ($year % 4 == 0) {
        if ($year % 100 == 0) {
            if ($year % 400 == 0) {
                print LEAPS "\n$year is a leap year\n";
            }
            else {
                print "\n$year is NOT a leap year\n";
            }
        }
        else {
            print LEAPS "\n$year is a leap year\n";
        }
    }
    else {
        print "\n$year is NOT a leap year\n";
    }
}
close LEAPS;

