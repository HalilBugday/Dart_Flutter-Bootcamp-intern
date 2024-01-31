void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* try-catch-finally */

  print("Program running...");

  int number = 100 ~/ 6; //in normally number can be double but "~" mean just take integer part :)
  print("~ 100/16 number: $number");
  print("**********");

  //istisna çıkarsa catch çalırı, çıkmazsa çalışmazs, finally hep çalışır.

  try {
    //exception
    int number2 = 100 ~/ 0; //undefined!
    print("undefined number2: $number2");
  } catch (e) {
    print("Exception 'The error': ${e.toString()}");
  } finally {
    print("Process ended 1");
  }
  //The program continued to run. Thanks to try-catch

  print("**********");
  try {
    //exception
    int number3 = 100 ~/ 4; //defined!
    print("defined number3: $number3");
  } catch (e) {
    print("Exception 'The error': ${e.toString()}");
  } finally {
    print("Process ended 2");
  }

  print("**********");
  try {
    //spesific exception
    int number3 = 100 ~/ int.parse("Halil");
    print("defined number3: $number3");
  } on FormatException catch (e) {
    print(e.message);
  } finally {
    print("Process ended 3");
  }
  print("Program ended!");
}
