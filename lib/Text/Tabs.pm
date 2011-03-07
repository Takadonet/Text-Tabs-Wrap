module Text::Tabs;

=begin pod

=head1 NAME

Text::Tabs -- expand and unexpand tabs per the unix expand(1) and unexpand(1)

=head1 SYNOPSIS

=begin code
    use Text::Tabs;

    $tabstop = 4;  # default = 8
    @lines_without_tabs = expand(@lines_with_tabs);
    @lines_without_tabs = expand(:$tabstop, @lines_with_tabs);
    @lines_with_tabs = unexpand(@lines_without_tabs);
    @lines_with_tabs = unexpand(:$tabstop, @lines_without_tabs);
    @lines_with_tabs = unexpand(:tabstop(3), @lines_without_tabs);
=end code

=head1 DESCRIPTION

Text::Tabs does about what the Unix utilities C<expand(1)> and C<unexpand(1)> do.
C<expand()> will replace the tabs in a line with the appropriate number of spaces. C<unexpand()>
will convert spaces to tabs when it can save bytes by doing so (just like C<unexpand -a>).
Invisible compression with plain ASCII!

=end pod

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

=begin pod

=head1 LICENSE

Copyright (C) 1996-2002,2005,2006 David Muir Sharnoff.
Copyright (C) 2005 Aristotle Pagaltzis
This module may be modified, used, copied, and redistributed at your own risk.
Publicly redistributed modified versions must use a different name.

=end pod

# vim: set ft=perl6 :
