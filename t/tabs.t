use v6;

BEGIN {
	@*INC.push('lib');
}

 my @tests = (
'TEST 1 u
                x',
'		x',
'TEST 2 e
		x',
'                x',
'TEST 3 e
	x
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
'TEST 5 u
This    Is      a       test    of      a       line with many embedded tabs',
'This	Is	a	test	of	a	line with many embedded tabs',
'TEST 6 e
This	Is	a	test	of	a	line with many embedded tabs',
'This    Is      a       test    of      a       line with many embedded tabs',
'TEST 7 u
            x',
'	    x',
'TEST 8 e
	
		
   	

           ',
'        
                
        

           ',
'TEST 9 u
           ',
'	   ',
'TEST 10 u
	
		
   	

           ',
'	
		
	

	   ',
'TEST 11 u
foobar                  IN	A		140.174.82.12
',
'foobar			IN	A		140.174.82.12
');


say '1..' ~ @tests/2;
use Text::Tabs;

# $rerun = $ENV{'PERL_DL_NONLAZY'} ? 0 : 1;

my $tn = 1;
my $f;
my $fn;
while (@tests) {
 	my $in = shift(@tests);
 	my $out = shift(@tests);
	$in ~~ /^TEST \s* (\d+)? \s* (\S+)?\n/ ;

	my $back;
 	if $1 eq 'e' {
 		$f = \&expand;
 		$fn = 'expand';
 	} else {
 		$f = \&unexpand;
 		$fn = 'unexpand';
 	}
	$in ~~ s/^TEST \s* (\d+)? \s* (\S+)?\n// ;

	if $fn eq 'expand' {
		$back = expand($in);
	}
	else {
		$back = unexpand($in);
	}

 	if ($back eq $out) {
 		print "ok $tn\n";
# 	} elsif ($rerun) {
# 		my $oi = $in;
# 		foreach ($in, $back, $out) {
# 			s/\t/^I\t/gs;
# 			s/\n/\$\n/gs;
# 		}
# 		print "------------ input ------------\n";
# 		print $in;
# 		print "\$\n------------ $fn -----------\n";
# 		print $back;
# 		print "\$\n------------ expected ---------\n";
# 		print $out;
# 		print "\$\n-------------------------------\n";
# 		$Text::Tabs::debug = 1;
# 		my $back = &$f($in);
# 		exit(1);
 	} else {
 		say "not ok $tn";
 	}
 	$tn++;
 }
