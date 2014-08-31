#!/usr/bin/perl -ln0aF/\n/
$d = 'Erdos';
@e[0] = $w = shift @F;
R($w);

sub R {
    for (@F) {
        @t = $_ =~ /(\w+)[,|:]/g;
        if ( $_ =~ /@_[0]/ ) {
            $i++;

            if ( $_ =~ /$d/ ) {
                $f = $i;
                @e = ($w);
                $i = 0
            }

            map {
                push @e, $_ and R($_)
                    if !( $_ ~~@e )
            } @t if !$f;
        }
    }
}
print $w eq $d ? 0 : $f || 'Inf';
