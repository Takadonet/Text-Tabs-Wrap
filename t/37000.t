use v6;
BEGIN {
        @*INC.push('lib');
}
use Text::Wrap;

#Causes Text::Wrap to die...


my $toPrint = "(1) Category\t(2 or greater) New Category\n\n"; 
my $good =    "(1) Category\t(2 or greater) New Category\n"; 

my $toprint;

say "1..6";

$Text::Wrap::break = rx{\s};
$toPrint = wrap("","",$toPrint);
#print $@ ? "not ok 1\n" : "ok 1\n";
if $toPrint eq $good {
	say "ok 2";
}
else {
	say "not ok 2";
}


$Text::Wrap::break = rx{\d};
$toPrint = wrap("","",$toPrint);
# print $@ ? "not ok 3\n" : "ok 3\n";
if $toPrint eq $good {
	say "ok 4";
}
else {
	say "not ok 4";
}
$Text::Wrap::break = rx{a};
$toPrint = wrap("","",$toPrint);
# print $@ ? "not ok 5\n" : "ok 5\n";
# print $toPrint eq $good ? "ok 6\n" : "not ok 6\n";
if $toPrint eq $good {
	say "ok 6";
}
else {
	say "not ok 6";
}

