module TestFiles;
use Test;

sub basename {
    ($*PROGRAM_NAME ~~ m{ '/' (<-[/]>+) $ })[0];
}

our sub run(
    Callable $test-block,
    Str $input-dir = "t_files/{basename}.input",
    Str $output-dir = "t_files/{basename}.output",
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
