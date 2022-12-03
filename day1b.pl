#!/usr/bin/perl

use strict;
use warnings;
use feature qw(:5.30);
use autodie;

use List::Util qw(max);

open my $fh, '<', 'inputs/1';
my $data;
{
    local $/;
    $data = <$fh>;
}
close $fh;

my @data = split /\n\n/, $data;
my @calories = ();

foreach my $i (@data) {
    my @elf = split /\n/, $i;
    my $cals = 0;

    foreach my $food (@elf) {
        $cals += $food;
    }
    push @calories, $cals;
}

@calories = sort { $a <=> $b } @calories;

say "Most has $calories[-1], $calories[-2], and $calories[-3], or " . (
    $calories[-1] + $calories[-2] + $calories[-3]) . " calories in total.";

