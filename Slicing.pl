#Slicing ---> Syntax: @<Array name>[..]
@colors=("#0000","#1111","green","blue","red");
print "@colors[2..4]\n";
print "@colors[$#array-2..$#array]\n";

#Splice ---> Syntax: splice(@<Array name>,OFFSET, Length,List)

#Replace elements
@marks=(23,34,56,88,87,46);
splice(@marks,2,3,97..100);
print "@marks\n";

splice(@colors,1,2,"cyan","magenta");
print "@colors\n";

#Remove elements from last
@last=splice(@marks,-3);
print "@marks\n";

#Split ---> Syntax: split("delimiter",<String>)
$languages="Perl=Python=Java=Unix=DNS";
@language=split("=",$languages);
print "Languages: @language\n";

#Join ---> Syntax: join("delimiter",@<Array name>)
$languages=join("|",@language);
print "$languages\n";

#Sort ---> Syntax:sort(@<Array name>)
#happen base on ASCII value
@languages=("Perl","Python","Java","Unix","DNS");
@languages=sort(@languages);
print "Languages: @languages\n";

@array = (1,2,4,25,3,36);
@array = sort(@array);
print "Numbers: @array\n";

=begin
#$[: ---> modify the first index number of an array
$[=2;
print "@languages[3]\n";
=cut

#Merging ---> Syntax: (@<Array 1>,@<Array 2>)
@arr1=(1..5);
@arr2=(6..9);
@arr=(@arr1,@arr2);
print "@arr1\n";
print "@arr2\n";
print "@arr\n";

@languages=("Python","Perl","Java");
print "@languages\n";
#push- insert the last element
push(@languages,"Add");
print"@languages\n";
#pop- remove the last element
pop(@languages);
print"@languages\n";
#shift- remove the first element
shift(@languages);
print"@languages\n";
#unshift- add the first element
unshift(@languages,"Begin");
print"@languages\n";