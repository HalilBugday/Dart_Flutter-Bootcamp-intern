void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Immutable (final, cons) */

  var canMutable = "Halil";
  print("The variable now: $canMutable");
  canMutable = "Bugday";
  print("The variable than $canMutable");

  final String immutableVar = "Try"; //it can not be change;
  print("The immutable value: $immutableVar");
  //immutableVar = "bla";

  const String immutableVar2 = "Try2"; //it can not be change;
  print("The immutable value2: $immutableVar2");
  //immutableVar2 = "bla";

  /*Use final when you need variables that cannot
  be reassigned but can be computed at runtime.
  Use const for values that are known at compile time to
  enhance performance and ensure immutability */

  //IMPORTANT! examine the code and output and think :)
  //addresses are different.
  //they are not equal!
  final list1 = [1, 2, 3];
  final list2 = [1, 2, 3];

  if (list1 == list2) {
    print("final lists are equal!");
  } else {
    print("final lists are NOT equal!");
  }

  //you can add something to final immutable list
  //but you can not assign a new list to final list or change
  //list1 = [9, 10];
  list1.add(5);
  print("added 5 to the final list: $list1");

  //they are qual!
  //but canonicalized! (cannot add anything, cannot manipulate)
  const list3 = [0, 1, 2, 3];
  const list4 = [0, 1, 2, 3];

  if (list3 == list4) {
    print("const lists are equal!");
  } else {
    print("const lists are NOT equal!");
  }

  // you cannot manipulate contect of the list which 'const' list3.add(6);
  //list3.add(6);
  //print("added 6 to the const list: $list3");

}
