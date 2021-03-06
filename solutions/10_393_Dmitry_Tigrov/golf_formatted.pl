#!/usr/bin/perl -nl
$\ = $/;
$C = 'Erdos';

sub P {
    print $_[0];
    exit
}

scalar( @B = split /:/ ) > 1
    ? map { $H{ $B[1] }{$_} = "" } split /,\s*/, $B[0]
    : /$C/
        ? ( P(0) )
        : ( $A = $_ );

END {
    $i = 0;
    while (%H) {
        $i++;
        for ( keys %H ) {
            $K = $_;
            ( exists( $H{$K}{$C} ) )
              ? do {
                    map { $X{$i}{$_} = 1 } keys $H{$K};
                    delete $H{$K};
                }
              : ( exists $X{ $i - 1 } || $i == 1 )
                  ? do {
                        for ( keys $H{$K} ) {
                            if ( exists $X{ $i - 1 }{$_} ) {
                                map { $X{$i}{$_} = 1 } keys $H{$K};
                                delete $H{$K};
                            }
                        }
                    }
                  : P('Inf');
        }

        P($i) if ( exists $X{$i} && exists $X{$i}{$A} );
    }
}
