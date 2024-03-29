package Schema::Commons::Vote::0_1_0::Result::Competition;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('competition');
__PACKAGE__->add_columns(
	'competition_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
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
	'organizer' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'organizer_logo' => {
		'data_type' => 'text',
		'size' => 255,
		'is_nullable' => 1,
	},
	'images_loaded_at' => {
		'data_type' => 'datetime',
		'is_nullable' => 1,
	},
	'wd_qid' => {
		'data_type' => 'text',
		'size' => 30,
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
__PACKAGE__->set_primary_key('competition_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');
__PACKAGE__->has_many('person_roles' => 'Schema::Commons::Vote::0_1_0::Result::PersonRole', 'competition_id');
__PACKAGE__->has_many('sections' => 'Schema::Commons::Vote::0_1_0::Result::Section', 'competition_id');

1;

__END__
