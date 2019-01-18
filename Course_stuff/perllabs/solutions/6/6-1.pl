#!/usr/bin/perl
#
#	Exercise 6-1
#
#	Write subroutines which return
#	largest
#	smallest
#	(largest, smallest)
#	(largest, index_of_largest)
#
sub largest {
	#  assume biggest is in position 0
	my($biggest) = shift(@_);	
	foreach $i (@_) {
		$biggest = $i if ($i > $biggest);
	}
	$biggest;
}

sub smallest {
	my($litle) = shift(@_);
	foreach $i (@_) {
		$litle = $i if ($i < $litle);
	}
	$litle;
}

sub las {
	return (&largest(@_), &smallest(@_));
}

sub largeind {
	my($biggest) = shift(@_);	
	my $count = 0;
	foreach $i (@_) {
		if ($i > $biggest) {
			$biggest = $i;
			$index = $count;
		}
		$count++;
	}
	($biggest, $index + 1);
}

@items = (20 ,35 ,54, 15, 283, 75, 750, -45, 3400);

$large = &largest(@items);
print "biggest number among @items is $large\n";

$small = &smallest(@items);
print "smallest number among @items is $small\n";

@range = &las(@items);
print "(smallest largest) among @items is (@range)\n";

@indx = &largeind(@items);
print "largest is $indx[0] at position $indx[1]\n";
