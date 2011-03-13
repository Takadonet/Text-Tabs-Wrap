module TestFiles;
use Test;

our sub run(
    Callable $test-block,
    Str $input-dir = "$*PROGRAM_NAME.input",
    Str $output-dir = "$*PROGRAM_NAME.output",
    Int $tests-per-block = 1,
    Int $add-to-plan = 0
) {
    my @files = dir($output-dir);
    plan $tests-per-block * @files + $add-to-plan;

    for @files -> $filename {
        my $in = open("$input-dir/$filename");
        my $out = open("$output-dir/$filename");

        $test-block(:$in, :$out, :$filename);
    }
}
