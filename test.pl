use Modern::Perl;
use Test::More;
use IPC::Open3;
use Data::Dumper;

my @testcases = (
    {
        in => 
'Erdos
Smith, Martin, Erdos: Newtonian forms of prime factor matrices 
Erdos, Reisig: Stuttering in petri nets
Smith, Chen: First oder derivates in structured programming
Jablonski, Hsueh: Selfstabilizing data structures
',
        out => "0\n"
    },
    {
        in => 
'Smith
Smith, Martin, Erdos: Newtonian forms of prime factor matrices 
Erdos, Reisig: Stuttering in petri nets
Smith, Chen: First oder derivates in structured programming
Jablonski, Hsueh: Selfstabilizing data structures
',
        out => "1\n"
    },
    {
        in => 
'Chen
Smith, Martin, Erdos: Newtonian forms of prime factor matrices 
Erdos, Reisig: Stuttering in petri nets
Smith, Chen: First oder derivates in structured programming
Jablonski, Hsueh: Selfstabilizing data structures
',
        out => "2\n"
    },
    {
        in => 
'Ivanov
Smith, Martin, Erdos: Newtonian forms of prime factor matrices 
Erdos, Reisig: Stuttering in petri nets
Smith, Chen: First oder derivates in structured programming
Jablonski, Hsueh: Selfstabilizing data structures
',
        out => "Inf\n"
    },
);

my ( $in, $out, $err );
foreach my $testcase ( @testcases ) {
    open3( $in, $out, $err, 'perl golf.pl' );
    print $in $testcase->{in};
    close $in;
    is(join('',<$out>), $testcase->{out}, $testcase->{in});
}

done_testing();