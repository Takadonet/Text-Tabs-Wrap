use v6;
use Test;
plan 1;
BEGIN {
        @*INC.push('lib');
}


my @tests = (
"TEST1
Cyberdog Information

Cyberdog & Netscape in the news
Important Press Release regarding Cyberdog and Netscape. Check it out! 

Cyberdog Plug-in Support!
Cyberdog support for Netscape Plug-ins is now available to download! Go
to the Cyberdog Beta Download page and download it now! 

Cyberdog Book
Check out Jesse Feiler's way-cool book about Cyberdog. You can find
details out about the book as well as ordering information at Philmont
Software Mill site. 

Java!
Looking to view Java applets in Cyberdog 1.1 Beta 3? Download and install
the Mac OS Runtime for Java and try it out! 

Cyberdog 1.1 Beta 3
We hope that Cyberdog and OpenDoc 1.1 will be available within the next
two weeks. In the meantime, we have released another version of
Cyberdog, Cyberdog 1.1 Beta 3. This version fixes several bugs that were
reported to us during out public beta period. You can check out our release
notes to see what we fixed! ",

"    Cyberdog Information
    Cyberdog & Netscape in the news Important Press Release regarding
 Cyberdog and Netscape. Check it out! 
    Cyberdog Plug-in Support! Cyberdog support for Netscape Plug-ins is now
 available to download! Go to the Cyberdog Beta Download page and download
 it now! 
    Cyberdog Book Check out Jesse Feiler's way-cool book about Cyberdog.
 You can find details out about the book as well as ordering information at
 Philmont Software Mill site. 
    Java! Looking to view Java applets in Cyberdog 1.1 Beta 3? Download and
 install the Mac OS Runtime for Java and try it out! 
    Cyberdog 1.1 Beta 3 We hope that Cyberdog and OpenDoc 1.1 will be
 available within the next two weeks. In the meantime, we have released
 another version of Cyberdog, Cyberdog 1.1 Beta 3. This version fixes
 several bugs that were reported to us during out public beta period. You
 can check out our release notes to see what we fixed! "
);



use Text::Wrap;

#$rerun = $ENV{'PERL_DL_NONLAZY'} ? 0 : 1;

while (@tests) {
	my $in = shift(@tests);
	my $out = shift(@tests);

	$in ~~ s/^TEST(\d+)?\n//;

	my $back = fill('    ', ' ', $in);
        is($back,$out);
}
