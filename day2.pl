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

my %score = (
    'A X' => 1 + 3,
    'A Y' => 2 + 6,
    'A Z' => 3 + 0,
    'B X' => 1 + 0,
    'B Y' => 2 + 3,
    'B Z' => 3 + 6,
    'C X' => 1 + 6,
    'C Y' => 2 + 0,
    'C Z' => 3 + 3,
);

my $score = 0;
for my $game (@games) {
    $score += $score{$game};
    say "$game = $score{$game}";
}
say "Final score: $score";

