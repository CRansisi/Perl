=begin
#Hashing ---> %<HashName>=(key1=>value1,key2=>value2);
#The % symbol is used to create a hash
%Experience = ("Perl"=>5,"Java"=>1,"Python"=>2);
print %Experience,"\n";

#Accessing value from a key ---> $<HashName>{<key>}
print $Experience{"Perl"},"\n";

#Extract value into an array ---> keys%<HashName>
@ExperienceKey = keys%Experience;
print "Keys: @ExperienceKey\n";

#Extract values into an array ---> values%<HashName>
@ExperienceValues = values%Experience;
print "Values: @ExperienceValues\n";

#Exists() function
if(exists($Experience{"Perl"}))
{
	print "Exist!!\n";
}
else
{
	print "Not Exist!!\n";
}

#Hash size
@Experiencevalues = values%Experience;
print scalar @Experiencevalues,"\n";

$size = @Experiencevalues;
print "Size: $size\n";

print "Size: ",($#Experiencevalues+1),"\n";

#Adding key value pair ---> $<HashName>{<key>}=<value>
$Experience{"Oracle"}=2;
print %Experience,"\n";

#Deleting a pair ---> delete $<HashName>{<key>}
delete $Experience{"Oracle"};
print %Experience,"\n";
=cut

#Exercise
%Scores = ("Math"=>85,"Science"=>90,"History"=>78);
print "Science = ",$Scores{'Science'},"\n";

%Languages = ("Perl"=>5,"Java"=>1,"Pthon"=>2);
@LanguagesKey = keys%Languages;
print "Keys: @LanguagesKey\n";
@LanguagesValue = values%Languages;
print "Values: @LanguagesValue\n";

@LanguagesKey = keys%Languages;
print "Size of keys: ",scalar @LanguagesKey,"\n";
$size = @LanguagesKey;
print "Size of keys: $size\n";
print "Size: ",($#LanguagesKey+1),"\n";

$Languages{"C"}=3;
print %Languages,"\n";

delete $Languages{"Java"};
print %Languages,"\n";