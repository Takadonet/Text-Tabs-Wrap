#!/usr/bin/env perl6
use v6;
use Test;
use TestFiles;
use Text::Wrap;

TestFiles::run(
    tests-per-block => 2,
    test-block => sub ($in, $out, $filename) {
        my $in-str = $in.slurp;
        my $out-str = $out.slurp;
        my &wrapper = &wrap.assuming('   ', ' ', :separator2('='));

        is  &wrapper($in-str),
            $out-str,
            "$filename - sep.t (as one string)";

        # append "\n" to all lines but the last
        my @in = $in-str.split(/\n/);
        @in[0 ..^ @in-1] >>~=>> "\n";

        is  &wrapper(@in),
            $out-str,
            "$filename - sep.t (array of lines)";
    }
);
