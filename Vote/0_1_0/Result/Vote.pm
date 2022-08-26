package Schema::Commons::Vote::0_1_0::Result::Vote;

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
	'vote_type_id' => {
		'data_type' => 'integer',
	},
	'vote_value' => {
		'data_type' => 'decimal',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('image_id', 'person_id', 'vote_type_id');
__PACKAGE__->belongs_to('image' => 'Schema::Commons::Vote::0_1_0::Result::Image', 'image_id');
__PACKAGE__->belongs_to('person' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'person_id');
__PACKAGE__->belongs_to('vote_type' => 'Schema::Commons::Vote::0_1_0::Result::VoteType', 'vote_type_id');

1;

__END__
