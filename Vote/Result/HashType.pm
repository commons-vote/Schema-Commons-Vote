package Schema::Commons::Vote::Result::HashType;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->table('hash_type');
__PACKAGE__->add_columns(
	'hash_type_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'name' => {
		'data_type' => 'text',
		'size' => 50,
	},
	'active' => {
		'data_type' => 'boolean',
	},
);
__PACKAGE__->set_primary_key('hash_type_id');
__PACKAGE__->add_unique_constraint(
	'hash_type_name_unique_key' => ['name'],
);

1;

__END__
