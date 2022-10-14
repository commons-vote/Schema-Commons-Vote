package Schema::Commons::Vote::0_1_0::Result::Log;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('log');
__PACKAGE__->add_columns(
	'log_id' => {
		'data_type' => 'integer',
		'is_auto_increment' => 1,
	},
	'log_type_id' => {
		'data_type' => 'integer',
	},
	'competition_id' => {
		'data_type' => 'integer',
	},
	'log' => {
		'data_type' => 'text',
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('log_id');
__PACKAGE__->belongs_to('competition' => 'Schema::Commons::Vote::0_1_0::Result::Competition', 'competition_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');
__PACKAGE__->belongs_to('log_type' => 'Schema::Commons::Vote::0_1_0::Result::LogType', 'log_type_id');

1;

__END__
