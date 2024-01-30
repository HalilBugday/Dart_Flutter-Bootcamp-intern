void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* static method and variables */
  //static -> nesneye değil sınıfa bağlı.

  Math firstCalc = Math(50, 20);
  firstCalc.sum();
  firstCalc.sub();

  //access the variable directly which static one;
  print("The PI number: ${Math.piNumber}");

  //access the method directly which static one;
  Math.sayHello();

  //not: you can not access the static method from object
  //firstCalc.sayHello();
}

class Math {
  //instance variable
  int number1 = 0;
  int number2 = 0;

  //static variable (access directly from main)
  static double piNumber = 3.14;

  Math(this.number1, this.number2);

  void sum() {
    print("Sum of 2 numbers: ${number1 + number2}");
  }

  void sub() {
    print("Subs of 2 numbers: ${number1 - number2}");
  }

  //static method
  static void sayHello() {
    print("Hi I'm from Math class!");
  }
}
