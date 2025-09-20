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
	$array[$i][0] = 0;
}
for(my $j=1; $j<=length($seq2); $j++)  #column
{
	$array[0][$j] = 0;
}

sub max
{
	# my (@vals) = @_;
	# my $m = $vals[0];
	# for my $v (@vals)
	# {
		# $m =
	# }
	my ($a, $b, $c) = @_;   #assign max funtion element 
	return ($a > $b) ? (($a > $c) ? $a : $c) : (($c > $b) ? $c : $b); # '?'-if true ':'-else
	# if($max < 0)
	# {
		# return 0;
	# }
	# return $max;
	# my ($a, $b, $c, $d) = @_;
	# return ($a > $b) ? (($a > $c) ? (($a > $d) ? $a : $d) : (($c > $d) ? $c : $d)) : (($b > $c) ? (($b > $d) ? $b : $d) : (($c > $d) ? $c : $d));
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
		#my $d = 0;
		
		$array[$i][$j] = max($diag, $up, $left);
		#$array[$i][$j] = max($diag, $up, $left, $d);
		if($array[$i][$j] < 0)
		{
			$array[$i][$j] = 0;
		}
		else
		{
			$array[$i][$j] = max($diag, $up, $left);
		}
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
		my $score_diag = $array[$i-1][$j-1];
		my $score_up = $array[$i-1][$j];
		my $score_left = $array[$i][$j-1];
		
		my $base1 = substr($seq1, $i-1, 1);
		my $base2 = substr($seq2, $j-1, 1);

		if($score == $diag_score + ($base1 eq $base2 ? $match : $mismatch)
		{
			$align1 = $base1 . $align1;  #'.' mean append a string
			$align2 = $base2 . $align2;
			$i--; $j--;
			#next; # check another condition, same as continue
		}
		# elsif ($score == $score_up + $gap)
		# {
			# $align1 = substr ($seq1, $i-1, 1) . $align1;
			# $align2 = "-" . $align2;
			# $i--;
		# }
		# elsif($score == $score_left + $gap )
		# {
			# $align2 = substr ($seq1, $i-1, 1) . $align2;
			# $align1 = "-" . $align1;
			# $i--;
		# }
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