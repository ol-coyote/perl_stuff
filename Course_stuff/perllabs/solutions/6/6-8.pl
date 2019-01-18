#!/usr/bin/perl
#
#  Exercise 6-8
#

sub printTrueFalse {
	print $_[0] ? "(T)" : "(F)";	
}

print "LOGICAL AND:\n";
for ($a = 0; $a < 2; $a++) {
	for ($b = 0; $b < 2; $b++) {
		print "\$a = $a ";
		printTrueFalse($a);
		print "  \$b = $b ";
		printTrueFalse($b);
		$result = $a && $b;
		print "   \$a && \$b = $result ";
		printTrueFalse($result);
		print "\n";				
	}
}

print "\nLOGICAL OR:\n";
for ($a = 0; $a < 2; $a++) {
	for ($b = 0; $b < 2; $b++) {
		print "\$a = $a ";
		printTrueFalse($a);
		print "  \$b = $b ";
		printTrueFalse($b);
		$result = $a || $b;
		print "   \$a || \$b = $result ";
		printTrueFalse($result);
		print "\n";				
	}
}
