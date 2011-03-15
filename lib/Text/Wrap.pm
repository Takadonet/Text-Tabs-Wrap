module Text::Wrap;
use Text::Tabs;

=begin pod

=head1 NAME

Text::Wrap -- line wrapping to form simple paragraphs

=head1 SYNOPSIS

=begin code
    use Text::Wrap;

    $initial_tab = "\t";    # Tab before first line
    $subsequent_tab = "";   # All other lines flush left

    $lines = wrap($initial_tab, $subsequent_tab, @text);
    @paragraphs = fill($initial_tab, $subsequent_tab, @text);

    $Text::Wrap::huge = 'wrap';
    $Text::Wrap::columns = %*ENV<COLUMNS> // 80;
    print wrap('', '', @text);  # Format text for terminal output
=end code

=head1 DESCRIPTION

Text::Wrap provides two functions for wrapping text:

C<wrap()> is a very simple paragraph formatter. It formats a single paragraph at a time by breaking
lines at word boundaries. Indentation is controlled for the first line and all subsequent lines
independently, via C<$para-indent> and C<$body-indent>.

C<fill()> is a simple multi-paragraph formatter. It breaks text into paragraphs on blank-line
boundaries, each paragraph is passed to C<wrap()> and the result is joined back together.

Both C<wrap()> and C<fill()> return a single string.

=end pod

# See below for documnentation of these options
our $break = rx{\s};
our $huge = 'wrap';
our $columns = 76;
our $unexpand = True;
our $separator = "\n";
our $separator2;

sub wrap(Str $para-indent, Str $body-indent,
         Int :$tabstop      = 8,
         Int :$columns      = $Text::Wrap::columns,
         Str :$huge         = $Text::Wrap::huge,
         Str :$separator    = $Text::Wrap::separator,
         Str :$separator2   = $Text::Wrap::separator2,
         Bool :$unexpand    = $Text::Wrap::unexpand,
         Regex :$break      = $Text::Wrap::break,
         *@texts) returns Str is export {
    my $tail = pop(@texts);
    my $text = expand(@texts.map({ /\s+$/ ?? $_ !! $_ ~ ' ' }).join ~ $tail);

    my %first-line = margin => expand($para-indent).chars;
    my %body-line = margin => expand($body-indent).chars;

    # If either margin is larger than $columns, emit a warning
    my $content-width = [max] $columns, %first-line<margin>, %body-line<margin>;
    if $columns < $content-width {
        warn "Increasing column width from $columns to $content-width to contain requested indent";
    }

    # The first line is allowed to have zero characters if the indent consumes all available space,
    # in which case text starts on the next line instead.
    %first-line<content> = [max] 0, $content-width - %first-line<margin>;
    %body-line<content> = [max] 1, $content-width - %body-line<margin>;

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
        elsif $huge eq 'die' or $content-width >= 2 {
            die "Couldn't wrap text - requested text width '$content-width' is too small";
        }
        else {
            # $content-width < 2, attempt to recover by expanding it.
            warn "Failed to wrap with text width set to '$content-width', retrying with 2";
            return wrap($para-indent, $body-indent, :columns(2), @texts);
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

sub fill(Str $para-indent, Str $body-indent, *@raw, *%wrap-opts) returns Str is export {
    @raw.join("\n")\
        .split(/\n\s+/)\
        .map({
            wrap($para-indent, $body-indent, $^paragraph.split(/\s+/).join(' '), %wrap-opts)
        })\
        .join($para-indent eq $body-indent ?? "\n\n" !! "\n");
}

=begin pod

=head1 OPTIONS

Text::Wrap has a number of named parameters that can be passed to C<wrap()> or C<fill()>. The
defaults for these are set in a number of package-global vars, but these only exist for
backwards-compatibility with Perl 5; after a transition period we're removing them.

=begin item
C<:$columns> (default: C<76>)

This controls the maximum width of a line, including indent. The actual text width will normally be
1 less than this as C<wrap()> reserves one character for the C<\n> ending each line, except when
C<$columns> is set so small there'd be no room for normal text on a line. If this is set smaller
than a line's indent + 1 character of text, a warning is issued and this value is overridden.
=end item

=begin item
C<:$break> (default: C<rx/\s/>)

This defines the logical word separator. Set this to any valid regex, such as e.g. C<rx/\s|':'/> to
break before spaces/colons or C<rx/\s|"'"/> to break before spaces/apostrophes. The default is
simply to split on whitespace. (This means, among other things, that trailing punctuation such as
full stops or commas stay with the word they are "attached" to.) Setting C<$break> to a regular
expression that doesn't eat any characters (perhaps just a forward look-ahead assertion) will likely
cause bad things to happen.
=end item

=begin item
C<:$unexpand> (default: C<Bool::True>), C<:$tabstop> (default: C<8>)

C<wrap()> starts its work by expanding all tabs in its input into spaces. The last thing it does is
to turn spaces back into tabs. If you do not want tabs in the output, set C<$unexpand> to a false
value. Likewise if you do not want to use 8-character tabstops, pass a different numeric
C<:$tabstop> value to C<wrap()>.
=end item

=begin item
C<:$separator> (default: C<"\n">), C<:$separator2> (default: not set)

=for comment
N.B. The logic of the separator vars is horribly convoluted. This part of the module may change.

C<$Text::Wrap::separator> defines the logical line delimiter for output. C<$Text::Wrap::separator2>
is similar, but when set it overrides the value of C<$separator> and existing newline characters in
the input are preserved.
=end item

=begin item
C<:$huge> (default: C<'wrap'>)

This defines the behaviour when encountering a "huge" word (anything that can't be normally broken
before C<$columns> characters on the line). 3 values are accepted:

=defn C<'wrap'>
C<wrap()> inserts a line break in the word at column C<$columns>.

=defn C<'overflow'>
Words longer than C<$columns> are put on a line by themselves, but otherwise left unwrapped.

=defn C<'die'>
C<wrap()> dies upon finding a word it can't fit into the space allocated.
=end item

=head1 EXAMPLES

C<wrap()> goes well with heredocs:

  print wrap("\t","",q:to<END>);
  This is a bit of text that forms
  a normal book-style indented paragraph
  END
  # "   This is a bit of text that forms
  # a normal book-style indented paragraph
  # "

You can easily make a wrap wrapper with your own defaults using C<.assuming>:

  my &wrapper = &wrap.assuming('', '', :columns(20), :separator('|'));
  print &wrapper('This is a bit of text that forms a normal book-style paragraph');
  # "This is a bit of|text that forms a|normal book-style|paragraph"

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
