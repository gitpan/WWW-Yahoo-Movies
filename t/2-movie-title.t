#
#
# Test for case searching movie by its title
#
#

#########################

use Test::More qw(no_plan);
BEGIN { use_ok('WWW::Yahoo::Movies') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $ymovie = new WWW::Yahoo::Movies(id => 'Troy');
isa_ok($ymovie, 'WWW::Yahoo::Movies');
ok($ymovie->title eq 'Troy', 'Movie Title');
ok($ymovie->year == 2004, 'Production Date');
ok(scalar(@{$ymovie->matched}) == 10, 'Search Results');
