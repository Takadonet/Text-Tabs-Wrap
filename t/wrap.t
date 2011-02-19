#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

my @tests = dir("$*PROGRAM_NAME.output");

plan 3 + @tests;

is  +dir("$*PROGRAM_NAME.input"),
    +@tests,
    'Sanity check: number of input files = output files';

for @tests -> $filename {
    my @in = open("$*PROGRAM_NAME.input/$filename").lines;
    my @out = open("$*PROGRAM_NAME.output/$filename").lines;

    # Scan output file for formatting instructions -
    # the only one currently used is a "### break=<$regex>" line
    if @out[0] ~~ / ^'###' / {
        for @out.shift.words {
            when /'break=' (\N+)/ {
                my $regex = $0;
                $Text::Wrap::break = rx/<$regex>/;
            }
        }
    }
    else {
        $Text::Wrap::break = rx{\s};
    }

    is  wrap('   ', ' ', @in.join("\n")),
        @out.join("\n");
}

# Overflow test
$Text::Wrap::huge = 'overflow';
my $tw = <
    This is a word that is too long to wrap to make sure that the program does not crash and burn
>.join('_');

is  wrap('zzz', 'yyy', $tw),
    "zzz$tw";

# Word-wrap test
$Text::Wrap::columns = 10;
$Text::Wrap::huge = "wrap";

is  wrap("verylongindent", "", "foo"),
    "verylongindent\nfoo";
