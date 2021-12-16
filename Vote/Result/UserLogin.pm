package Schema::Commons::Vote::Result::UserLogin;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->table('user_login');
__PACKAGE__->add_columns(
	'user_id' => {
		'data_type' => 'integer',
	},
	'login' => {
		'data_type' => 'text',
		'size' => 255,
	},
	'password' => {
		'data_type' => 'text',
		'size' => 255,
	},
	'hash_type_id' => {
		'data_type' => 'text',
		'size' => 255,
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->belongs_to('hash_type' => 'Schema::Commons::Vote::Result::HashType', 'hash_type_id');
__PACKAGE__->belongs_to('user' => 'Schema::Commons::Vote::Result::User', 'user_id');

1;

__END__
