package Schema::Commons::Vote::0_1_0::Result::Vote;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('vote');
__PACKAGE__->add_columns(
	'competition_voting_id' => {
		'data_type' => 'integer',
	},
	'image_id' => {
		'data_type' => 'integer',
	},
	'person_id' => {
		'data_type' => 'integer',
		# For anonymous voting.
		'is_nullable' => 1,
	},
	'vote_value' => {
		'data_type' => 'text',
		'size' => 50,
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->add_unique_constraint(
	'vote_unique_key' => ['competition_voting_id', 'image_id', 'person_id'],
);
__PACKAGE__->belongs_to('competition_voting' => 'Schema::Commons::Vote::0_1_0::Result::CompetitionVoting', 'competition_voting_id');
__PACKAGE__->belongs_to('image' => 'Schema::Commons::Vote::0_1_0::Result::Image', 'image_id');
__PACKAGE__->belongs_to('person' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'person_id');

1;

__END__
