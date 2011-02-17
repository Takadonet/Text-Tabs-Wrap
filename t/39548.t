#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

plan 2;

# original bug: https://rt.perl.org/rt3/Ticket/Display.html?id=39548
my $VAR1 = " (Karl-Bonhoeffer-Nervenklinik zwischen Hermann-Piper-Str. und U-Bahnhof) ";
my $VAR2 = " ";
my $VAR3 = "(5079,19635 5124,19634 5228,19320 5246,19244)\n";
my $got;
my $answer = " (Karl-Bonhoeffer-Nervenklinik zwischen Hermann-Piper-Str. und U-Bahnhof) (
 5079,19635 5124,19634 5228,19320 5246,19244)\n";

lives_ok {
    $got = wrap($VAR1, $VAR2, $VAR3);
}

is $got, $answer;
