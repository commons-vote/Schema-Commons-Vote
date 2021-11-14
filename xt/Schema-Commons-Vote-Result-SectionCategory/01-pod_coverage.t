use strict;
use warnings;

use Test::NoWarnings;
use Test::Pod::Coverage 'tests' => 2;

# Test.
pod_coverage_ok('Schema::Commons::Vote::Result::SectionCategory', 'Schema::Commons::Vote::Result::SectionCategory is covered.');
