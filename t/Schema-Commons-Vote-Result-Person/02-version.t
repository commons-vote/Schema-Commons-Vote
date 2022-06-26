use strict;
use warnings;

use Schema::Commons::Vote::Result::Person;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::Result::Person::VERSION, 0.01, 'Version.');
