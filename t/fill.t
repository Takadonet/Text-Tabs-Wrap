#!/usr/bin/env perl6
use v6;
use TestFiles;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

TestFiles::run(sub ($in, $out, $filename) {
    is fill(' ' x 4, ' ', $in.slurp), $out.slurp, $filename;
});
