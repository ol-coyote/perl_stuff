#	Subroutines for Exercise 6-2
#
#
sub largest 
{
	#  assume biggest is in position 0
	my($biggest) = shift(@_);	
	foreach $i (@_) {
		$biggest = $i if ($i > $biggest);
	}
	$biggest;
}

sub smallest 
{
	my($litle) = shift(@_);
	foreach $i (@_) {
		$litle = $i if ($i < $litle);
	}
	$litle;
}

sub las 
{
	return (&largest(@_), &smallest(@_));
}

sub largeind 
{
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
#
#	Can't forget the last line here
#
1;
