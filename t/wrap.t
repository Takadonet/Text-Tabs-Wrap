#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib t_lib>) }
use Test;
use TestFiles;
use Text::Wrap;

TestFiles::run(
    tests-per-block => 2,
    test-block => sub ($in, $out, $filename) {
        my @in = $in.lines;
        my @out = $out.lines;

        my Regex $break;

        # Scan output file for formatting instructions -
        # the only one currently used is a "### break=<$regex>" line
        if @out[0] ~~ / ^'###' / {
            for @out.shift.words {
                when /'break=' (\N+)/ {
                    my $regex = $0;
                    $break = rx/<$regex>/;
                }
            }
        }
        else {
            $break = rx{\s};
        }

        my &wrapper = &wrap.assuming('   ', ' ', @in.join("\n"));

        # Test with parameterised break
        is  &wrapper(:$break),
            @out.join("\n"),
            "$filename - wrap.t";

        # And with global var
        $Text::Wrap::break = $break;
        is  &wrapper(),
            @out.join("\n"),
            "$filename - old API - wrap.t";
    }
);
