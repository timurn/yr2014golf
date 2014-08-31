#!/usr/bin/perl -plaF'\b'
    $t //= pop @F;
    push @{ $s{$_}[1] }, @F
        for@F
}
{
    sub r {
        $n = pop;
        $c = $s{+pop}[1];

        $s{$_}[0] //= $n + 1
            for @$c;
        $s{$_}[0] < $n || r( $_, ++$n )
            for @$c
    }
    r Erdos, $s{Erdos}[0] = 1;
    $_ = $s{$t}[0];
    $_ = $_ ? --$_ : Inf
