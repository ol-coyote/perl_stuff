#!/usr/bin/perl
#
#       Exercise 9-5
#
#       
#       
#
sub intersect {
	my $first = shift;
	my $second = shift;

	my @return;

	foreach my $word (@$first) {
		push @return, grep { $_ eq $word } @$second;
	}

	@return;
}

@array1 = ('dog', 'cat', 'rabbit', 'wolf');
@array2 = ('bird', 'DOG', 'cat', 'wolf', "zebra");
@result = intersect(\@array1, \@array2);
print "@result\n";
