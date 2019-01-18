#!/usr/bin/perl
#
#       Exercise 4-4
#
#       Prompt for the user to enter a series of numbers.
#       Just keep the numbers which form an increasing seqence.
#       Ultimately print these numbers in reverse order.
#

print 'Enter a series of numbers -> ';
$numbers = <STDIN>;
@numbers = split(' ', $numbers);
$output[0] = shift(@numbers);
foreach $item (@numbers)
{
    push(@output, $item) if ($item > $output[-1]);
}
print "Output is -> ", join(" ", reverse(@output)), "\n";

