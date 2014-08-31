#!/usr/bin/perl -0np
$i=$_;$_=unpack('%32W',$i);$o=length$i>249;s/\s*(^|$)\s*//mg;s/69/0/;s/83/1/;s/67/{2-$o}/e;s/73/Inf/;s/^$//;s/\s+//g;s/\s*\z\s*/\n/m