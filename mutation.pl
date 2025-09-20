# !/usr/bin/perl
use strict;
use warnings;

print "Enter nucleotide to mutate (A/T/G/C): ";
my $from = <STDIN>;
chomp($from);
die "Invalid nucleotide for mutation!\n" unless $from =~ /^[ATGC]$/i;

print "Enter new nucleotide (A/T/G/C): ";
my $to = <STDIN>;
chomp($to); 
unless ($to =~ /^[ATGC]$/i)
{
	die "Invalid nucleotide for mutation!\n";
}

(my $mut_seq1 = $seq1) =~ s/$from/$to/gi;

print "\nOriginal Sequence 1: $seq1\n";
print "\nMutated Sequence 1: $mut_seq1\n";