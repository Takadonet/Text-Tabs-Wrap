#!/usr/bin/env perl6
use v6;
use TestFiles;
use Test;
use Text::Tabs;

BEGIN {
    @*INC.push('lib');
}

TestFiles::run(sub ($in, $out, $filename) {
    is unexpand($in.slurp), $out.slurp, $filename;
});
