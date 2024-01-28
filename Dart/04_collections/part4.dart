void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Set structure */

  //like bag (cluster)

  Set<String> names = Set(); //just one!!! (unique elements. this is difference between sets and arrays)
  //unorder!!
  names.add("Halil");
  names.add("Halil");
  names.add("Mustafa");
  names.add("Rukiye");
  names.add("Rukiye");
  names.add("Mustafa");
  names.add("Halil");
  names.add("Halil");
  names.add("Bugday");
  print(names); //just one!!! (unique elements. this is difference between sets and arrays)

  for (String temp in names) {
    print("name: $temp");
  }

  if (names.contains("Halil")) {
    print("True");
  } else {
    print("False");
  }

  Set<int> numbers = Set.from([1, 2, 3, 1, 21, 3, 1, 2, 3, 12]); //another syntax of sets
  List<int> evenNumbers = [0, 2, 4, 6, 8, 10, 10, 10, 8, 6, 4, 2, 0];
  print(numbers);
  numbers.addAll(evenNumbers); //even numbers added to numbers
  print(numbers);
}
