package Schema::Commons::Vote::Result::Vote;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('vote');
__PACKAGE__->add_columns(
	'image_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'person_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('image_id', 'person_id');
__PACKAGE__->belongs_to('image' => 'Schema::Commons::Vote::Result::Image', 'image_id');
__PACKAGE__->belongs_to('person' => 'Schema::Commons::Vote::Result::Person', 'person_id');

1;

__END__
