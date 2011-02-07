use v6;
use Test;
plan 3;
BEGIN {
        @*INC.push('lib');
}
use Text::Wrap;

#Causes Text::Wrap to die...


my $toPrint = "(1) Category\t(2 or greater) New Category\n\n"; 
my $good =    "(1) Category\t(2 or greater) New Category\n"; 

my $toprint;

$Text::Wrap::break = rx{\s};
$toPrint = wrap("","",$toPrint);
is($toPrint,$good);


$Text::Wrap::break = rx{\d};
$toPrint = wrap("","",$toPrint);
is($toPrint,$good);

$Text::Wrap::break = rx{a};
$toPrint = wrap("","",$toPrint);
is($toPrint,$good);

