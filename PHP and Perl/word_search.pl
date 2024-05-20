#!/usr/bin/perl

use strict;
use warnings;

if (@ARGV != 2) {
    die "Usage: perl search_perl.pl <input_file> <word>\n";
}

my $input_file = $ARGV[0];
open(my $fh, '<', $input_file) or die "Cannot open file '$input_file' $!";

my $combined_text = do { local $/; <$fh> };

$combined_text = lc($combined_text);

$combined_text =~ s/[^a-z]+//g;

print "Converted and combined sentence: $combined_text\n";

my $reversed_text = reverse($combined_text);

print "Reversed words: $reversed_text\n";

# Get the word to search for
my $word = $ARGV[1];

# Count the number of occurrences of the word in the reversed string
my $count = () = $reversed_text =~ /\Q$word\E/g;

# Output the result
print "Matches of \"$word\": $count\n";
