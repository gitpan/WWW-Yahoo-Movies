#
# Test for case if id of movie is existing
#

###########################################

use Test::More qw(no_plan);
BEGIN { use_ok('WWW::Yahoo::Movies') };

###########################################

my $ymovie = new WWW::Yahoo::Movies(id => '1808444810');
isa_ok($ymovie, 'WWW::Yahoo::Movies');

ok($ymovie->title eq 'Troy', 'Movie Title');
ok($ymovie->year == 2004, 'Production Date');
ok($ymovie->runtime eq '2 hrs. 42 min.', 'Run Time');
ok($ymovie->distributor eq 'Warner Bros.', 'Disrtibutor');
ok($ymovie->mpaa_rating eq 'R for graphic violence and some sexuality/nudity.', 'MPAA Rating');
ok($ymovie->cover_file eq 'troy_dvdcover.jpg', 'Cover File');
like($ymovie->release_date, qr/May 14th, 2004/, 'Release Date');

is_deeply($ymovie->genres, ['Action', 'Adventure'], 'Genres');
