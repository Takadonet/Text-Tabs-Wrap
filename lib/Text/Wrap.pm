module Text::Wrap;
use Text::Tabs;

our $break = rx{\s};
our $huge = 'wrap';             # How to handle long words; valid values are <wrap die overflow>
our #`[Int] $columns = 76;      # Screen width
our #`[Int] $tabstop = 8;       # The logical width of a \t
our #`[Bool] $unexpand = True;  # Whether to compress leading indent into tabs after wrapping
our #`[Str] $separator = "\n";  # String used to join wrapped "lines"
our #`[Str] $separator2;        # String used to join lines, which preserves $separator if set

sub wrap(Str $para-indent, Str $body-indent, *@texts) is export {
    my $tail = pop(@texts);
    my $text = expand(@texts.map({ /\s+$/ ?? $_ !! $_ ~ ' ' }).join ~ $tail);

    my %first-line = margin => expand($para-indent).chars;
    my %body-line = margin => expand($body-indent).chars;

    # If either margin is larger than $columns, expand the line size and emit a warning
    my $min-width = [max] %first-line<margin>, %body-line<margin>;
    if $columns < $min-width {
        warn "Increasing column width from $columns to $min-width to contain requested indent";
        $columns = $min-width;
    }

    # The first line is allowed to have zero characters if the indent consumes all available space,
    # in which case text starts on the next line instead.
    %first-line<content> = [max] 0, $columns - %first-line<margin>;
    %body-line<content> = [max] 1, $columns - %body-line<margin>;

    %first-line<width> = [+] %first-line<margin content>;
    %body-line<width> = [+] %body-line<margin content>;

    # 1 character is reserved for "\n", except if it would leave no space for text otherwise.
    if %first-line<content> > 0 and %body-line<content> > 1 {
        --%first-line<content>;
        --%body-line<content>;
    }

    my %current = (
        first-line => True,
        content => %first-line<content>,
        indent => $para-indent,
    );

    my $out = ''; # Output buffer
    my $output-delimiter = ''; # Usually \n
    my $remainder = ''; # Buffer to catch trailing text
    my $pos = 0; # Input regex cursor

    my $old-pos;
    sub unexpand-if { $unexpand ?? unexpand($^a) !! $^a };

    while $pos <= $text.chars and $text !~~ m:p($pos)/\s*$/ {
        $old-pos = $pos;

        # Grab as many whole words as possible that'll fit in $current-line-content
        if $text ~~ m:p($pos)/(\N**0..*) <?{$0.chars <= %current<content>}> (<$break>|\n+|$)/ {
            $pos = $0.to + 1;
            $remainder = $1;
            $out ~= unexpand-if($output-delimiter ~ %current<indent> ~ $0);
        }
        # If that fails, the behaviour depends on the setting of $huge -
        #  - Eat a full line's worth of characters whether or not there's a word break at the end
        elsif $huge eq 'wrap' and $text ~~ m:p($pos)/(\N**0..*) <?{$0.chars == %current<content>}>/ {
            $pos = $/.to;
            $remainder = ($separator2 or $separator);
            $out ~= unexpand-if($output-delimiter ~ %current<indent> ~ $0);
        }
        # - Grab up to the next word-break, line-break or end of text regardless of length
        elsif $huge eq 'overflow' and $text ~~ m:p($pos)/(\N*?) (<$break>|\n+|$)/ {
            $pos = $0.to;
            $remainder = $1;
            $out ~= unexpand-if($output-delimiter ~ %current<indent> ~ $0);
        }
        elsif $huge eq 'die' or $columns >= 2 {
            die "Couldn't wrap text - requested text width '$columns' is too small";
        }
        else {
            # $columns < 2, attempt to recover by expanding it.
            warn "Failed to wrap with text width set to '$columns', retrying with 2";
            $columns = 2;
            return wrap($para-indent, $body-indent, @texts);
        }

        if $old-pos == $pos and %current<content> == %body-line<content> {
            die 'Infinite loop detected, please smack flussence with the cluebat';
        }

        # Replace this after the first line is done
        %current = (
            first-line => False,
            content => %body-line<content>,
            indent => $body-indent,
        ) if %current<first-line>;

        $output-delimiter =
            $separator2 ?? $remainder eq "\n" ?? "\n"
                                              !! $separator2
                        !! $separator;
    }

    return $out ~ $remainder;
}

# Rewraps paragraphs, discarding original space. A paragraph is detected by leading indent on the
# first line. If para-indent is the same as line-indent, paragraphs are separated by blank lines.
sub fill(Str $para-indent, Str $body-indent, *@raw) is export {
    @raw.join("\n")\
        .split(/\n\s+/)\
        .map({
            wrap($para-indent, $body-indent, $^paragraph.split(/\s+/).join(' '))
        })\
        .join($para-indent eq $body-indent ?? "\n\n" !! "\n");
}

# =head1 NAME

# Text::Wrap - line wrapping to form simple paragraphs

# =head1 SYNOPSIS

# B<Example 1>

#   use Text::Wrap;

#   $initial_tab = "\t";    # Tab before first line
#   $subsequent_tab = "";   # All other lines flush left

#   print wrap($initial_tab, $subsequent_tab, @text);
#   print fill($initial_tab, $subsequent_tab, @text);

#   $lines = wrap($initial_tab, $subsequent_tab, @text);

#   @paragraphs = fill($initial_tab, $subsequent_tab, @text);

# B<Example 2>

