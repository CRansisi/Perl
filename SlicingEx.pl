@color = ("red","green","blue");
print "@color\n";
@color = qw(red green blue);
print "@color\n";
print "first element: @color[0]\n";
print "last element: @color[$#array]\n";

@names= qw(Jhon Jane Alice Bob);
print("Total number of elements: ",scalar @names,"\n");

@months = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
print "Summer months: @months[5..7]\n";

splice(@months,3,2);
print "@months\n";

$languages = "perl,python,ruby";
@language=split(",",$languages);
print"Languages: @language\n";

@word = qw(This is Perl);
$word = join(" ", @word);
print"Join the array with space: $word\n";

$eggs="bird,cobra,lizard";
@eggs=split(",",$eggs);
print"Join the array with comma: @eggs\n";

@numbers=(9,2,5,1,3);
@sorted=sort(@numbers);
print"Numbers in ascending order: @sorted\n";

@merge = (@numbers,@sorted);
print"Merge: @merge\n";

@fruits = qw(apple banana);
push(@fruits, "orange");
print"add to end: @fruits\n";

pop(@fruits);
print"remove the last element: @fruits\n";

unshift(@fruits, "kiwi");
print"add to fruits: @fruits\n";

shift(@fruits);
print"remove the first element: @fruits\n";