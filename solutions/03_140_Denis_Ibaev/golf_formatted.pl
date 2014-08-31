#!perl -plaF'[,:]\s'
    $n //= pop @F;
    pop @F;
    push @$_, @F
        for @F
}
{
    $i = 1;
    for( ; $n; $i++ ) {
        $n{$_} //= $n ne $_ ? $i : 0
            for @$n;
        @$n = ();
        ($n) = grep @$_, keys %n
    }
    $_ = $n{Erdos} // Inf
