#!/usr/bin/perl -ln
    s/:.*//;
    $f ||= $_;
    for $x ( @s = split ', ' ) {
        $s{"$x:$_"} = 1
            for @s
    }
}
{
    sub p {
        my $n = shift;
        $d{$n} = $d * 1
            if $d < ( $d{$n} //= Inf );
        $d++;

        map {
            $_ ~~ @_ || p( $', @_, $_ ) if/^$n:/
        } keys %s;
        $d--
    }

    p Erdos;
    print $d{$f} // Inf
