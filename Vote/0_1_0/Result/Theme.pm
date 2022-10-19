package Schema::Commons::Vote::0_1_0::Result::Theme;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('theme');
__PACKAGE__->add_columns(
	'theme_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'name' => {
		'data_type' => 'text',
		'size' => 255,
	},
	'shortcut' => {
		'data_type' => 'text',
		'size' => 10,
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('theme_id');
__PACKAGE__->add_unique_constraint(
	'theme_shortcut_unique_key' => ['shortcut'],
);
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');
__PACKAGE__->has_many('theme_images' => 'Schema::Commons::Vote::0_1_0::Result::ThemeImage', 'theme_id');

1;

__END__
