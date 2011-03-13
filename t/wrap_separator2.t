#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib>) }
use Test;
use Text::Wrap;

# Test that $separator2 breaks existing lines without removing any existing chars

plan 2;

$Text::Wrap::columns = 15;
$Text::Wrap::separator2 = '[N]';

is  wrap('', '', 'some long text here that should be wrapped on at least three lines'),
    "some long text[N]here that[N]should be[N]wrapped on at[N]least three[N]lines";

is  wrap('', '', "some other text here that should\nbe wrapped slightly different"),
    "some other[N]text here that[N]should\nbe wrapped[N]slightly[N]different",
    '$separator2 should only add to the original text, not replace existing delimiters';
