#!/usr/bin/perl
#
#  Exercise 2-13
#


print "BITWISE AND:\n";
for ($a = 0; $a < 2; $a++) {
	for ($b = 0; $b < 2; $b++) {
		print "\$a = $a ";
		print "  \$b = $b ";
		$result = $a & $b;
		print "   \$a & \$b = $result\n";
			
	}
}

print "\nBITWISE OR:\n";
for ($a = 0; $a < 2; $a++) {
	for ($b = 0; $b < 2; $b++) {
		print "\$a = $a ";
		print "  \$b = $b ";
		$result = $a | $b;
		print "   \$a | \$b = $result\n";
	}
}

print "\nBITWISE EXCLUSIVE OR:\n";
for ($a = 0; $a < 2; $a++) {
	for ($b = 0; $b < 2; $b++) {
		print "\$a = $a ";
		print "  \$b = $b ";
		$result = $a ^ $b;
		print "   \$a ^ \$b = $result\n";
	}
}
