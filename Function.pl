sub PrintList
{
	my @list = @_; #"@_"  -->  any number of parameters are assing this array
	print "Give list is @list\n";
	print "Second list element is @list[1]\n";
}

$x = 10;
@y = (1,2,3,4);
printList($x,@y);