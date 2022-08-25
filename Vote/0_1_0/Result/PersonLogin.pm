package Schema::Commons::Vote::0_1_0::Result::PersonLogin;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('person_login');
__PACKAGE__->add_columns(
	'person_id' => {
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
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->belongs_to('hash_type' => 'Schema::Commons::Vote::Result::HashType', 'hash_type_id');
__PACKAGE__->belongs_to('person' => 'Schema::Commons::Vote::Result::Person', 'person_id');

1;

__END__
