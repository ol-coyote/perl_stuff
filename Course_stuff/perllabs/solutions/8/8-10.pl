#!/usr/bin/perl
#
#  Exercise 8-10
#


sub getUserName {
	$retValue = "unknown";
	
	open(INFILE, "/etc/passwd") || die "Can't open /etc/passwd file\n";
	while (<INFILE>) {
		($userName, $secondField, $userId) = split(":");
		if ($userId eq $_[0]) {
			$retValue = $userName;
			last;
		}
	}

	close INFILE;
	return $retValue;
}

print "Enter user id number: ";
$userNum = <STDIN>;
chop $userNum;
print getUserName($userNum), "\n";
