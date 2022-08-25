use strict;
use warnings;

use Schema::Commons::Vote::0_1_0::Result::SectionImage;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Schema::Commons::Vote::0_1_0::Result::SectionImage::VERSION, 0.01, 'Version.');