#   use Text::Wrap qw(wrap $columns $huge);

#   $columns = 132;     # Wrap at 132 characters
#   $huge = 'die';
#   $huge = 'wrap';
#   $huge = 'overflow';

# B<Example 3>

#   use Text::Wrap;

#   $Text::Wrap::columns = 72;
#   print wrap('', '', @text);

# =head1 DESCRIPTION

# C<Text::Wrap::wrap()> is a very simple paragraph formatter.  It formats a
# single paragraph at a time by breaking lines at word boundaries.
# Indentation is controlled for the first line (C<$initial_tab>) and
# all subsequent lines (C<$subsequent_tab>) independently.  Please note:
# C<$initial_tab> and C<$subsequent_tab> are the literal strings that will
# be used: it is unlikely you would want to pass in a number.

# Text::Wrap::fill() is a simple multi-paragraph formatter.  It formats
# each paragraph separately and then joins them together when it's done.  It
# will destroy any whitespace in the original text.  It breaks text into
# paragraphs by looking for whitespace after a newline.  In other respects
# it acts like wrap().

# Both C<wrap()> and C<fill()> return a single string.

# =head1 OVERRIDES

# C<Text::Wrap::wrap()> has a number of variables that control its behavior.
# Because other modules might be using C<Text::Wrap::wrap()> it is suggested
# that you leave these variables alone!  If you can't do that, then
# use C<local($Text::Wrap::VARIABLE) = YOURVALUE> when you change the
# values so that the original value is restored.  This C<local()> trick
# will not work if you import the variable into your own namespace.

# Lines are wrapped at C<$Text::Wrap::columns> columns (default value: 76).
# C<$Text::Wrap::columns> should be set to the full width of your output
# device.  In fact, every resulting line will have length of no more than
# C<$columns - 1>.

# It is possible to control which characters terminate words by
# modifying C<$Text::Wrap::break>. Set this to a string such as
# C<'[\s:]'> (to break before spaces or colons) or a pre-compiled regexp
# such as C<qr/[\s']/> (to break before spaces or apostrophes). The
# default is simply C<'\s'>; that is, words are terminated by spaces.
# (This means, among other things, that trailing punctuation  such as
# full stops or commas stay with the word they are "attached" to.)
# Setting C<$Text::Wrap::break> to a regular expression that doesn't
# eat any characters (perhaps just a forward look-ahead assertion) will
# cause warnings.

# Beginner note: In example 2, above C<$columns> is imported into
# the local namespace, and set locally.  In example 3,
# C<$Text::Wrap::columns> is set in its own namespace without importing it.

# C<Text::Wrap::wrap()> starts its work by expanding all the tabs in its
# input into spaces.  The last thing it does it to turn spaces back
# into tabs.  If you do not want tabs in your results, set
# C<$Text::Wrap::unexpand> to a false value.  Likewise if you do not
# want to use 8-character tabstops, set C<$Text::Wrap::tabstop> to
# the number of characters you do want for your tabstops.

# If you want to separate your lines with something other than C<\n>
# then set C<$Text::Wrap::separator> to your preference.  This replaces
# all newlines with C<$Text::Wrap::separator>.  If you just want to
# preserve existing newlines but add new breaks with something else, set
# C<$Text::Wrap::separator2> instead.

# When words that are longer than C<$columns> are encountered, they
# are broken up.  C<wrap()> adds a C<"\n"> at column C<$columns>.
# This behavior can be overridden by setting C<$huge> to
# 'die' or to 'overflow'.  When set to 'die', large words will cause
# C<die()> to be called.  When set to 'overflow', large words will be
# left intact.

# Historical notes: 'die' used to be the default value of
# C<$huge>.  Now, 'wrap' is the default value.

# =head1 EXAMPLES

# Code:

#   print wrap("\t","",<<END);
#   This is a bit of text that forms
#   a normal book-style indented paragraph
#   END

# Result:

#   "   This is a bit of text that forms
#   a normal book-style indented paragraph
#   "

# Code:

#   $Text::Wrap::columns=20;
#   $Text::Wrap::separator="|";
#   print wrap("","","This is a bit of text that forms a normal book-style paragraph");

# Result:

#   "This is a bit of|text that forms a|normal book-style|paragraph"

# =head1 SEE ALSO

# For wrapping multi-byte characters: L<Text::WrapI18N>.
# For more detailed controls: L<Text::Format>.

=begin pod

=head1 AUTHORS

Original Perl 5 code:
David Muir Sharnoff <muir@idiom.org> with help from Tim Pierce and
many many others.  Copyright (C) 1996-2009 David Muir Sharnoff.

Perl 6 rewrite:
Copyright © 2010-2011 Philip Mabon (L<https://github.com/Takadonet>)
Copyright © 2011 Anthony Parsons (L<https://github.com/flussence>)

=head1 LICENSE

This software is provided 'as-is', without any express or implied warranty.  In no event will the
author(s) be held liable for any damages arising from the use of this software.

Permission is granted to anyone to use this software for any purpose, including commercial
applications, and to alter it and redistribute it freely, subject to the following restrictions:

=item 1.
The origin of this software must not be misrepresented; you must not claim that you wrote the
original software. If you use this software in a product, an acknowledgment in the product
documentation would be appreciated but is not required.

=item 2.
Altered source versions must be plainly marked as such, and must not be misrepresented as being the
original software.

=item 3.
This notice may not be removed or altered from any source distribution.

=end pod

# vim: set ft=perl6 :
