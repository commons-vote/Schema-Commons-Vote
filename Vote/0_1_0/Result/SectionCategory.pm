package Schema::Commons::Vote::0_1_0::Result::SectionCategory;

use base qw(DBIx::Class::Core);
use strict;
use warnings;

our $VERSION = 0.01;

__PACKAGE__->load_components('InflateColumn::DateTime');
__PACKAGE__->table('section_category');
__PACKAGE__->add_columns(
	'section_id' => {
		'data_type' => 'integer',
	},
	'category' => {
		'data_type' => 'text',
		'size' => '255',
	},
	'created_by_id' => {
		'data_type' => 'integer',
	},
	'created_at' => {
		'data_type' => 'datetime',
		'default_value' => 'CURRENT_TIMESTAMP',
	},
);
__PACKAGE__->set_primary_key('section_id', 'category');
__PACKAGE__->belongs_to('section' => 'Schema::Commons::Vote::0_1_0::Result::Section', 'section_id');
__PACKAGE__->belongs_to('created_by' => 'Schema::Commons::Vote::0_1_0::Result::Person', 'created_by_id');

1;

__END__
