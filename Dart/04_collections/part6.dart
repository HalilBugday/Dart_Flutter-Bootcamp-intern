import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Collections critics */

  var collection1 = []; //a dynamic, multiple data types list!
  var collection2 = <String>[]; //a dynamic string list!

  var collection3 = {}; //a map 'dynamic, dynamic'
  var collection4 = {"Bla"}; //a set (not map because it has just 1 value)
  var collection5 = {"Bla": 20}; //a map (not set because it has 2 values)
  var collection6 = <String, dynamic>{"Bla": 20}; //you can use data types

  var evenNumbers = [1, 3, 5, 7, 9]; //an even numbers list
  var oddNumbers = [0, 2, 4, 6, 8]; //an odd numbers list

  /*
  allNumbers.addAll(oddNumbers);
  allNumbers.addAll(evenNumbers);
   */
  var allNumbers = [oddNumbers, evenNumbers];
  print("2 arrays in one array: $allNumbers");

  //spreads operator
  var allNumbers2 = [...oddNumbers, ...evenNumbers];
  print("merged 2 arrays: $allNumbers2");

  var map1 = {'name': 'halil'};
  var map2 = {'age': 25};
  var map3 = {...map1, ...map2};
  print("merged 2 maps: $map3");

  var randomList = List.filled(10, 0);

  for (int i = 0; i < randomList.length; i++) {
    randomList[i] = Random().nextInt(100);
  }
  print("0-100 random list: $randomList");

  print("");
  print("******* An example *******");
  int inputNot = 0;
  List<int> Nots1 = <int>[];
  List<int> Nots2 = List.empty(growable: true);

  do {
    inputNot = int.parse(stdin.readLineSync()!);
    if (inputNot != -1) {
      Nots1.add(inputNot);
      print("enter '-1' to exit!");
    }
  } while (inputNot != -1);
  print("number of nots which input: ${Nots1.length}");
  double avg = averageNots(Nots1);
  print("Average of the nots: $avg");
}

averageNots(List<int> aList) {
  int sum = 0;
  for (int i = 0; i < aList.length; i++) {
    sum = sum + aList[i];
  }
  return sum / aList.length;
}
