=begin
my @skills=("Perl","Python","Java","Unx","Shell");
if($skills[-1] eq "Shell")
{
	print "If Statement true\n";
}
elsif($skills[0] eq "Perl")
{
	print "ifelsif Statement true\n";
}
else
{
	print "Else true\n";
}

if($skills[0] eq "Perl")
{
	if($skills[-1] eq "Shell")
	{
		print "Both statements are True\n";
	}
}

unless(scalar @skills == 5)
{
	print "Condition is false\n";
}
elsif($skills[0] eq "Perl")
{
	print "skills[0] element is '$skills[0]'";
}
else
{
	print "Done!!\n";
}
=cut


#Exercise
#1.
print "Enter a number: ";
my $num1 = <STDIN>;
chomp($num1);
if($num1 % 2 == 0)
{
	print "Even number\n";
}
else
{
	print "Odd number\n";
}


#2.
print "Enter the marks: ";
my $mark = <STDIN>;
chomp($mark);
if($mark >= 50)
{
	print "Pass\n";
}
else
{
	print "Fail\n";
}


#3.
print "Enter a number: ";
my $num2 = <STDIN>;
chomp($num2);
unless($num3 < 0)
{
	print "Positive number\n";
}
else
{
	print "Negative number\n";
}


#4.
print "Enter a number: ";
my $num3 = <STDIN>;
chomp($num3);
if($num3 < 30)
{
	print "Low\n";
}
elsif(30<=$num3<=69)
{
	print "Medium\n";
}
else
{
	print "High\n";
}


#5.
print "Enter a string: ";
my $string = <STDIN>;
chomp($string);
unless($string eq "")
{
	print"Not empty\n";
}
else
{
	print"Empty String\n";
}

#or

print "Enter a string: ";
my $str = <STDIN>;
chomp($str);
unless(length($str) == 0)
{
	print"Not empty\n";
}
else
{
	print"Empty String\n";
}


#6.
print "Enter your age: ";
my $age = <STDIN>;
chomp($age);
if($age >= 18)
{
	print "Do yo hava ID: ";
	my $id = <STDIN>;
	chomp($id);
	unless($id eq "yes")
	{
		print "No ID\n";
	}
	else
	{
		print "Entry allowed\n";
	}
}
else
{
	print "Too young\n";
}


#7.
print "Enter your username: ";
my $username = <STDIN>;
chomp($username);
print "Enter your password: ";
my $password = <STDIN>;
chomp($password);
unless($username eq "admin" && $password eq "1234")
{
	if($username eq "admin" || $password eq "1234")
	{
		print "Missing credentials\n";
	}
	else
	{
		print "Access denied\n";
	}
}
else
{
	print "Access granted\n";
}