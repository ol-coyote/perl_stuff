#!/usr/bin/perl
#
#       Exercise 9-4
#
#       
#
sub getAvgGrade {
    my $roster = shift;
    my $student = shift;
    my $grades = $$roster{$student};
    my $sum = 0;
    $sum += $_ foreach(@$grades);

    my $size = @$grades;
    $size == 0 ? 0 : $sum / $size;
}

@a = (78, 82, 83, 65);
@b = (93, 89, 92, 94);
@c = (65, 72, 81, 78);
@d = ();

%gradeBook = (
    "Student A" => \@a,
    "Student B" => \@b,
    "Student C" => \@c,
    "Student D" => \@d
);

print "Avg Grade for Student B = ", getAvgGrade(\%gradeBook, "Student B"), "\n";
print "Avg Grade for Student D = ", getAvgGrade(\%gradeBook, "Student D"), "\n";

