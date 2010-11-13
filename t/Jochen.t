use v6;

BEGIN {
	@*INC.push('lib');
}
use Text::Wrap;

say "1..1";

$Text::Wrap::columns = 1;

eval wrap('', '', '');

if $! {
	 say 'no ok';
}
else {
	say 'ok 1';
}	

