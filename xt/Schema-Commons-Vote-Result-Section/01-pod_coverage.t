use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Schema::Commons::Vote::Result::Section', 'Schema::Commons::Vote::Result::Section is covered.');
