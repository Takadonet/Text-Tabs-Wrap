#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

# Test that wrap() behaves sanely when the indent leaves space for only one character per line

plan 2;

lives_ok {
    is  wrap('', '123', 'some text', :columns(4)),
        "some\n123t\n123e\n123x\n123t",
        'Correct output';
} or flunk('First test died');
