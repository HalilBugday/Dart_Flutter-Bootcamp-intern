void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  /* Function concepts */
  calculateEnv(); //call the print function
  calculateArea(5, 10); //call the function with argument
  int returnResult = calculateMult(3, 7); //call the return function with argument
  int returnResult2 = calculateSub(3, 4); //call the return function with argument

  print("Multiple Calculated: $returnResult");
  print("Subs. Calculated: $returnResult2");
}

calculateEnv() {
  //print function (no parameter)
  int width = 10;
  int height = 5;
  int result;
  result = (width + height) * 2;
  print("Env. Calculated: $result");
}

void calculateArea(int number1, int number2) {
  //function with parameter
  //It is RECOMMENDED to write the void type at the beginning of the method.
  //if function is no RETURN function
  int area = number1 * number2;
  print("Area Calculated: $area");
}

calculateMult(int number1, int number2) {
  //return function with parameter
  int result = number1 * number2;
  return result;
}

int calculateSub(int number1, int number2) {
  //It is RECOMMENDED to write the returned data type at the beginning of the method.
  //return function with parameter
  int result = number1 - number2;
  return result;
}
