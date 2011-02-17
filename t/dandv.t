#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

plan 2;

$Text::Wrap::columns = 4;

my $x;

todo 1 => 'lives_ok declares a warn() as test failure, we only want to know about fatal errors';
lives_ok {
    $x = wrap('', '123', 'some text');
}

# Set it anyway
$x = wrap('', '123', 'some text');

is  $x,
    "some\n123t\n123e\n123x\n123t",
    'Correct output';
