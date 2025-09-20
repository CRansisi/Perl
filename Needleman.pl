print "Enter 1st sequence: ";
$seq1 = <STDIN>;
chomp($seq1);

print "Enter 2nd sequence: ";
$seq2 = <STDIN>;
chomp($seq2);

if($seq1 !~ /^[ATGC]+$/i || $seq2 !~ /^[ATGC]+$/i)
{
	die "Invalid nucleotide! Please enter only A, T, G, C";
}

print "Enter the match value: ";
$match = <STDIN>;
chomp($match);

print "Enter the mismatch value: ";
$mismatch = <STDIN>;
chomp($mismatch);

print "Enter the gap value: ";
$gap = <STDIN>;
chomp($gap);

my @array;
$array[0][0]=0;
for(my $i=1; $i<=length($seq1); $i++)   #row
{
	$array[$i][0] = $array[$i-1][0] + $gap;
}
for(my $j=1; $j<=length($seq2); $j++)  #column
{
	$array[0][$j] = $array[0][$j-1] + $gap;
}

sub max
{
	my ($a, $b, $c) = @_;   #assign max funtion element 
	return ($a > $b) ? (($a > $c) ? $a : $c) : (($b > $c) ? $b : $c); # '?'-if true ':'-else
}

for (my $i=1; $i<=length($seq1); $i++)
{
	for(my $j=1; $j<=length($seq2); $j++)
	{
		my $base1 = substr($seq1, $i-1, 1); #read one by one element
		my $base2 = substr($seq2, $j-1, 1);
		
		my $diag = $array[$i-1][$j-1] + ($base1 eq $base2 ? $match : $mismatch);
		my $up = $array[$i-1][$j] + $gap;   
		my $left = $array[$i][$j-1] + $gap;
		
		$array[$i][$j] = max($diag, $up, $left);
	}
}

#READ AND PRINT THE MATRIX
print "\nDP Matrix:\n";
for my $i (0..length($seq1))   
{
	for my $j (0..length($seq2))
	{
		printf "%4d", $array[$i][$j];
	}
	print "\n";
}

#TRACEBACK
my $i = length($seq1);
my $j = length($seq2);
my $align1 = "";  # we need tow empty sequence
my $align2 = "";

while ($i > 0 || $j > 0)
{
	my $score = $array[$i][$j];
	
	#Diagonal (match/mismatch)
	if($i > 0 && $j > 0)
	{
		my $base1 = substr($seq1, $i-1, 1);
		my $base2 = substr($seq2, $j-1, 1);
		my $diag_score = $array[$i-1][$j-1] + ($base1 eq $base2 ? $match : $mismatch);
		
		if($score == $diag_score)
		{
			$align1 = $base1 . $align1;  #'.' mean append a string
			$align2 = $base2 . $align2;
			$i--; $j--;
			next; # check another condition, same as continue
		}
	}
	
	#From top(gap in seq2)
	if($i > 0 && $score == $array[$i-1][$j] + $gap)
	{
		my $base1 = substr($seq1, $i-1, 1);
		$align1 = $base1 . $align1;
		$align2 = "-" . $align2;
		$i--;
		next;
	}
	#From left(gap in seq2)
	if($j > 0 && $score == $array[$i][$j-1] + $gap)
	{
		my $base2 = substr($seq2, $j-1, 1);
		$align1 = "-" . $align1;
		$align2 = $base2. $align2;
		$j--;
		next;
	}
}
print"$align1\n";
print"$align2\n";

# Find score value

# my $m = 0;
# my $s = 0;
# my $g = 0;

# for(my $i=0; $i<length($seq1); $i++)
# {
	# if(substr($seq1,$i,1) eq substr($seq2,$i,1))
	# {
		# $m++;
	# }
	# elsif(substr($seq1,$i,1) !~ substr($seq2,$i,1))
	# {
		# $s++;
	# }
	# else
	# {
		# $g++;
	# }
# }
# my $f = ($m*$matches) + ($s*$mismatches) + ($g*$gap);

# print "Score = $f\n";