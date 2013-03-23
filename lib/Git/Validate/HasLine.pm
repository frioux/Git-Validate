package Git::Validate::HasLine;

use Moo::Role;

has line => (
   is => 'ro',
   required => 1,
);

has line_number => (
   is => 'ro',
   required => 1,
);

1;
