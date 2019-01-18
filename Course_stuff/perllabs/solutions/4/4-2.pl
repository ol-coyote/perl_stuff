#!/usr/bin/perl
#
#	Exercise 4-2
#
#	Write a program which reads the /etc/passwd file and prints
#	the output as shown in the course notes
#
#	if not on a UNIX machine, first line of code would be:
#	open(PASSWD, "< ../../datafiles/passwd") || die "can't open input file";
#

open(PASSWD, "< /etc/passwd") || open(PASSWD, "< ../../datafiles/passwd") ||
    die "can't open input file";

print "LOGIN NAME\tUSER ID\tSHELL PROGRAM\n";

while($line = <PASSWD>)  {
	chop($line);
	@data = split(':', $line);
	printf "%-15s%5d\t%-10s\n", $data[0], $data[2], $data[6];
}

close PASSWD;
