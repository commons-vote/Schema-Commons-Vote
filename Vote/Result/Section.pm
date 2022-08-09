package Schema::Commons::Vote::Result::Section;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('section');
__PACKAGE__->add_columns(
	'section_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'competition_id' => {
		'data_type' => 'integer',
	},
	'name' => {
		'data_type' => 'text',
		'size' => 255,
	},
	'logo' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'number_of_votes' => {
		'data_type' => 'integer',
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
__PACKAGE__->set_primary_key('section_id');
__PACKAGE__->belongs_to('competition' => 'Schema::Commons::Vote::Result::Competition', 'competition_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::Result::Person', 'created_by_id');
__PACKAGE__->has_many('section_images' => 'Schema::Commons::Vote::Result::SectionImage', 'section_id');
__PACKAGE__->has_many('section_categories' => 'Schema::Commons::Vote::Result::SectionCategory', 'section_id');

1;

__END__
