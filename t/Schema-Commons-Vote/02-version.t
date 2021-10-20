use strict;
use warnings;

use Schema::Commons::Vote;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::VERSION, 0.01, 'Version.');
