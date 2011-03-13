#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib t_lib>) }
use Test;
use TestFiles;
use Text::Tabs;

TestFiles::run(sub ($in, $out, $filename) {
    is unexpand($in.slurp), $out.slurp, $filename;
});
