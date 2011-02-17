#!/usr/bin/env perl6
use v6;
use Test;
use Text::Tabs;

BEGIN {
    @*INC.push('lib');
}

my @tests = (
'TEST 1 u
                x',
'		x',
"\t\tx",

'TEST 2 e
		x',
'                x',
'                x',

'TEST 3 e
	x
		y
			z',
'        x
                y
                        z',
'        x
                y
                        z',

'TEST 4 u
        x
                y
                        z',
'	x
		y
			z',
"\tx
\t\ty
\t\t\tz",

'TEST 5 u
This    Is      a       test    of      a       line with many embedded tabs',
'This	Is	a	test	of	a	line with many embedded tabs',
"This\tIs\ta\ttest\tof\ta\tline with many embedded tabs",

'TEST 6 e
This	Is	a	test	of	a	line with many embedded tabs',
'This    Is      a       test    of      a       line with many embedded tabs',
'This    Is      a       test    of      a       line with many embedded tabs',

'TEST 7 u
            x',
'	    x',
"\t    x",

'TEST 8 e
	
		
   	

           ',
'        
                
        

           ',
'        
                
        

           ',

'TEST 9 u
           ',
'	   ',
"\t   ",

'TEST 10 u
	
		
   	

           ',
'	
		
	

	   ',
"\t
\t\t
\t

\t   ",

'TEST 11 u
foobar                  IN	A		140.174.82.12
',
'foobar			IN	A		140.174.82.12
',
"foobar\t\t\tIN\tA\t\t140.174.82.12\n",
);

plan @tests/3 * 2;

for @tests -> $in is copy, $out, $escaped-out {
    # TODO: clean these up
    my $test-line = rx{^TEST \s* (\d+)? \s* (\S+)?\n};
    $in ~~ $test-line;
    my $mode = $1;

    $in ~~ s/<$test-line>//;

    is $out, $escaped-out;

    given $mode {
        when 'e' { is expand($in), $out }
        when 'u' { is unexpand($in), $out }
        default  { flunk 'asked to do some unknown operation ' ~ $_ }
    }
}
