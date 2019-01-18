#!/usr/bin/perl

@n = (me, you, him, her, it);
print "@n\n";
$rn = [reverse(@n)];
print "$$rn[0] $rn->[1]\n";
print "#" x 20, "\n";
for ($j = 0; $j < scalar(@n); $j++) {
    print "$rn->[$j]\n";
}
