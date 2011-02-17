#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

BEGIN {
    @*INC.push('lib');
}

plan 1;

$Text::Wrap::columns = 1;

lives_ok { wrap('', '', '') };
