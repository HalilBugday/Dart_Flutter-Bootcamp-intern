void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----Number - Boolean - Null safety -----");
  /* Number - Boolean - Null safety */
  double number1 = 24;
  print("number1 now: $number1");
  number1 = 27;
  print("number1 then: $number1");

  int number2 = 78.6.toInt(); //to int method 78.6 to 76 Truncate! not Round!
  print("Number 2 as a integer: $number2");

  int number3; //declaration (null)
  number3 = 100; //initialization (value)
  print("Inıtializationed number: $number3");

  num? number4 = null; //declaration with null.
  print("null variable: $number4");

  int number5 = 0xAAB23; //hexadecimal number.
  print("Hexadecimal number: $number5");
}
