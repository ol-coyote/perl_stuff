#
#	Exercise 6-5

package Banking;

my %accounts;

sub deposit
{
	my($name, $amt) = @_;
	$accounts{$name} += $amt;
}

sub withdraw
{
	my($name, $amt) = @_;
	$accounts{$name} -= $amt;
	return $amt;
}

sub display
{
	my($name) = @_;
	return $accounts{$name};
}

sub displayall
{
        my $x, $y;
	print "\n\nLISTING ALL ACCOUNTS\n";
	while(($x, $y) = each(%accounts))
	{
		print "$x has balance $y\n";
	}
}

sub cash
{
	foreach $key (%accounts)
	{
		$sum += $accounts{$key};
	}
	return $sum;
}
1;
