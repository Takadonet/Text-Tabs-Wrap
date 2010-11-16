use v6;
BEGIN {
        @*INC.push('lib');
}

use Text::Wrap;
use Test;

plan 1;
$Text::Wrap::columns = 4;
my $x;

eval  $x =wrap('', '123', 'some text');

#todo figure out how to test for this
#is(~$!, '');
is($x, "some\n123t\n123e\n123x\n123t","Correct output");

