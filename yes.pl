#!/usr/bin/env perl

use 5.014;

use Google::Search;

my $search = Google::Search->Web( query => "site:share.pdfonline.com 求職者編號" );
while ( my $result = $search->next ) {
    my $url = $result->uri;
    $url =~ s/htm$/pdf/;
    say $result->rank . " " . $url;
    # system("wget $url");
}

exit 0;

