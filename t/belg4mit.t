#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

plan 1;
todo 1 => 'known bug - this one goes into an infinite loop';

$Text::Wrap::columns = 1;

lives_ok {
    die;
    wrap('', '',
    'H4sICNoBwDoAA3NpZwA9jbsNwDAIRHumuC4NklvXTOD0KSJEnwU8fHz4Q8M9i3sGzkS7BBrm
    OkCTwsycb4S3DloZuMIYeXpLFqw5LaMhXC2ymhreVXNWMw9YGuAYdfmAbwomoPSyFJuFn2x8
    Opr8bBBidccAAAA');
}
