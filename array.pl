@arr = ("One", "Two", "Three");
print "$arr[0]\n";
print "@arr\n";

@array = qw (abcd);
print "@array\n";
@array = qw (a b c d);
print "@array\n";
@array = qw (a, b, c, d);
print "@array\n";

@ages = (2, 3, 4);
@names = ("Raja", "John", "Kumar");
print "\$ages[0] = $ages[0]\n";
print "\$names[2] = $names[2]\n";
print '$names[2] = ',  $names[2];
print "\n";

@days = qw(mon tue wed thu fri sat sun);
@num = qw/1 2 3 4/;
print "@days\n";
print "@num\n";

my @year;
$year[0] = 2009;
$year[1] = 2010;
print "$year[0]\n";

#array size or length
@array = (1, 2, 3);
print "Size: ",scalar @array,"\n";
print "Size: ",($#array+1),"\n";
$size = @array;
print "Size: $size\n";

#Exercise
@languages = ("Python", "Perl", "Java", "C#", "C++", "Ruby");
	#print the last index
	print "$languages[-1]\n";
	#print the first index
	print "$languages[0]\n";
	#print from 2nd index to 5th index
	print "@languages[2..5]\n";
