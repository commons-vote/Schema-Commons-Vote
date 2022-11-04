package Schema::Commons::Vote::0_1_0::Result::CompetitionVoting;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('competition_voting');
__PACKAGE__->add_columns(
	'competition_voting_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'competition_id' => {
		'data_type' => 'integer',
	},
	'voting_type_id' => {
		'data_type' => 'integer',
	},
	'date_from' => {
		'data_type' => 'datetime',
	},
	'date_to' => {
		'data_type' => 'datetime',
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
__PACKAGE__->set_primary_key('competition_voting_id');
__PACKAGE__->add_unique_constraint(
	'competition_voting_unique_key' => ['competition_id', 'voting_type_id'],
);
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');
__PACKAGE__->belongs_to('competition' => 'Schema::Commons::Vote::0_1_0::Result::Competition', 'competition_id');
__PACKAGE__->belongs_to('voting_type' => 'Schema::Commons::Vote::0_1_0::Result::VotingType', 'voting_type_id');
__PACKAGE__->has_many('vote' => 'Schema::Commons::Vote::0_1_0::Result::Vote', 'competition_voting_id');

1;

__END__
