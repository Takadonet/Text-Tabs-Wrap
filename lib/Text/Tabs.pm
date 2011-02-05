module Text::Tabs:ver<*>;

#use vars qw($VERSION $tabstop $debug);

our Int $tabstop = 8;
our Bool $debug = False;

sub expand(*@in) is export {
    # FIXME: if we return the whole array, several tests fail
    return @in.map({
        my $s = '';

        # TODO: this could be done better, and without the s///
        for $^x.comb(/^^ \N* \n?/) -> $tmp is copy {
            # find the position of all \t so we can calculate the position when we replace them
            my @pos = $tmp.split(/\t/, :all).grep(Match)».from;

            # go through and replace \t with their visual whitespace equivalent
            my $offset = 0;
            $tmp ~~ s:g/(\t)/{
                my $pad = $tabstop - (@pos.shift() + $offset) % $tabstop;
                $offset += $pad - 1;
                ' ' x $pad;
            }/;

            $s ~= $tmp;
        }

        $s;
    })[0];
}

sub unexpand(*@in) is export {
    my $ts_as_space = ' ' x $tabstop;

    # TODO: workaround for rakudo not supporting $vars in quantifiers
    my $ts_sized_space = eval "rx/(.**$tabstop)/";

    return @in.map: {
        # FIXME: t/tabs.t fails if attempt to use .lines here, figure out why
        $^text.split("\n").map({
            my @e = split($ts_sized_space, expand($^line), :all);
            my $tail = pop(@e) // '';

            @e».subst(/\s\s+$/, "\t").join
                  ~ ($tail eq $ts_as_space ?? "\t" !! $tail);
        }).join("\n");
    };
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
