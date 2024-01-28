void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* dynamic length lists */

  List<int> numbers = []; //dynamic array
  numbers.add(5);
  numbers.add(-8);
  numbers.add(3);
  print("Dynamic list: $numbers");
  int numbersLength = numbers.length;
  print("dynamic list length: $numbersLength");

  List<int> numbers2 = [12, 9, 3, -2]; //initialized with some value
  numbers2.add(3);
  print("Dynamic list2: $numbers2");

  List<int> numbers3 = List.filled(5, 7, growable: true); //growable true so, it became a dynamic array
  numbers3.add(9);
  print("Growable=true array: $numbers3");

  List<int> numbers4 = List.empty(growable: true); //another way to declerate a list
  numbers4.add(-19);
  print("empty list values: $numbers4");
}
