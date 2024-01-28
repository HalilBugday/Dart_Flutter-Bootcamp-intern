void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  /* optional and named parameters, assigning default values. */

  print(sum1(1, 3, 4)); //you have to input 3 numbers in order!
  print(sum2(1, 3)); //you have to input num1 and num2 but num3 optional!

  int result = sum3(num2: 5, num3: 1, num1: 2); //optional named Not in oder!
  print(result);

  int result2 = sum4(5, num1: 1); // num4 required, others are named and optional.
  print(result2);
}

//required parameter
int sum1(int num1, int num2, int num3) {
  return num1 + num2 + num3;
}

//optional parameter
int sum2(int num1, int num2, [int num3 = 0]) {
  //default num3=0;
  return num1 + num2 + num3;
}

//optional named
int sum3({int num1 = 0, int num2 = 0, int num3 = 0}) {
  //default 0;
  return num1 + num2 + num3;
}

//optional named and required parameter
int sum4(int num4, {int num1 = 0, int num2 = 0, int num3 = 0}) {
  //default 0;
  return num4 + num1 + num2 + num3;
}
