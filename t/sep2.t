#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib t_lib>) }
use Test;
use TestFiles;
use Text::Wrap;

$Text::Wrap::separator2 = '=';

TestFiles::run(
    tests-per-block => 2,
    test-block => sub ($in, $out, $filename) {
        my $in-str = $in.slurp;
        my $out-str = $out.slurp;

        is  wrap('   ', ' ', $in-str),
            $out-str,
            "$filename - sep.t (as one string)";

        # append "\n" to all lines but the last
        my @in = $in-str.split(/\n/);
        @in[0 ..^ @in-1] >>~=>> "\n";

        is  wrap('   ', ' ', @in),
            $out-str,
            "$filename - sep.t (array of lines)";
    }
);
