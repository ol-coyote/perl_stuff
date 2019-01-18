#!/usr/bin/perl
#
#       Exercise 5-1
#
#       Read a file of number name pairs such as
#       1 mike
#       2 dave
#       3 john
#
#       and then read a file of data such as:
#
#
#       4  6000 234567891 Austin TX
#       1 50000 246813579 Providence RI
#       2 20000 135790124 Greenville SC
#       3  4000 912345678 Trenton NJ
#       5 20500 636363635 Taos NM
# 
#       and print the name and info for each record whose balance
#       is greater than a number specified on the command line
#

die "Need an argument (like 10000)" unless $#ARGV == 0;

open(PAIRFILE,"< ../../datafiles/pairs") || die;

while(<PAIRFILE>)
{
    ($num, $name) = split;
    $employees{$num} = $name;
}

close PAIRFILE;

open(DATA, "< ../../datafiles/payroll") || die;

while(<DATA>)
{    
    ($num, $salary, $ssn, $city, $state) = split;

    if ( $salary > $ARGV[0] ) {

        $formatted_ssn = substr($ssn, 0, 3) . "-" . 
            substr($ssn, 3, 2) . "-" . substr ($ssn, -4);

        print "$employees{$num} $salary $formatted_ssn $city\n";
    }       
}

close DATA;
