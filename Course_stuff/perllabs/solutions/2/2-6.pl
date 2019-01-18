#!/usr/bin/perl
#
#	Exercise 2-6
#


$amount = 200000.0;
$rate = 7.5;
$years = 30;

$j = $rate / (12 * 100);
$n = $years * 12;
    
$monthlyPayment = $amount * ( $j / (1 - ( (1 + $j) ** -$n) ) );
    
print "Monthly payment = $monthlyPayment\n";


