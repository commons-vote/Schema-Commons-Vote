package Schema::Commons::Vote::Result::Person;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('person');
__PACKAGE__->add_columns(
	'person_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'email' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'name' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'wm_username' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'first_upload_at' => {
		'data_type' => 'datetime',
		'is_nullable' => 1,
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('person_id');
__PACKAGE__->add_unique_constraint(
	'person_wm_username_unique_key' => ['wm_username'],
);

1;

__END__
