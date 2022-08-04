package Schema::Commons::Vote::Result::PersonRole;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('person_role');
__PACKAGE__->add_columns(
	'person_id' => {
		'data_type' => 'integer',
	},
	'role_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('person_id', 'role_id');
__PACKAGE__->belongs_to('person' => 'Schema::Commons::Vote::Result::Person', 'person_id');
__PACKAGE__->belongs_to('role' => 'Schema::Commons::Vote::Result::Role', 'role_id');

1;

__END__
