use strict;
use warnings;

use Schema::Commons::Vote::Result::UserLogin;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::Result::UserLogin::VERSION, 0.01, 'Version.');
