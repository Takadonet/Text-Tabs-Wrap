#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

plan 1;

$Text::Wrap::columns = 10;
$Text::Wrap::huge = "wrap";
is  wrap("verylongindent", "", "foo"),
    "verylongindent\nfoo",
    'Words wrap to next line correctly when the first-line indent is bigger than $columns';
