package Schema::Commons::Vote::Result::SectionImage;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('section_image');
__PACKAGE__->add_columns(
	'section_id' => {
		'data_type' => 'integer',
	},
	'image_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('section_id', 'image_id');
__PACKAGE__->belongs_to('section' => 'Schema::Commons::Vote::Result::Section', 'section_id');
__PACKAGE__->belongs_to('image' => 'Schema::Commons::Vote::Result::Image', 'image_id');

1;

__END__
