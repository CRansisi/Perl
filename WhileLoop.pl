#while loop
my $i=1;
while($i<5)
{
	print "$i";
	$i++;
}
print"\n";

#do while loop
my $i=10;
do
{
	print "$i";
	$i++;
}
while($i<5);
print "\n";

#until --->  if the condition is false that part is execute(like unless)
my $i=1;
until($i>3)
{
	print "$i";
	$i++;
}
print "\n";

for(my $i=1; $i<=3; $i++)
{
	my $j=1;
	until($j>2)
	{
		print "i=$i, j=$j\n";
		$j++;
	}
}
print "\n";