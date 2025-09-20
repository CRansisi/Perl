my %hash = (
	'MyVehicle' => 'Car',
	'Model' => 1234,
	'Speed' => 60.7);
	
foreach (keys%hash)
{
	print "Value of $_ is $hash{$_}\n";
}
print "\n";

my @skills=qw(Perl Python Unix);
#method 1 (Base on values)
foreach (@skills)
{
	print "$_\n";
}
print "\n";
#method 2(Using range operator)
foreach (0..$#skills)
{
	print "$skills[$_]\n";
}
print "\n";
#method 3(Using a range operator with an iterator)
foreach my $i (0..$#skills)
{
	print "$skills[$i]\n";
}
print "\n";
print ($#skills+1); #Size
print "\n";
print ($#skills); #last index