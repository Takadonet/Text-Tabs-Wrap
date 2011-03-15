#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib>) }
use Test;
use Text::Wrap;

# Test that $separator2 breaks existing lines without removing any existing chars

my @tests = (
    {
        in  => 'some long text here that should be wrapped on at least three lines',
        out => 'some long text[N]here that[N]should be[N]wrapped on at[N]least three[N]lines',
        why => 'Test that separator2 works',
    },
    {
        in  => "some other text here that should\nbe wrapped slightly different",
        out => "some other[N]text here that[N]should\nbe wrapped[N]slightly[N]different",
        why => '$separator2 should only add to the original text, not replace existing delimiters'
    }
);

plan 2 * @tests;

# with parameters
for @tests {
    is  wrap('', '', :columns(15), :separator2<[N]>, $_<in>),
        $_<out>,
        $_<why>;
}

# with globals
$Text::Wrap::columns = 15;
$Text::Wrap::separator2 = '[N]';
for @tests {
    is  wrap('', '', $_<in>),
        $_<out>,
        $_<why>;
}
