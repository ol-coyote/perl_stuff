#!/usr/bin/perl
#
#       Exercise 9-2
#
#       Create a hash where each State has a list of cities
#       associated with it.
#
#
#       Write a subroutine which is fed the hash and returns a
#       list of all the cities
#
sub getCities
{
	my($hash) = @_;
	my (@result);
	while(($state, $cities) = each(%$hash))
	{
		push(@result, @$cities);
	}
	return @result;
}
%cities = ( MD => [ Annapolis, Baltimore, Bethesda ],
	   VA => [ Richmond, Alexandria, Roanoke ],
	   MA => [ Boston, Pittsfield, Plymouth ],
	   NY => [ Albany, NY, Scarsdale]
	);
@cities = getCities(\%cities);
print join("\n",@cities), "\n";
