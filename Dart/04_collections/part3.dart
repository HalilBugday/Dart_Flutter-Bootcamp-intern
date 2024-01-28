void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* helper methods for lists */

  List<int> numbers = [2, 4, 10, 23, 3, 0, -6];

  print(numbers.first); //first element of the numbers
  print(numbers.last); //last element of the numbers
  print(numbers.isEmpty); //is list empty? 'boolean'
  print(numbers.isNotEmpty); //is list not empty? 'boolean'
  print(numbers.length); //length of the numbers
  print(numbers.reversed); //the array is reversed (main list unchanged)
  numbers.add(11); //11 is added en of the list
  numbers.remove(10); //10 is removed (if there is more same value, it remove just first one)
  print(numbers);
  numbers.removeAt(1); //remove the element at 1. index
  print(numbers);
  print(numbers.contains(0)); //if list contains 0 it return true 'boolean'
  print(numbers.elementAt(3)); //value at 3. index of the list
  print(numbers.indexOf(23)); //index of the variable 23
  //numbers.shuffle(); //shuffle the values of the list
  //numbers.clear(); // clean all list
}
