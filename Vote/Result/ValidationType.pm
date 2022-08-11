package Schema::Commons::Vote::Result::ValidationType;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('validation_type');
__PACKAGE__->add_columns(
	'validation_type_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'type' => {
		'data_type' => 'text',
		'size' => 30,
	},
	'description' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('validation_type_id');

1;

__END__
