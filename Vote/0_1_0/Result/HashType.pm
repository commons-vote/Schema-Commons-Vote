package Schema::Commons::Vote::0_1_0::Result::HashType;

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
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('hash_type_id');
__PACKAGE__->add_unique_constraint(
	'hash_type_name_unique_key' => ['name'],
);
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');

1;

__END__
