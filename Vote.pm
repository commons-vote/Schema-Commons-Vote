package Schema::Commons::Vote;

use base qw(Schema::Abstract);
use strict;
use warnings;

use File::Share ':all';

our $VERSION = 0.01;

sub _versions_file {
	my $self = shift;

	my $versions_file = dist_file('Schema-Commons-Vote', 'versions.txt');

	return $versions_file;
}

1;

__END__
