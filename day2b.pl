#!/usr/bin/perl

use strict;
use warnings;
use feature qw(:5.30);
use autodie;

open my $fh, '<', 'inputs/2';
my $data;
{
    local $/;
    $data = <$fh>;
}
my @games = split /\n/, $data;

# ar bp cs
my %score = (
    'A X' => 3 + 0,
    'A Y' => 1 + 3,
    'A Z' => 2 + 6,
    'B X' => 1 + 0,
    'B Y' => 2 + 3,
    'B Z' => 3 + 6,
    'C X' => 2 + 0,
    'C Y' => 3 + 3,
    'C Z' => 1 + 6,
);

my $score = 0;
for my $game (@games) {
    $score += $score{$game};
    say "$game = $score{$game}";
}
say "Final score: $score";

