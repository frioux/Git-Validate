package Git::Validate::Error::MissingBreak;

use Moo;

use overload q("") => '_stringify';

with 'Git::Validate::HasLine';

has '+line_number' => ( default => 2 );

sub _stringify {
   sprintf 'line %d should be blank, instead it was "%s"',
      $_[0]->line_number, $_[0]->line
}

1;

