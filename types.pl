#print hello world
print "Hello, world\n";
print "Hello, world!\n";
print "Hello, PERL!\n";

#another way to print hello world in cmd: 
#perl -e "print'Hello world'";

#check version: perl -v

use feature 'say';
say "\nHello world!";
say "Hello PERL!\n";

#Scalar

#my
my $num;
my $total = $num + 5;
print "Total: $total\n";

use strict;
# $name = "Alice"; ---> error! Not declared with 'my'
my $name = "Alice";
print "Hello, $name\n\n";

#multipal comment
=begin comment
my $num;
my $total = $num + 5;
print "Total: $total\n";
=cut

#joining two strings into one
my $first = "Hello";
my $second = "World";
my $message = $first." ".$second;
print "$message\n\n";


my $dogma = "Once information gets into protein";
print "1: $dogma\n";
# '.' text concatenation operator
$dogma = $dogma. "it cannot get out again";
print "2: $dogma\n";
$dogma = "DNA makes RNA makes Protein";
print "3: $dogma\n\n";

#Single quotes
my $name = "Alice";
print 'My name is $name\n';
print "\n";

#Double quotes
my $name = "Alice";
print "My name is $name\n";
print "\n";

my $word = "Elephant";
#length of the word
print length($word);
print "\n";
#Convert to lowercase
print lc($word);
print "\n";
#Convert to uppercase
print uc($word);
print "\n\n";

my $prase = "Welcome";
#Convert to first letter to simple
print lcfirst($prase);
print "\n";
my $animal = "tiger";
#Convert to first letter to capital
print ucfirst($animal);
print "\n";
#get last letter
print chop($animal);
print "\n";
#print the word removing last letter
print "After chop: $animal\n";
print "\n";

my $string = "Banana";
#Find first occurence of substirng
print index($string,"a");
print "\n";
#Find last occurence of substirng
print rindex($string,"a");
print "\n";
#Extract part of string
print substr($string,1,2);
print "\n";

print "Enter your name: ";
my $name = <STDIN>;
chomp($name); #Remove newline character
print "Hello, $name!\n";