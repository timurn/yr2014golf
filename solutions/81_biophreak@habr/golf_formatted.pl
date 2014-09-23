#!/usr/bin/perl -0p
$, = $_;
$_ = ord $_;
$o = length $, > 249;
s/69/0/;
s/83/1/;
s/67/2-$o/e;
s/73/Inf/;
s/\z/\n/
