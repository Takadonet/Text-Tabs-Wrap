#!/usr/bin/env perl6
use v6;
use Test;
use TestFiles;
use Text::Tabs;

TestFiles::run(sub ($in, $out, $filename) {
    is expand($in.slurp), $out.slurp, $filename;
});
