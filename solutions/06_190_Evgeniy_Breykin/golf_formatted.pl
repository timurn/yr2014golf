#!/usr/bin/perl -p
    $\ = "\n";
    $w = $& if /^([\w]+)$/;

    /([\w, ]+)/;
    @_ = split /, /, $1;
    map { $q{$_} = 1 } @_
        if /Erdos/ ~~@_;

    $a = @{ [ sort { $b <=> $a } map { $q{$_} } @_ ] }[0];
    map {
        $q{$_} = $a + 1
            if $q{$_} != $a
    } @_;
}
{
    $q{Erdos} = 0;
    $_ = $q{$w} / /'Inf';
