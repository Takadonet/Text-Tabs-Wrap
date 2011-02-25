#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

# original bug: https://rt.perl.org/rt3/Ticket/Display.html?id=39548

plan 2;

my $leading-indent = " (Karl-Bonhoeffer-Nervenklinik zwischen Hermann-Piper-Str. und U-Bahnhof) ";
my $paragraph-indent = " ";
my $main-text = "(5079,19635 5124,19634 5228,19320 5246,19244)\n";

my $got;
lives_ok {
    $got = wrap($leading-indent, $paragraph-indent, $main-text);
}

is  $got,
    " (Karl-Bonhoeffer-Nervenklinik zwischen Hermann-Piper-Str. und U-Bahnhof) (\n"
  ~ " 5079,19635 5124,19634 5228,19320 5246,19244)\n";
