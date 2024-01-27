void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----IF-ELSE Statement-----");
/* if-else statement */

  num number1 = 15;
  var number2 = 15;

  if (number1 > number2) {
    print("$number1 is bigger than $number2");
  } else if (number1 < number2) {
    print("$number1 is less than $number2");
  } else {
    print("$number1 and $number2 is equal!");
  }

  int age = 18;
  int height = 172;

  if (age >= 18 && height >= 175) { //and operation --> &&
    print("Concrat! you are young and tall");
  } else {
    print("Opps! you are child! and/or short!");
  }
}
