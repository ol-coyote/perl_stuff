#!/usr/bin/perl
#
#       Exercise 9-3
#
#       Write a function which receives any number of lists
#       and returns a list of the sum of each array.
#
sub sums 
{
	my(@output);
	my(@current);
	my($sum);
	foreach $i (@_)
	{
		$sum = 0;
		@current = @$i;
		foreach $item (@current)
		{
			$sum += $item;
		}

		push(@output,$sum);
	}
	@output;
}
@list1 = (10,20,30);
@list2 = (110,120,130,140);
@list3 = (210,220,230,240,300);
@sums = sums(\@list1, \@list2, \@list3);
print "@list1\n";
print "@list2\n";
print "@list3\n";
print "sums = @sums\n";
