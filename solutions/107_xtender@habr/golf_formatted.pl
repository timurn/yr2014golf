#!/usr/bin/perl -pla0F'\n'
$l = Erdos;
$l = $l =~ $F[0]
    ? $r = $_
    : join $\, grep { "$_~$l" =~ /(\b\w+\b).*~.*\b\1\b/ } @F
    for 0 .. $#F;
$_ = $r // Inf
