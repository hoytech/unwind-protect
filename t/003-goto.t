use strict;
use Test::More tests => 1;
use Unwind::Protect;

unwind_protect {
  goto ESCAPE;
} after => sub {
  ok(1, "unwind sub called");
};

ESCAPE:
