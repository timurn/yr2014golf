#!perl -na0F\n
sub z {
    my ( $n, $h, $k, $r, $f ) = @_;
    $$r = $k if $n eq $f;

    my @r;
    map {
        /$n/
            ? map {
                /$n/ or $h->{$_} = {}
              } /(\w+?)(?:,|:)/g
            : push @r, $_
    } @_;

    z( $_, $h->{$_}, $k + 1, $r, $f, @r )
        for keys %$h;
}

$r = Inf;
z Erdos, {}, 0, \$r, @F;
print "$r\n"
