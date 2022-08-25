use strict;
use warnings;

use Schema::Commons::Vote::0_1_0::Result::ValidationType;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::0_1_0::Result::ValidationType::VERSION, 0.01, 'Version.');
