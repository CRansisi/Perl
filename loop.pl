#for(intialization; condition; incrementing)
=begin
my @skills = ("Perl", "Python", "Java", "Unix", "Shell");
for(my $i=0; $i<5; $i++)
{
	print "$skills[$i]\n";
}

my%color_of=(
	apple => "red",
	orange => "orange",
	grape => "purple",
);

my @fruits = keys%color_of;
for my $fruit(@fruits)
{	
	print "The color of '$fruit' is $color_of{$fruit}\n";
}

for my $fruit(keys%color_of)
{
	print "The color of '$fruit' is $color_of{$fruit}\n";
}
=cut


#Exercise

for (my $i = 1; $i <= 3; $i++) 
{
	for (my $k = 3; $k >= $i; $k--)
	{
		print ' ';  
	}
    for (my $j = 1; $j <= $i; $j++) 
	{
        print "$j ";
    }
    print "\n";
}
for (my $i = 2; $i >= 1; $i--) 
{
    for (my $k = 3; $k >= $i; $k--)
	{
		print ' ';  
	}
    for (my $j = 1; $j <= $i; $j++) 
	{
        print "$j ";
    }
    print "\n";
}


for (my $i = 1; $i <= 4; $i++) 
{
    for (my $j = 1; $j <= 4; $j++) 
	{
        if ($i == 1 || $i == 4 || $j == 1 || $j == 4) 
		{
            print "*";
        } 
		else 
		{
            print " ";
        }
    }
    print "\n";
}


for (my $i = 1; $i <= 3; $i++) 
{
	for (my $k = 3; $k >= $i; $k--)
	{
		print ' ';  
	}
    for (my $j = 1; $j <= $i; $j++) 
	{
        print "* ";
    }
    print "\n";
}