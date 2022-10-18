package Schema::Commons::Vote::0_1_0::Result::ThemeImage;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('theme_image');
__PACKAGE__->add_columns(
	'theme_id' => {
		'data_type' => 'integer',
	},
	'image_id' => {
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
__PACKAGE__->set_primary_key('theme_id', 'image_id');
__PACKAGE__->belongs_to('theme' => 'Schema::Commons::Vote::0_1_0::Result::Theme', 'theme_id');
__PACKAGE__->belongs_to('image' => 'Schema::Commons::Vote::0_1_0::Result::Image', 'image_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');

1;

__END__
