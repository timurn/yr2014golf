#!/usr/bin/perl -l
$u = <>;
@l = map [/\w+/g], <>;
$_ = 0;

while ( /\d/ && $u !~ /Erdos/ ) {
    ( map $u =~ /$_/, @$_ )
        ? $u = join $u, @$_
        : push @k, $_
            for @l;

    ( $_, @k ) = @l == ( @l = @k ) ? Inf: $_ + 1;
}
print
