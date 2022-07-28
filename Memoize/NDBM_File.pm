package Memoize::NDBM_File;

use NDBM_File;
@ISA = qw(NDBM_File);
$VERSION = '1.08';

# NDBM_File cannot store undef and will store an empty string if you try
# but it does return undef if you try to read a non-existent key
# so we can emulate exists() using defined()
sub EXISTS {
	defined shift->FETCH(@_);
}

1;

__END__

=pod

=head1 NAME

Memoize::NDBM_File - glue to provide EXISTS for NDBM_File for Storable use

=head1 DESCRIPTION

See L<Memoize>.

=cut
