#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib>) }
use Test;
use Text::Wrap;

plan 1;

is  wrap('verylongindent', '', :columns(10), :huge<wrap>, 'foo'),
    "verylongindent\nfoo",
    'Words wrap to next line correctly when the first-line indent is bigger than $columns';
