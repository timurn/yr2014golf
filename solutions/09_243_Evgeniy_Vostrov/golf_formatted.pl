#!/usr/bin/perl
@g = $e = 'Erdos';
while (<>) {
    /^\w+$/;
    $t //= $&;
    / : /;

    @a=split", ",$`;
    f( join "|", @a );

    if ( $p || /$e / ) {
        push @g, $p !~ /$_/ ? "$p $_" : ''
            for @a;
    }
}

print f($t) . "\n";

sub f {
    $s = pop;
    $p = $l = $z;

    for (@g) {
        if ( /^($e.+)?$s$/ ) {
            $v = ( split ' ' ) - 1;
            $p = $_ and $l = $v
                if $v < ( $l // 5)
        }
    }
    $l // 'Inf';
}
