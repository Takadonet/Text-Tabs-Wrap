use v6;
use Test;
BEGIN {
        @*INC.push('lib');
}


my @tests = (
"TEST1
This 
is
a
test",
"   This 
 is
 a
 test",
"TEST2
This is a test of a very long line.  It should be broken up and put onto multiple lines.
This is a test of a very long line.  It should be broken up and put onto multiple lines.

This is a test of a very long line.  It should be broken up and put onto multiple lines.",
"   This is a test of a very long line.	It should be broken up and put onto
 multiple lines.
 This is a test of a very long line.  It should be broken up and put onto
 multiple lines.
 
 This is a test of a very long line.  It should be broken up and put onto
 multiple lines.",
"TEST3
This is a test of a very long line.  It should be broken up and put onto multiple lines.",
"   This is a test of a very long line.	It should be broken up and put onto
 multiple lines.",
"TEST4
This is a test of a very long line.  It should be broken up and put onto multiple lines.
",
"   This is a test of a very long line.	It should be broken up and put onto
 multiple lines.
",
"TEST5
This is a test of a very long line. It should be broken up and put onto multiple This is a test of a very long line. It should be broken up and put",
"   This is a test of a very long line. It should be broken up and put onto
 multiple This is a test of a very long line. It should be broken up and
 put",
"TEST6
11111111 22222222 33333333 44444444 55555555 66666666 77777777 888888888 999999999 aaaaaaaaa bbbbbbbbb ccccccccc ddddddddd eeeeeeeee ffffffff gggggggg hhhhhhhh iiiiiiii jjjjjjjj kkkkkkkk llllllll mmmmmmmmm nnnnnnnnn ooooooooo ppppppppp qqqqqqqqq rrrrrrrrr sssssssss",
"   11111111 22222222 33333333 44444444 55555555 66666666 77777777 888888888
 999999999 aaaaaaaaa bbbbbbbbb ccccccccc ddddddddd eeeeeeeee ffffffff
 gggggggg hhhhhhhh iiiiiiii jjjjjjjj kkkkkkkk llllllll mmmmmmmmm nnnnnnnnn
 ooooooooo ppppppppp qqqqqqqqq rrrrrrrrr sssssssss",
"TEST7
c3t1d0s6 c4t1d0s6 c5t1d0s6 c6t1d0s6 c7t1d0s6 c8t1d0s6 c9t1d0s6 c10t1d0s6 c11t1d0s6 c12t1d0s6 c13t1d0s6 c14t1d0s6 c15t1d0s6 c16t1d0s6 c3t1d0s0 c4t1d0s0 c5t1d0s0 c6t1d0s0 c7t1d0s0 c8t1d0s0 c9t1d0s0 c10t1d0s0 c11t1d0s0 c12t1d0s0 c13t1d0s0 c14t1d0s0 c15t1d0s0 c16t1d0s0",
"   c3t1d0s6 c4t1d0s6 c5t1d0s6 c6t1d0s6 c7t1d0s6 c8t1d0s6 c9t1d0s6 c10t1d0s6
 c11t1d0s6 c12t1d0s6 c13t1d0s6 c14t1d0s6 c15t1d0s6 c16t1d0s6 c3t1d0s0
 c4t1d0s0 c5t1d0s0 c6t1d0s0 c7t1d0s0 c8t1d0s0 c9t1d0s0 c10t1d0s0 c11t1d0s0
 c12t1d0s0 c13t1d0s0 c14t1d0s0 c15t1d0s0 c16t1d0s0",
"TEST8
A test of a very very long word.
a123456789b123456789c123456789d123456789e123456789f123456789g123456789g1234567",
"   A test of a very very long word.
 a123456789b123456789c123456789d123456789e123456789f123456789g123456789g123
 4567",
"TEST9
A test of a very very long word.  a123456789b123456789c123456789d123456789e123456789f123456789g123456789g1234567",
"   A test of a very very long word. 
 a123456789b123456789c123456789d123456789e123456789f123456789g123456789g123
 4567",
'TEST10
my mother once said
"never eat paste my darling"
would that I heeded',
'   my mother once said
 "never eat paste my darling"
 would that I heeded',
"TEST11
This_is_a_word_that_is_too_long_to_wrap_we_want_to_make_sure_that_the_program_does_not_crash_and_burn",
"   This_is_a_word_that_is_too_long_to_wrap_we_want_to_make_sure_that_the_pr
 ogram_does_not_crash_and_burn",
"TEST12
This

Has

Blank

Lines
",
"   This
 
 Has
 
 Blank
 
 Lines
",
'TEST13 break=\d
I saw 3 ships come sailing in',
"   I saw 3 ships come sailing in",
'TEST14 break=\d
the.quick.brown.fox.jumps.over.the.9.lazy.dogs.for.no.good.reason.whatsoever.apparently',
"   the.quick.brown.fox.jumps.over.the.
 .lazy.dogs.for.no.good.reason.whatsoever.apparently"
);




plan 2 +@tests;

use Text::Wrap;




my @st = @tests;
 while (@st) {
  	my $in = shift(@st);
  	my $out = shift(@st);
        
        if $in ~~ /^TEST(\d+)[\s break\=(\N+)]?\n/ {
            #hardcoded the answer for now since i believe it's a bug
            #todo fix this
            $Text::Wrap::break = rx{\d} if $1;
         }
         $in ~~ s/^TEST\d+(\s break\=\N+)?\n//;
        

  	my $back = wrap('   ', ' ', $in);
        is($back,$out);

}
#need to restore back to default $Text::Wrap::break
#todo resolve this by limiting the scope of changes of 'break'. Perl 5 local would be nice
$Text::Wrap::break = rx{\s};

@st = @tests;
while (@st) {
 	my $in = shift(@st);
 	my $out = shift(@st);

        if $in ~~ /^TEST(\d+)[\s break\=(\N+)]?\n/ {
            #hardcoded the answer for now since i believe it's a bug
            #todo fix this!
            $Text::Wrap::break = rx{\d} if $1;
        }


        my @in = $in.split(/\n/);
        #get rid of test number
        @in.shift();

        
        #append "\n" to all entries but the last
        @in[0 ..^ @in-1] >>~=>> "\n";

 	my $back = wrap('   ', ' ', @in);
        is($back,$out);

}

$Text::Wrap::huge = 'overflow';

my $tw = 'This_is_a_word_that_is_too_long_to_wrap_we_want_to_make_sure_that_the_program_does_not_crash_and_burn';
my $w = wrap('zzz','yyy',$tw);
is($w,"zzz$tw");

{
      $Text::Wrap::columns = 10;
      $Text::Wrap::huge = "wrap";
      my $answer = wrap("verylongindent", "", "foo");
      is($answer,"verylongindent\nfoo");
       

}
