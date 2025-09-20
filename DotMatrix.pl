print "Enter first sequance: ";
$seq1 = <STDIN>;
chomp($seq1);

print "Enter second sequance: ";
$seq2 = <STDIN>;
chomp($seq2);

if($seq1 !~ /^[ATGC]+$/i || $seq2 !~ /^[ATGC]+$/i)
{
	die "Invalid nucleotide! Please enter only A, T, G, C";
}
my @array;
# $array[0][0]=0;
# for(my $i=1; $i<=length($seq1); $i++)   #row
# {
	# $array[$i][0] = "*";
# }
# for(my $j=1; $j<=length($seq2); $j++)  #column
# {
	# $array[0][$j] = "*";
# }

for (my $i=1; $i<=length($seq1); $i++)
{
	for(my $j=1; $j<=length($seq2); $j++)
	{
		my $base1 = substr($seq1, $i-1, 1); #read one by one element
		my $base2 = substr($seq2, $j-1, 1);
		
		if($base1 == $base2)
		{
			$array[$i][$j] = "*";
		}
		else
		{
			$array[$i][$j] = 0;
		}
	}
}

print "\nDP Matrix:\n";
for my $i (0..length($seq1))   
{
	for my $j (0..length($seq2))
	{
		printf "%4d", $array[$i][$j];
	}
	print "\n";
}
