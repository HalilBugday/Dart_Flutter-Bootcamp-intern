void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* fixed length lists */

  List<int> numbers = List.filled(3, 0, growable: false); //default = 0,0,0
  //growable is optional (default false) input must with name
  print("3 size array with default value: $numbers");

  List<int> numbers2 = List.filled(6, 0); // 0,0,0,0
  numbers2[0] = 4;
  numbers2[1] = 9;
  numbers2[2] = -2;
  numbers2[3] = 1321;
  print("assigned some values to array: $numbers2");

  int sizeOfnumbers2 = numbers2.length;
  print("size of array 'numbers2': $sizeOfnumbers2");
  print("2.index value of array: ${numbers2[2]}");

  List<String> names = List.filled(3, ""); // , ,
  print("names list with default value: $names");
  names[0] = 5.toString();
  names[1] = "Halil";
  print("names list with some value: $names");

  //dynamic data types array
  List<dynamic> mixedList = List.filled(5, 0); //0,0,0,0,0
  mixedList[0] = "Bugday";
  mixedList[1] = 15.4;
  mixedList[2] = "Halil";
  mixedList[2] = true;
  mixedList[4] = -9;

  print("Mixed data type list: $mixedList");

  //for loop to iterate an array
  for (int i = 0; i < mixedList.length; i++) {
    print("$i. element: ${mixedList[i]}");
  }

  print("*****");
  for (int tempElement in numbers2) {
    print(tempElement);
  }
}
