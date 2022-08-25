use strict;
use warnings;

use Schema::Commons::Vote::0_1_0::Result::Section;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::0_1_0::Result::Section::VERSION, 0.01, 'Version.');
