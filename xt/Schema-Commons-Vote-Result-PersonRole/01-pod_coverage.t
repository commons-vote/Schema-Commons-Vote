use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Schema::Commons::Vote::Result::PersonRole', 'Schema::Commons::Vote::Result::PersonRole is covered.');
