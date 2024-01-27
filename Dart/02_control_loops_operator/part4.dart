void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----Arithmetic Operators-----");

  /* Arithmethic Operators */
  double number1 = 9;
  double number2 = 6;

  print("$number1 + $number2 = ${number1 + number2}");
  print("$number1 - $number2 = ${number1 - number2}");
  print("$number1 * $number2 = ${number1 * number2}");
  print("$number1 / $number2 = ${number1 / number2}");
  print("$number1 % $number2 = ${number1 % number2}");

  print("-----Comp. Operators-----");

  /* Comp Operators and assignment process*/
  double number3 = 5;
  print("number3 is now: $number3");
  number3 = number3 + 4;
  print("number3 then: $number3");

  int number4 = 9;
  int number5 = 11;

  if (number4 > number5) {
    print("$number4 is greater than $number5");
  } else if (number4 >= number5) {
    print("$number4 is great equal $number5");
  } else if (number4 < number5) {
    print("$number4 is less than $number5");
  } else if (number4 >= number5) {
    print("$number4 is less, equal $number5");
  } else if (number4 == number5) {
    print("$number4 is equal $number5");
  }

  String name1 = "Halil";
  String name2 = "Bugday";

  if (name1 == name2) {
    print("$name1 and $name2 are same");
  } else if (name1 != name2) {
    print("$name1 and $name2 are different");
  }

  print("-----Logic Operators-----");

  /* Logic Operators and assignment process*/
  bool log1 = true;
  bool log2 = false;

  print("AND op (1 && 0): ${log1 && log2}");
  print("OR op (1 | 0): ${log1 | log2}");
  print("NOT op (NOT 1): ${!log1}");
}
