module Text::Wrap:ver<*>;
use Text::Tabs;

# use Text::Tabs qw(expand unexpand);
# @ISA = qw(Exporter);
# @EXPORT = qw(wrap fill);
# @EXPORT_OK = qw($columns $break $huge);
# $VERSION = 2009.0305;

my regex break { \s };
our Bool $debug = False;    #='Makes wrap() extra-noisy'

our $break = rx{\s};
our $huge = 'wrap';         #='How to handle long words; valid values are <wrap die overflow>'
our Int $columns = 76;      #='Screen width'
our Int $tabstop = 8;       #='The logical width of a \t'
our Bool $unexpand = True;  #='Whether to compress leading indent into tabs after wrapping'
our Str $separator = "\n";  #='String used to join wrapped "lines"'
our Str $separator2;        #='String used to join lines, which preserves $separator if set'

sub wrap(Str $para-indent, Str $line-indent, *@t) is export {
    #local($Text::Tabs::tabstop) = $tabstop;
    my $tail = pop(@t);
    #my $t = expand(join("", (map { /\s+\z/ ? ( $_ ) : ($_, ' ') } @t), $tail));

    # WTF does this varname mean?
    my @yo;
    for @t -> $x {
        if $x ~~ /\s+$/ {
            @yo.push($x);
        }
        else {
            @yo.push($x ~ ' ');
        }
    }
    my $line = @yo.join ~ $tail;

    my $t = expand($line);
    my $lead = $para-indent;
    #todo replace with .graphs when implemented
    my Int $nll = $columns - expand($line-indent).chars - 1;

    if $nll <= 0 && $line-indent ne '' {
        my $nc = expand($line-indent).chars + 2;
        warn sprintf(
            'Increasing $Text::Wrap::columns from %d to %d to accommodate length of subsequent tab',
            $columns, $nc
        );
        $columns = $nc;
        $nll = 1;
    }

    my Int $ll = 0 max $columns - expand($para-indent).chars - 1;
    my $r = '';
    my $nl = '';
    my $remainder = '';
    while $t !~~ m/^\s*$/ {
        if $t ~~ m/^(\N**0..*) <?{$0.chars <= $ll}> (<$break>|\n+|$)(.*)/ {
            if $unexpand {
                $r ~= unexpand($nl ~ $lead ~ $0);
            }
            else {
                $r ~= $nl ~ $lead ~ $0;
            }
            $remainder = $1;
            $t = $2;
        }
        #elsif $huge eq 'wrap' && $t =~ /\G([^\n]{$ll})/gc) {
        elsif $huge eq 'wrap' && $t ~~ m/^(\N**0..*) <?{$0.chars == $ll}>/ {
            if $unexpand {
                $r ~= unexpand($nl ~ $lead ~ $0);
            }
            else {
                $r ~= $nl ~ $lead ~ $0;
            }
            if $separator2 {
                $remainder = $separator2;
            } else {
                $remainder = $separator;
            }
            $t = $t.substr($0.chars);
        #} elsif ($huge eq 'overflow' && $t =~ /\G([^\n]*?)($break|\n+|\z)/xmgc) {
        } elsif ($huge eq 'overflow' && $t ~~ /(\N*?)(<$break>|\n+|$)(.*)/) {
            if $unexpand {
                $r ~= unexpand($nl ~ $lead ~ $0);
            } else {
                $r ~= $nl ~ $lead ~ $0;
            }
            $remainder = $1;
            $t = $2;
        }
        elsif $huge eq 'die' {
            die "couldn't wrap '$t'";
        } elsif $columns < 2 {
            #warnings::warnif "Increasing \$Text::Wrap::columns from $columns to 2";
            $columns = 2;
            return ($para-indent, $line-indent, @t);
        } else {
            die "This shouldn't happen";
        }

        $lead = $line-indent;
        $ll = $nll;

        if $separator2 {
            $nl = $remainder;
        }

        if $separator2 {
            if $remainder eq "\n" {
                $nl = "\n";
            } else {
                $nl = $separator2;
            }
        }
        else {
            $nl = $separator;
        }
    }
    $r ~= $remainder;

    print "-----------$r---------\n" if $debug;

    print "Finish up with '$lead'\n" if $debug;

    #$r .= $lead . substr($t, pos($t), length($t)-pos($t))
    #   if pos($t) ne length($t);
    #if pos($t) ne length($t) {
    #   $r ~= $lead ~ substr($t, pos($t), $t.chars -pos($t) );
    #}

    print "-----------$r---------\n" if $debug;

    return $r;
}

sub fill(Str $para-indent, Str $line-indent, *@raw) is export {
    my @para;

    for split(/\n\s+/, join("\n", @raw)) -> $pp is copy {
        $pp ~~ s:g/\s+/ /;
        my $x = wrap($para-indent, $line-indent, $pp);
        @para.push($x);
    }

    # if paragraph_indent is the same as line_indent,
    # separate paragraphs with blank lines
    return @para.join( $para-indent eq $line-indent ?? "\n\n" !! "\n" );
}

# 1;
# __END__

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

# =head1 LICENSE

# David Muir Sharnoff <muir@idiom.org> with help from Tim Pierce and
# many many others.  Copyright (C) 1996-2009 David Muir Sharnoff.
# This module may be modified, used, copied, and redistributed at
# your own risk.  Publicly redistributed versions that are modified
# must use a different name.
