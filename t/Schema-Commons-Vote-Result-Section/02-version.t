use strict;
use warnings;

use Schema::Commons::Vote::Result::Section;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::Result::Section::VERSION, 0.01, 'Version.');
