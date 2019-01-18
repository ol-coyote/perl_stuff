#!/usr/bin/perl
#
#  Exercise 5-8
#

open(INFILE, "5-4.data") || die "Can't read 5-4.data\n";

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

while(1) {
	print "\nEnter a name to change phone extension (or 'quit'): ";
	$name = <STDIN>;
	chop $name;
	last if $name eq "quit";
	
	if (exists($directory{$name})) {
		print "Enter new extension: ";
		$extension = <STDIN>;
		$directory{$name} = $extension;
		print "$name changed to extension $directory{$name}\n";
	} else {
		print "Sorry, $name is not in the directory\n";
	}
}

while(1) {
	print "\nEnter a name to remove (or 'quit'): ";
	$name = <STDIN>;
	chop $name;
	last if $name eq "quit";
	
	if (exists($directory{$name})) {
		delete $directory{$name};
		print "$name removed from directory\n";
	} else {
		print "Sorry, $name is not in the directory\n";
	}
}

while(1) {
	print "\nEnter a name to add (or 'quit'): ";
	$name = <STDIN>;
	chop $name;
	last if $name eq "quit";
	
	if (exists($directory{$name})) {
		print "Sorry, $name is already in the directory\n";
	} else {
		print "Enter phone extension: ";
		$extension = <STDIN>;
		$directory{$name} = $extension;
		print "$name added to directory with phone extension $extension\n";		
	}
}

while(1) {
	print "\nEnter two names to swap extensions (or 'quit'): ";
	$line = <STDIN>;
	chop $line;
	last if $line eq "quit";
	
	($first, $second) = split(' ', $line);
	
	if (! exists($directory{$first})) {
		print "Sorry, $first is not in the directory\n";
	} elsif (! exists($directory{$second})){
		print "Sorry, $second is not in the directory\n";
	} else {
		$temp = $directory{$first};		
		$directory{$first} = $directory{$second};
		$directory{$second} = $temp;
		print "Phone extensions for $first and $second have been swapped\n";		
	}
}

open(OUTFILE, "> 5-4.data") || die "Can't write 5-4.data\n";

print "PHONE DIRECTORY\n";
foreach $name (sort keys(%directory)) {
	printf("%-15s%4d\n", $name, $directory{$name});
	print OUTFILE "$name,$directory{$name}\n";
}

close OUTFILE;
print "\nPhone directory saved to 5-4.data\n";
