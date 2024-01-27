void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----Ternary IF-ELSE Statement-----");
/*Ternary if-else statement */
// condition ? expression1 : expression2

  int number1 = 20;
  int number2 = 25;
  int minNumber;

  number1 < number2 ? minNumber = number1 : minNumber = number2;
  print("The minimum number is: $minNumber");

  print("-----Null value control-----");
  // expression1 ?? expression2

  String? name = null;
  String? lastName = "Bugday";
  String message;

  //if name null than take lastName!
  message = name ?? lastName;
  print(message);
}
