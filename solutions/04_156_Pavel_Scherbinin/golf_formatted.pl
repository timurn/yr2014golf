#!/usr/bin/perl -nlaF/,\s|:/
    $a ||= $F[0];
    push @{ $h{$_}{s} }, @F
        for @F
}
{
    @m = $h{Erdos};
    unshift @m, map {
        ( $$c{l} //= 0 + pop @m )+ 1, $h{$_}
    } splice @{ $$c{s} }
        while $c = pop @m;
    print $h{$a}{l} // 'Inf'
