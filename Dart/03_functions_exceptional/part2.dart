void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  /* Fat Arrow */
  int result1 = sum(5, 4);
  double result2 = mult(5, 4);
  int maxnum = maxNumber(2, 5);

  print("Sum result: $result1");
  print("Mult. result: $result2");
  print("Max number: $maxnum");
}

//1 line statement functions
int sum(int number1, int number2) => number1 + number2;

double mult(double number1, double number2) => number1 * number2;

int maxNumber(int number1, int number2) => number1 < number2 ? number2 : number1;

//instead of
/*
int maxNumber(int number1, int number2) {
  if (number1 < number2) {
    return number2;
  } else {
    return number1;
  }
}
*/

