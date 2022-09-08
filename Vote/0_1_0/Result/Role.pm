package Schema::Commons::Vote::0_1_0::Result::Role;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('role');
__PACKAGE__->add_columns(
	'role_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'name' => {
		'data_type' => 'text',
		'size' => 30,
	},
	'description' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('role_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');

1;

__END__
