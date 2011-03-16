#!/usr/bin/env perl6
use v6;
use Test;
use TestFiles;
use Text::Wrap;

TestFiles::run(sub ($in, $out, $filename) {
    is fill(' ' x 4, ' ', $in.slurp), $out.slurp, $filename;
});
