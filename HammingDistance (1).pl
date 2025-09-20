=begin
print "Enter sequence1: ";
$seq1 = <STDIN>;
chomp($seq1);

print "Enter sequence2: ";
$seq2 = <STDIN>;
chomp($seq2);

if($seq1 !~ /^[ATGC]+$/i || $seq2 !~ /^[ATGC]+$/i)
{
	die "Invalid nucleotide! Please enter only A, T, G, or C.\n";
}

if(length($seq1) eq length($seq2))
{
	for(my $i=0; $i<length($seq1); $i++)
	{
		unless(substr($seq1,$i,1) eq substr($seq2,$i,1))
		{
			$count++;
		}
	}
	print "Hamming Distance = $count";
}

print "\n";


#Exercise
print "Enter the 1st sequense: ";
$s1 = <STDIN>;
chomp($s1);

print "Enter the 2nd sequense: ";
$s2 = <STDIN>;
chomp($s2);

if($s1 !~ /^[ATGC]+$/i || $s2 !~ /^[ATGC]+$/i)
{
	die "Invalid nucleotide! Please enter only A, T, G, or C.\n";
}

if(length($s1) !~ length($s2))
{
	print "Reject";
}
else
{
	for(my $i=0; $i<length($s1); $i++)
	{
		if(substr($s1,$i,1) eq substr($s2,$i,1))
		{
			$matches++;
		}
		else
		{
			$mismatches++;
		}
	}
	$f = (1*$matches) + (-1*$mismatches);
}
print "Score = $f";
=cut

print "Enter the 1st sequense: ";
$s1 = <STDIN>;
chomp($s1);

print "Enter the 2nd sequense: ";
$s2 = <STDIN>;
chomp($s2);

if($s1 !~ /^[ATGC]+$/i || $s2 !~ /^[ATGC]+$/i)
{
	die "Invalid nucleotide! Please enter only A, T, G, or C.\n";
}

print "Enter match : ";
$m = <STDIN>;
chomp($m);

print "Enter match : ";
$s = <STDIN>;
chomp($s);

print "Enter match : ";
$g = <STDIN>;
chomp($g);
my $matches = 0;
my $mismatches = 0;
my $gap = 0;

if($s1 !~ /^[ATGC]+$/i || $s2 !~ /^[ATGC]+$/i)
{
	die "Invalid nucleotide! Please enter only A, T, G, or C.\n";
}
else
{
	for(my $i=0; $i<length($s1); $i++)
	{
		if((substr($s1,$i,1) eq "_") or (substr($s2,$i,1) eq "_"))
		{
			$gap++;
		}
		elsif(substr($s1,$i,1) !~ substr($s2,$i,1))
		{
			$mismatches++;
		}
		else
		{
			$matches++;
		}
	}
	$f = ($m*$matches) + ($s*$mismatches) + ($g*$gap);
}
print "Score = $f\n";
print "Matches = $matches\n";
print "Miss matches = $mismatches\n";
print "Gap = $gap\n";