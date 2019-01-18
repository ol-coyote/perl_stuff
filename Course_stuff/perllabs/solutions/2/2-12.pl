#!/usr/bin/perl
#
#  Exercise 2-12
#


print "LOGICAL AND:\n";
for ($a = 0; $a < 2; $a++) {
	for ($b = 0; $b < 2; $b++) {
		print "\$a = $a ";
		print $a ? "(T)" : "(F)";
		print "  \$b = $b ";
		print $b ? "(T)" : "(F)";
		$result = $a && $b;
		print "   \$a && \$b = $result ";
		print $result ? "(T)\n" : "(F)\n";				
	}
}

print "\nLOGICAL OR:\n";
for ($a = 0; $a < 2; $a++) {
	for ($b = 0; $b < 2; $b++) {
		print "\$a = $a ";
		print $a ? "(T)" : "(F)";
		print "  \$b = $b ";
		print $b ? "(T)" : "(F)";
		$result = $a || $b;
		print "   \$a || \$b = $result ";
		print $result ? "(T)\n" : "(F)\n";				
	}
}
