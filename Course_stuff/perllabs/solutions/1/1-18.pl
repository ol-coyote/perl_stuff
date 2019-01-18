#!/usr/bin/perl
#
#  Exercise 1-18
#

print "WHILE LOOP:\n";
$i = 1;
while ($i <= 20) {
	print "$i  ";
	$i++;	
}
print "\n\n";

print "UNTIL LOOP:\n";
$j = 1;
do {
	print "$j  ";
	$j++;	
} until ($j > 20);
print "\n\n";

print "FOR LOOP:\n";
for ($k = 1; $k <= 20; $k++) {
	print "$k  ";
}
print "\n\n";
