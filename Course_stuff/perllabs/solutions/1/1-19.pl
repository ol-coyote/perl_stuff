#!/usr/bin/perl
#
#  Exercise 1-19
#

print "WHILE LOOP:\n";
$i = 2;
while ($i <= 20) {
	print "$i  ";
	$i += 2;	
}
print "\n\n";

print "UNTIL LOOP:\n";
$j = 2;
do {
	print "$j  ";
	$j += 2;	
} until ($j > 20);
print "\n\n";

print "FOR LOOP:\n";
for ($k = 2; $k <= 20; $k += 2) {
	print "$k  ";
}
print "\n\n";
