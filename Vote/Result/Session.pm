package Schema::Commons::Vote::Result::Session;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('session');
__PACKAGE__->add_columns(
	'session_id' => {
		'data_type' => 'integer',
		'size' => 40,
	},
	'data' => {
		'data_type' => 'text',
		'size' => 400,
	},
	'timestamp' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('session_id');

1;

__END__
