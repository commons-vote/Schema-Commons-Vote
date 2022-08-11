use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Schema::Commons::Vote::Result::ValidationType', 'Schema::Commons::Vote::Result::ValidationType is covered.');
