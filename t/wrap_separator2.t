#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

plan 1;

$Text::Wrap::columns = 15;
$Text::Wrap::separator2 = '[N]';

is  wrap('', '', 'some long text here that should be wrapped on at least three lines'),
    "some long text[N]here that[N]should be[N]wrapped on at[N]least three[N]lines",
    'If you just want to preserve existing newlines but add new breaks with something else, set $Text::Wrap::separator2 instead.';
