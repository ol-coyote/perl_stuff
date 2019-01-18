#!/usr/bin/perl
#
#  Exercise 6-12
#
#
sub getCommonCharacters {
	my ($str1, $str2) = @_;
	my $retVal = "";
	
	$len1 = length($str1);
	
	for ($i = 0; $i < $len1; $i++) {
		$charToFind = substr($str1, $i, 1);
		if ($charToFind eq " ") {
			next;							# ignore spaces
		}
		
		$pos = index($str2, $charToFind);
		if ($pos >= 0) {
			if (index($retVal, $charToFind) == -1) {	# eliminate duplicates
				$retVal .= $charToFind;
			}
		}
	}	

	return $retVal;	
}

$x = "now is the time";
$y = "better late than never";
$result = getCommonCharacters($x, $y);

print "The two strings are:\n   $x\n   $y\n\n";
print "The common characters are: $result\n"
