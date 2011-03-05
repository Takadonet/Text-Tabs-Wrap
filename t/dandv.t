#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

# Test that wrap() behaves sanely when the indent leaves space for only one character per line

plan 2;

$Text::Wrap::columns = 4;

lives_ok {
    is  wrap('', '123', 'some text'),
        "some\n123t\n123e\n123x\n123t",
        'Correct output';
} or flunk('First test died');
