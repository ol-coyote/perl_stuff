#
#	Banking.pm
#		
package Banking;

$NAME = "FIRST NATIONAL BANK";

sub deposit 
{
	print "Depositing \$$_[0] into $NAME\n";
}

sub withdraw 
{
	print "Withdrawing \$$_[0] from $NAME\n";
}
1;
