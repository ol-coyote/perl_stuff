#!/usr/bin/perl
#
#	Exercise 6-4
#
# See Banking.pm in this directory
#

use Banking;

package Banking;

&deposit("Jane",50);
&deposit("Mike",150);
&deposit("Mike",850);
&deposit("Jane",150);

print &display("Mike"), "\n";
print &display("Jane"), "\n";
print &display("Mike"), "\n";

&withdraw("Mike",50);
&withdraw("Jane",50);

print &display("Mike"), "\n";
print &display("Jane"), "\n";

&displayall,"\n";
print "Total Cash in Bank: ", &cash, "\n";
