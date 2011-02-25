#!/usr/bin/env perl6
use v6;
use Test;
use Text::Tabs;

BEGIN {
    @*INC.push('lib');
}

my @tests = dir("$*PROGRAM_NAME.output");

plan 1 + @tests;

is  +dir("$*PROGRAM_NAME.input"),
    +@tests,
    'Sanity check: number of input files = output files';

for @tests -> $filename {
    my $in = open("$*PROGRAM_NAME.input/$filename").slurp;
    my $out = open("$*PROGRAM_NAME.output/$filename").slurp;

    is  unexpand($in),
        $out;
}
