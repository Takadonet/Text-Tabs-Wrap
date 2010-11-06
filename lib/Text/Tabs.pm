module Text::Tabs {

#require Exporter;
#@ISA = (Exporter);
#@EXPORT = qw(expand unexpand $tabstop);

#use vars qw($VERSION $tabstop $debug);
#$VERSION = 2009.0305;

#BEGIN	{
	our $tabstop = 8;
	our $debug = 0;
#}
sub expand(*@in) is export {
	my @l;
	my $pad;
	for(@in) -> $x  {
		my $s = '';
		my @matchs = $x.comb(/^^\N*\n?/);
		for (@matchs) -> $y{
			my $offs = 0;
			my $tmp = $y;
			
			#need to find position of all /t so we can calculate the position when we replace them
			my @a = $tmp.split(/\t/,:all);
			my @pos;
			for(@a) -> $x {
				if  $x.WHAT ~~ Match {
					 @pos.push($x.from);
				}
			}
			####

			$tmp ~~ s:g/(\t)/{ 
				$pad = $tabstop - (@pos.shift() + $offs) % $tabstop;
                                $offs += $pad - 1;
                                " " x $pad;
			}/;
			$s ~= $tmp;
		}
                @l.push($s);
	}
	#might want to return an array here or just one element...
	return @l[0];
}

sub unexpand(*@in) is export {
 	my @e;
 	my $x;
 	my $line;
 	my @lines;
 	my $lastbit;
 	my $ts_as_space = " "x $tabstop;
	my @l;
	my @input = @in;
 	for (@input) -> $x {
 		@lines = split("\n", $x);
 		for (@lines) ->  $line is rw {
 			$line = expand($line);
 			@e = split(/(.**8)/,$line,:all);
 			$lastbit = pop(@e);
 			$lastbit = '' 
 				unless defined $lastbit;
 			$lastbit = "\t"
 				if $lastbit eq $ts_as_space;
 			for (@e) -> $y is rw {
# 				if ($debug) {
# 					my $x = $_;
# 					$x =~ s/\t/^I\t/gs;
# 					print "sub on '$x'\n";
# 				}
				$y ~~ s/\s\s+$/\t/;
 			}
 			$line = join('',@e, $lastbit);
 		}
 		@l.push( join("\n", @lines) );
 	}
# 	return @l if wantarray;
 	return @l[0];

}

}


# =head1 NAME

# Text::Tabs -- expand and unexpand tabs per the unix expand(1) and unexpand(1)

# =head1 SYNOPSIS

#   use Text::Tabs;

#   $tabstop = 4;  # default = 8
#   @lines_without_tabs = expand(@lines_with_tabs);
#   @lines_with_tabs = unexpand(@lines_without_tabs);

# =head1 DESCRIPTION

# Text::Tabs does about what the unix utilities expand(1) and unexpand(1) 
# do.  Given a line with tabs in it, expand will replace the tabs with
# the appropriate number of spaces.  Given a line with or without tabs in
# it, unexpand will add tabs when it can save bytes by doing so (just
# like C<unexpand -a>).  Invisible compression with plain ASCII! 

# =head1 EXAMPLE

#   #!perl
#   # unexpand -a
#   use Text::Tabs;

#   while (<>) {
#     print unexpand $_;
#   }

# Instead of the C<expand> comand, use:

#   perl -MText::Tabs -n -e 'print expand $_'

# Instead of the C<unexpand -a> command, use:

#   perl -MText::Tabs -n -e 'print unexpand $_'

# =head1 LICENSE

# Copyright (C) 1996-2002,2005,2006 David Muir Sharnoff.  
# Copyright (C) 2005 Aristotle Pagaltzis 
# This module may be modified, used, copied, and redistributed at your own risk.
# Publicly redistributed modified versions must use a different name.

