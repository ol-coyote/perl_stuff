#!/usr/bin/perl

#@a = (1, 2, 3, 4);
#@b = (9, 8, 7);
#@c = (11, 12, 13, 14, 15);
#@m = (\@a, \@b, \@c);
@m = [[1, 2, 3, 4], [9, 8, 7],
      [11, 12, 13, 14, 15]];

print "$m[2]->[-1]\n";

foreach $arr (@m) {
    print "@$arr\n";
    foreach $item (@$arr) {
        print "\t@$item\n";
    }
}





