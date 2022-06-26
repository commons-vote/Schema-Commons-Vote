use strict;
use warnings;

use Schema::Commons::Vote::Result::PersonLogin;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::Result::PersonLogin::VERSION, 0.01, 'Version.');
