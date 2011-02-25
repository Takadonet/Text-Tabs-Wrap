#!/usr/bin/env perl6
use v6;
use TestFiles;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

TestFiles::run(
    add-to-plan => 1,
    test-block => sub ($in, $out, $filename) {
        my @in = $in.lines;
        my @out = $out.lines;

        # Scan output file for formatting instructions -
        # the only one currently used is a "### break=<$regex>" line
        if @out[0] ~~ / ^'###' / {
            for @out.shift.words {
                when /'break=' (\N+)/ {
                    my $regex = $0;
                    $Text::Wrap::break = rx/<$regex>/;
                }
            }
        }
        else {
            $Text::Wrap::break = rx{\s};
        }

        is  wrap('   ', ' ', @in.join("\n")),
            @out.join("\n"),
            "$filename - wrap.t";
    }
);

$Text::Wrap::columns = 10;
$Text::Wrap::huge = "wrap";
is  wrap("verylongindent", "", "foo"),
    "verylongindent\nfoo",
    'Words wrap to next line correctly when the first-line indent is bigger than $columns';
