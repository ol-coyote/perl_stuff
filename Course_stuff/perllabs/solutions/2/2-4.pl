#!/usr/bin/perl
#
#       Exercise 2-4
#       Ask for a number and print it in binary
#

print "Enter a number: ";
chop($number = <STDIN>);

$save = $number;

while($number > 0)
{
        $str = 0;
        if ($number % 2 != 0)       # or could also be written:  if ($number & 1)
        {
                $str = 1;
        }
        $output = $output . $str;
        $number = int($number / 2);     # or:  $number >>= 1
}

$output = reverse($output);

print "$output\n";
