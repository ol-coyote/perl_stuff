#!/usr/bin/perl
#
#       Exercise 1-9
#
#       You walk into a store with $74.87.  You spend all of your
#       money on your three favorite items which cost 4.21, 4.51
#       and 4.63.  You buy 17 items in all.  How many of each item 
#       did you buy.  Answer is below __END__ line
#
#       By the way if you get a second solution, you probably bought
#       none of something, which is unlikely since these are your
#       favorite things!!!
#
#

for ( $i = 1; $i <= 17; $i++) {
	for ($j = 1; $j <= 17; $j++) {
		for ( $k = 1; $k <= 17; $k++) {
			$items = $i + $k + $j;
			$amt = $i * 4.21 + $j * 4.51 + $k * 4.63;
			print "$amt: $items ($i,$j,$k)\n" if $amt == 74.87;
		}
	}
}
__END__
74.87: 17 (8,4,5)
