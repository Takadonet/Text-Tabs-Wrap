use v6;
use Test;
plan 1;
BEGIN {
        @*INC.push('lib');
}
use Text::Wrap;



$Text::Wrap::columns = 1;
#eval  wrap('', '', 'H4sICNoBwDoAA3NpZwA9jbsNwDAIRHumuC4NklvXTOD0KSJEnwU8fHz4Q8M9i3sGzkS7BBrm
#OkCTwsycb4S3DloZuMIYeXpLFqw5LaMhXC2ymhreVXNWMw9YGuAYdfmAbwomoPSyFJuFn2x8
#Opr8bBBidccAAAA');

#if ($!) {
#	say 'not ok 1';
#}
#else { 
#	say 'ok 1';
#}

