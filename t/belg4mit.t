use v6;

BEGIN {
        @*INC.push('lib');
}
use Text::Wrap;

say "1..1";

$Text::Wrap::columns = 1;
eval  wrap('', '', 'H4sICNoBwDoAA3NpZwA9jbsNwDAIRHumuC4NklvXTOD0KSJEnwU8fHz4Q8M9i3sGzkS7BBrm
OkCTwsycb4S3DloZuMIYeXpLFqw5LaMhXC2ymhreVXNWMw9YGuAYdfmAbwomoPSyFJuFn2x8
Opr8bBBidccAAAA');

if ($!) {
	say 'not ok 1';
}
else { 
	say 'ok 1';
}

