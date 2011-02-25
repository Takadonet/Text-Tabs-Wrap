#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

my @tests = dir("$*PROGRAM_NAME.output");

plan 2 + @tests * 2;

is  +dir("$*PROGRAM_NAME.input"),
    +@tests,
    'Sanity check: number of input files = output files';

$Text::Wrap::separator = '=';

for @tests -> $filename {
    my $in = open("$*PROGRAM_NAME.input/$filename").slurp;
    my $out = open("$*PROGRAM_NAME.output/$filename").slurp;

    is  wrap('   ', ' ', $in),
        $out,
        "$filename (as one string)";

    my @in = $in.split(/\n/);

    # append "\n" to all entries but the last
    @in[0 ..^ @in-1] >>~=>> "\n";

    is  wrap('   ', ' ', @in),
        $out,
        "$filename (array of lines)";
}

$Text::Wrap::huge = 'overflow';
my $tw = <
    This is a word that is too long to wrap to make sure that the program does not crash and burn
>.join('_');

is  wrap('zzz', 'yyy', $tw),
    "zzz$tw";
