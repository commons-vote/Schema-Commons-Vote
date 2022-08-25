use strict;
use warnings;

use Test::More 'tests' => 3;
use Test::NoWarnings;

BEGIN {

	# Test.
	use_ok('Schema::Commons::Vote::0_1_0');
}

# Test.
require_ok('Schema::Commons::Vote::0_1_0');
