use strict;
use warnings;

use Schema::Commons::Vote::Result::PersonRole;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::Result::PersonRole::VERSION, 0.01, 'Version.');
