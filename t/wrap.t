use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

my $basepath = do {
    my $parts = $*PROGRAM_NAME.split('/');
    $parts.pop;
    $parts.join('/') || '.';
};

my @tests = dir($basepath ~ '/wrap.t.input');

plan 2 +@tests;

for @tests -> $filename {
    my @in = open("$basepath/wrap.t.input/$filename").lines;
    my @out = open("$basepath/wrap.t.output/$filename").lines;

    # Scan output file for formatting instructions
    if @out[0] ~~ / ^'###' / {
        for @out.shift.words {
            when /'break=' (\N+)/ {
                my $regex = $0;
                $Text::Wrap::break = rx/<$regex>/;
            }
        }
    }

    is  wrap('   ', ' ', @in.join("\n")),
        @out.join("\n");

    # Reset this to default if it got changed above
    $Text::Wrap::break = rx{\s};
}

# Overflow test
$Text::Wrap::huge = 'overflow';
my $tw = <
    This is a word that is too long to wrap to make sure that the program does not crash and burn
>.join('_');

is  wrap('zzz', 'yyy', $tw),
    "zzz$tw";

# Word-wrap test
$Text::Wrap::columns = 10;
$Text::Wrap::huge = "wrap";

is  wrap("verylongindent", "", "foo"),
    "verylongindent\nfoo";
