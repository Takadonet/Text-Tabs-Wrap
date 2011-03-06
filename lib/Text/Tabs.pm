module Text::Tabs;

sub expand(:$tabstop = 8, *@in) is export {
    @in.map: {
        $^text.split("\n").map({
            # Split the line up into non-\t and \t, go through and replace \t with their *visual*
            # space equivalent - the end of the tab should be rounded down to the nearest tabstop
            my $pos = 0;
            $^line.split(/\t/, :all).map({
                my $out = $^in ~~ Match ?? ' ' x $tabstop - ($pos mod $tabstop)
                                        !! $^in;
                $pos += $out.chars;
                $out;
            }).join
        }).join("\n");
    }
}

# Expand all tabs in text, then collapse it
sub unexpand(:$tabstop = 8, *@in) is export {
    @in.map: {
        # .lines will eat a trailing \n, so don't use it here
        $^text.split("\n").map({
            # Break the text into tabstop-sized chunks, and collapse trailing whitespace on those
            # into \t chars. We don't do that for the last bit because it might not be a full
            # $tabstop chars long.
            my $expanded = expand($^line);
            my @chunks = ($expanded.substr($_, $tabstop) for 0, $tabstop ...^ * >= $expanded.chars);
            my $tail = pop(@chunks) // '';
            @chunks».subst(/\s\s+$/, "\t").join
                  ~ ($tail eq ' ' x $tabstop ?? "\t" !! $tail);
        }).join("\n");
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

# vim: set ft=perl6 :
