#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

my $basepath = do given $*PROGRAM_NAME.split('/') { .pop; .join('/') || '.' };
my @tests = dir($basepath ~ '/sep.t.output');

plan 2 + @tests * 2;

is  +dir($basepath ~ '/sep.t.input'),
    +@tests,
    'Sanity check: number of input files = output files';

$Text::Wrap::separator = '=';

for @tests -> $filename {
    my $in = open("$basepath/sep.t.input/$filename").slurp;
    my $out = open("$basepath/sep.t.output/$filename").slurp;

    # Test single string usage
    is  wrap('   ', ' ', $in),
        $out;

    # Test multiple string usage
    my @in = $in.split(/\n/);

    # append "\n" to all entries but the last
    @in[0 ..^ @in-1] >>~=>> "\n";

    is  wrap('   ', ' ', @in),
        $out;
}

# XXX This one seems to be identical across several files, do we really need it in them all?
$Text::Wrap::huge = 'overflow';
my $tw = <
    This is a word that is too long to wrap to make sure that the program does not crash and burn
>.join('_');

is  wrap('zzz', 'yyy', $tw),
    "zzz$tw";
