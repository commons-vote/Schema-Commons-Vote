package Schema::Commons::Vote::0_1_0::Result::ValidationOption;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('validation_option');
__PACKAGE__->add_columns(
	'validation_option_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'validation_type_id' => {
		'data_type' => 'integer',
	},
	'option' => {
		'data_type' => 'text',
		'size' => 30,
	},
	'option_type' => {
		'data_type' => 'text',
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
__PACKAGE__->set_primary_key('validation_option_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');
__PACKAGE__->belongs_to('validation_type' => 'Schema::Commons::Vote::0_1_0::Result::ValidationType', 'validation_type_id');

1;

__END__
