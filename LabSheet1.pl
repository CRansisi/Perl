my $temperature = 32;
my $humidity = 75;
print "Temperature = $temperature \nHumidity = $humidity\n";

my $note = "Weather is nice today\n";
print ($note);

print "Enter the animal name: ";
my $animal = <STDIN>;
chomp($animal);
print lc($animal);
print "\n";
print uc($animal);
print "\n";
print lcfirst($animal);
print "\n";
print ucfirst($animal);
print "\n";
print length($animal);
print "\n";
print substr($animal, 1, 4);
print "\n";
print substr($animal, 5, 1);
print "\n";

my $string = "leopard";
my $newstring = substr($string, -1, 1);
print uc($newstring);
print "\n";

my $word = "WILLOW";
my $newword = substr($word, -1, 1);
print lc($newword);
print "\n";

my $name = "Falcon";
my $reversed =reverse($name);
print $reversed;
print "\n";

my $rword = "Cheetah";
print chop($rword);
print "\n";
print ($rword);
print "\n";

my $newline = "Panther\n";
chomp $newline;
print "$newline";