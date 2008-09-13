# $Id: 11pod_cover.t 78 2008-09-13 10:12:34Z cfaerber $

use strict;
use Test::More;

eval "use Test::Pod::Coverage;";
plan skip_all => "Test::Pod::Coverage required for testing POD coverage" if $@;

all_pod_coverage_ok( 'all modules are covered by POD' )
