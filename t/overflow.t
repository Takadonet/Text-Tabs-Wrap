#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib>) }
use Test;
use Text::Wrap;

plan 3;

$Text::Wrap::huge = 'overflow';
my %default = (
    separator   => $Text::Wrap::separator,
    separator2  => $Text::Wrap::separator2,
);

my $input = <
    This is a word that is too long to wrap to make sure that the program does not crash and burn
>.join('_');
my $output = "zzz$input";

is  wrap('zzz', 'yyy', $input),
    $output,
    'Overflow handling';

$Text::Wrap::separator = '=';
is  wrap('zzz', 'yyy', $input),
    $output,
    'Overflow handling with $separator';
$Text::Wrap::separator = %default<separator>;

$Text::Wrap::separator2 = '=';
is  wrap('zzz', 'yyy', $input),
    $output,
    'Overflow handling with $separator2';
$Text::Wrap::separator2 = %default<separator2>;
