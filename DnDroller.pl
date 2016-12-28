#!/usr/bin/env perl

-n
($d,$s,$=)=split/d|\+/;$=+=1+rand $s for 1..$d;print$=,$/