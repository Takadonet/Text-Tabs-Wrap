use v6;
BEGIN {
        @*INC.push('lib');
}
#original bug: https://rt.perl.org/rt3/Ticket/Display.html?id=39548

say "1..1";
#todo should test to see if we can use perl6 'require'
# require Text::Wrap;
use Text::Wrap;
my $VAR1 = " (Karl-Bonhoeffer-Nervenklinik zwischen Hermann-Piper-Str. und U-Bahnhof) ";
my $VAR2 = " ";
my $VAR3 = "(5079,19635 5124,19634 5228,19320 5246,19244)\n";
my $got;

try {
$got = wrap($VAR1,$VAR2,$VAR3);
}

my $answer = " (Karl-Bonhoeffer-Nervenklinik zwischen Hermann-Piper-Str. und U-Bahnhof) (
 5079,19635 5124,19634 5228,19320 5246,19244)\n";

if $got eq $answer {
        say "ok 1";
}
else {
        say "not ok 1";
}

