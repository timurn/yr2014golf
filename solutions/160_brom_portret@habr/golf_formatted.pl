#!/usr/bin/perl -pla0F\n
sub R {
    my ( $a, $i ) = pop;
    map {
        @r = split /, |:/;
        if ( !( $i++ ~~@_ ) & $a ~~@r ) {
            Erdos ~~@r && push @p, @_ | $a ne Erdos ? @_ + 1 : 0;
            R( @_, $i - 1, $_ ) for @r;
        }
    } @F;
    sort @p;
}
$_ = ( R $F[0] )[0] / /Inf
