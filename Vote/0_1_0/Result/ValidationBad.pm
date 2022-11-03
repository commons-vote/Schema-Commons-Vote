package Schema::Commons::Vote::0_1_0::Result::ValidationBad;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('validation_bad');
__PACKAGE__->add_columns(
	'competition_id' => {
		'data_type' => 'integer',
	},
	'image_id' => {
		'data_type' => 'integer',
	},
	'validation_type_id' => {
		'data_type' => 'integer',
	},
	'section_id' => {
		'data_type' => 'integer',
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->add_unique_constraint(
	'validation_bad_unique_key' => ['competition_id', 'image_id', 'validation_type_id', 'section_id'],
);
__PACKAGE__->belongs_to('competition' => 'Schema::Commons::Vote::0_1_0::Result::Competition', 'competition_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');
__PACKAGE__->belongs_to('image' => 'Schema::Commons::Vote::0_1_0::Result::Image', 'image_id');
__PACKAGE__->belongs_to('section' => 'Schema::Commons::Vote::0_1_0::Result::Section', 'section_id');
__PACKAGE__->belongs_to('validation_type' => 'Schema::Commons::Vote::0_1_0::Result::ValidationType', 'validation_type_id');

1;

__END__
