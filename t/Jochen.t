#!/usr/bin/env perl6
use v6;
BEGIN { @*INC.push(<lib>) }
use Test;
use Text::Wrap;

plan 1;

$Text::Wrap::columns = 1;

lives_ok { wrap('', '', '') };
