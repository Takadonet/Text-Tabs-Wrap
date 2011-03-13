#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib>) }
use Test;
use Text::Wrap;

# Test that columns=1 works correctly and doesn't go into infinite loop

plan 1;

$Text::Wrap::columns = 1;

lives_ok {
    wrap('', '',
    'H4sICNoBwDoAA3NpZwA9jbsNwDAIRHumuC4NklvXTOD0KSJEnwU8fHz4Q8M9i3sGzkS7BBrm
    OkCTwsycb4S3DloZuMIYeXpLFqw5LaMhXC2ymhreVXNWMw9YGuAYdfmAbwomoPSyFJuFn2x8
    Opr8bBBidccAAAA');
}
