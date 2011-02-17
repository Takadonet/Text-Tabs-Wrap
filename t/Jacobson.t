#!/usr/bin/env perl6
use v6;
use Test;
use Text::Wrap;

my @input = (
    "mmmm,n,ooo,ppp.qqqq.rrrrr,sssssssssssss,ttttttttt,uu,vvv wwwwwwwww####\n",
    "mmmm,n,ooo,ppp.qqqq.rrrrr.adsljasdf\nlasjdflajsdflajsdfljasdfl\nlasjdflasjdflasf,sssssssssssss,ttttttttt,uu,vvv wwwwwwwww####\n"
);

plan +@input;

$Text::Wrap::huge = 'overflow';
$Text::Wrap::columns = 9;
$Text::Wrap::break = '(?<=[,.])';

skip_rest 'Need to translate the $break into p6-regex';
exit;

for @input -> $str {
    lives_ok { wrap('', '', $str) }
}
