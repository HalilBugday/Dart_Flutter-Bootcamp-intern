void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----Increament & Decreament Operators-----");
  /* Increament & Decreament*/

  int number1 = 5;
  print("number1 is now : $number1");
  number1 = number1 + 4;
  print("number1 = number1 + 4 : $number1 ");

  number1++; //inc op. (first number than increase)
  print("number1++ : $number1");

  //number1= 10 now but if;
  ++number1; // (first increase than number)
  print("++number1 : $number1");

  number1--;
  print("number1-- : $number1");

  print("-----Process priority-----");
  /*PROCESS PRIORITY*/

  /*
  1--> ()
  2--> ++ or -- 'firstly'
  3--> * and /
  4--> + and -
  5--> = 'assign'
  6--> ++ or -- 'than'
   */

  int n1 = 10, n2 = 5, result = 0;
  result = (n1 + n2 * 3 - n2) + n2 - n1 * 5 + n1;
  print("Result is : $result");
}
