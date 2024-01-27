void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----Switch-case Statement-----");
/* Switch-case statement */
//NOT: in switch-case statement, you can use just String and Int data type.

  String not = 'BA';

  switch (not) {
    case "AA":
      print("Your grade is between 90 and 100");
      break;
    case "BA":
      print("Your grade is between 80 and 90");
      break;
    case "BB":
      print("Your grade is between 70 and 80");
      break;
    case "CB":
      print("Your grade is between 60 and 70");
      break;
    case "CC":
      print("Your grade is between 50 and 60");
      break;
    case "DC":
      print("Your grade is between 40 and 50");
      break;
    case "DD":
      print("Your grade is between 30 and 40");
      break;
    case "FF":
      print("Your grade is less than 30");
      break;
    default:
      {
        print("Incorrect entry!");
      }
  }
}
