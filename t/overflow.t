#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

plan 3;

my $input = <
    This is a word that is too long to wrap to make sure that the program does not crash and burn
>.join('_');
my $output = "zzz$input";
my &wrapper = &wrap.assuming('zzz', 'yyy', $input, :huge<overflow>);

is  &wrapper(),
    $output,
    'Overflow handling';

is  &wrapper(:separator('=')),
    $output,
    'Overflow handling with $separator';

is  &wrapper(:separator2('=')),
    $output,
    'Overflow handling with $separator2';
