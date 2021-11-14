package Schema::Commons::Vote::Result::User;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->table('user');
__PACKAGE__->add_columns(
	'user_id' => {
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
__PACKAGE__->set_primary_key('user_id');
__PACKAGE__->add_unique_constraint(
	'wm_username_key' => ['wm_username'],
);

1;

__END__
