#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib t_lib>) }
use Test;
use TestFiles;
use Text::Wrap;

TestFiles::run(
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

        is  wrap('   ', ' ', @in.join("\n"), :$break),
            @out.join("\n"),
            "$filename - wrap.t";
    }
);
