#########################

use Test::More tests => 7;

BEGIN { use_ok('Audio::WMA') };

#########################

{
	my $wma = Audio::WMA->new('data/test1.wma');

	ok $wma;

	my $info = $wma->info();

	ok $info;

	ok($wma->info('max_bitrate') == 20000);

	ok($wma->info('playtime_seconds') == 16.91);

	my $comments = $wma->comment();

	ok $comments;

	is($wma->comment('title'), 'Upgrade Your Player');
}

__END__
