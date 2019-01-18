#!/usr/bin/perl
#
#  Exercise 5-6
#

open(INFILE, "5-2.data") || die "Can't open 5-2.data\n";

%directory = ();
while ($line = <INFILE>) {
	chop $line;
	($name, $number) = split(',', $line);
	$directory{$name} = $number;
}

close INFILE;

print "PHONE DIRECTORY\n";
foreach $name (sort keys(%directory)) {
	printf("%-15s%4d\n", $name, $directory{$name});
}

while(1) {
	print "\nEnter a name to look up (or 'quit'): ";
	$name = <STDIN>;
	chop $name;
	last if $name eq "quit";
	
	if (exists($directory{$name})) {
		print "$name is at extension $directory{$name}\n";
	} else {
		print "Sorry, $name is not in the directory\n";
	}
}
