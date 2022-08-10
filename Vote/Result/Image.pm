package Schema::Commons::Vote::Result::Image;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('image');
__PACKAGE__->add_columns(
	'image_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'image' => {
		'data_type' => 'text',
		'size' => '255',
	},
	'uploader_id' => {
		'data_type' => 'integer',
	},
	'author' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'comment' => {
		'data_type' => 'text',
		'size' => 1000,
		'is_nullable' => 1,
	},
	'image_created' => {
		'data_type' => 'datetime',
	},
	'width' => {
		'data_type' => 'integer',
	},
	'height' => {
		'data_type' => 'integer',
	},
	'size' => {
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
__PACKAGE__->set_primary_key('image_id');
__PACKAGE__->add_unique_constraint(
	'image_image_unique_key' => ['image'],
);
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::Result::Person', 'created_by_id');
__PACKAGE__->belongs_to('uploader' => 'Schema::Commons::Vote::Result::Person', 'uploader_id');
__PACKAGE__->has_many('section' => 'Schema::Commons::Vote::Result::SectionImage', 'image_id');

1;

__END__
