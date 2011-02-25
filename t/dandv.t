#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

# Test that $columns set too short is expanded automatically and emits a warning

plan 2;
todo 1 => 'lives_ok declares a warn() as test failure, we only want to know about fatal errors';

$Text::Wrap::columns = 4;

my $x;
lives_ok {
    $x = wrap('', '123', 'some text');
}

# Set it anyway because of the above TODO
$x = wrap('', '123', 'some text');

is  $x,
    "some\n123t\n123e\n123x\n123t",
    'Correct output';
