package Schema::Commons::Vote::0_1_0::Result::CompetitionValidationOption;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('competition_validation_option');
__PACKAGE__->add_columns(
	'competition_validation_option_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'competition_validation_id' => {
		'data_type' => 'integer',
	},
	'validation_option_id' => {
		'data_type' => 'integer',
	},
	'value' => {
		'data_type' => 'text',
		'size' => 100,
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('competition_validation_option_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');
__PACKAGE__->belongs_to('competition_validation' => 'Schema::Commons::Vote::0_1_0::Result::CompetitionValidation', 'competition_validation_id');
__PACKAGE__->belongs_to('validation_option' => 'Schema::Commons::Vote::0_1_0::Result::ValidationOption', 'validation_option_id');

1;

__END__
