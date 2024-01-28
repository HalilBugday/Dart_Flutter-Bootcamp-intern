import 'dart:io';

void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----data retrieval operations-----");
  /*data retrieval operations*/

  print("Enter your name: ");
  String? name = stdin.readLineSync(); //input data, ?-> can be null
  print("Hello $name!");

  print("Enter your age: ");
  int? age = int.parse(stdin.readLineSync()!); //input as a String to int, ! is ?
  print("Woww your age: $age ");
}
