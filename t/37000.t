#!/usr/bin/env perl6
# FIXME: Is this from RT#37000? There's an external link there that seems to be dead, but other than
# that I can't find any mention of this there
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

plan 3;

my $toPrint = "(1) Category\t(2 or greater) New Category\n\n";
my $good =    "(1) Category\t(2 or greater) New Category\n";

$Text::Wrap::break = rx{\s};
$toPrint = wrap('', '', $toPrint);
is $toPrint, $good;

$Text::Wrap::break = rx{\d};
$toPrint = wrap('', '', $toPrint);
is $toPrint, $good;

$Text::Wrap::break = rx{a};
$toPrint = wrap('', '', $toPrint);
is $toPrint, $good;
