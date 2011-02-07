use v6;
use Test;
plan 1;
BEGIN {
	@*INC.push('lib');
}
use Text::Wrap;



$Text::Wrap::columns = 1;

lives_ok({ wrap('', '', '') });
