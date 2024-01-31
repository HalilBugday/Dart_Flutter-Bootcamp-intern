import 'dart:math';

void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* throw */

  double value1 = squeareRoot(20);
  print("square root of 25: ${value1.toStringAsFixed(2)}"); //2 digits after int.

  //what if we give a negative number as an argument? -> "NaN", so throw the exception
  double value2 = squeareRoot(-20);
  print("square root of -20 without 'throw exception': ${value2.toStringAsFixed(2)}");

  try {
    double value3 = squeareRoot2(-20);
    print("square root of -20 with 'throw exception': ${value3.toStringAsFixed(2)}");
  } catch (e) {
    print(e);
  }
}

double squeareRoot(int i) {
  return sqrt(i);
}

double squeareRoot2(int i) {
  if (i < 0) {
    throw FormatException("the number cannot be negative!");
  } else
    return sqrt(i);
}
