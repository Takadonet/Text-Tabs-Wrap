#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib t_lib>) }
use Test;
use TestFiles;
use Text::Wrap;

TestFiles::run(sub ($in, $out, $filename) {
    is fill(' ' x 4, ' ', $in.slurp), $out.slurp, $filename;
});
