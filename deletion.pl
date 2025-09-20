# !/usr/bin/perl
use strict;
use warnings;

print "Enter first DNA sequence: ";
my $seq1 = <STDIN>;
chomp($seq1);
if($seq1 !~ /^[ATGC]+$/i)
{
	die "Invalid nucleotide! Please enter only A, T, G, or C.\n";
}

print "Enter nucleotide to delete (A/T/G/C): ";
my $del = <STDIN>;
chomp($del);

if ($del !~ /^[ATGC]$/i)
{
	die "Invalid nucleotide! please enter only A, T, G, or C.\n";
}

(my $new_seq1 = $seq1) =~ s/$del//gi;

print "\nOriginal Sequence 1: $seq1\n";
print "\nDelection Sequence 1: $new_seq1\n";