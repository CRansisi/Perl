#01.
my %marks = ("Alice"=>45, "Bob"=>78, "Cara"=>62, "Dave"=>30);
foreach (keys%marks)
{
	if($marks{$_} > 50)
	{
		print "$_\n";
	}
}

#02.
do
{
	print "Enter the password: ";
	$password = <STDIN>;
	chomp($password);
}
while($password ne "perl123");

#03.
my %items=("Pen"=>25, "Notebook"=>80, "Pencil"=>15, "Eraser"=>10);
foreach(keys%items)
{
	$sum = $sum + $items{$_};
}
print "Total = $sum";