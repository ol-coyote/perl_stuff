#!/usr/bin/perl
#
#  interactive.pl
#
use MyDBUtils;

$dbh = connectToDB;

$sth = $dbh->prepare ("select * from product");
$sth -> execute();
$ref = $sth->{NAME};

print "\nSelect fields from: @$ref\n";
print "Enter ONE field per line\n";
print "Enter quit to end\n\n";

print "Enter field: ";
while($f = <STDIN>)
{
        chop($f);
        last if $f eq 'quit';
		
        $flag = 1;
        foreach $item (@$ref)
        {
            $flag = 0 if ($item eq $f);
        }
        die "Sorry, not a legal field\n" if ($flag);
		
        $fields = $fields . $f . ",";
        print "Enter field: ";
}
chop($fields);

print "\nEnter conditions? ";
chop($cond = <STDIN>);

if ($cond)
{
     $sth = $dbh -> prepare("select $fields from product where $cond");
}
else
{
    $sth = $dbh -> prepare("select $fields from product");
}
$sth -> execute();

print "\n";

while (@data = $sth->fetchrow_array)
{
	print "@data\n";
}

$sth->finish;
$dbh->disconnect;

