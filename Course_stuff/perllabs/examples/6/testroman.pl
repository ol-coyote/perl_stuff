#!/usr/bin/perl
#
#   testroman.pl
#

use Roman;

$arabic = arabic("IV");
print "IV = $arabic\n";

$roman = roman(2016);
$roman_uc = Roman(2016);
print "2016 = $roman or $roman_uc\n\n";

foreach (1..10)
{
	print "$_\t", roman($_), "\n";
}