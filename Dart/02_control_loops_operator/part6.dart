void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----Increament & Decreament Operators-----");
  /* For, While, do-while*/

  print("For loop syntax");
  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  List temp = ["Halil", "Ibrahim", "Bugday"];

  for (String i in temp) {
    print(i);
  }

  for (int i = 0; i < temp.length; i++) {
    print("name: " + temp[i]);
  }

  print("While loop syntax");
  int sayac = 0;
  while (sayac < 5) {
    print("$sayac. while number");
    sayac++;
  }

  print("do-While loop syntax");
  int sayac2 = 0;
  do {
    print("$sayac2. do-while number");
    sayac2++;
  } while (sayac2 < 5);

  print("for loop syntax (break)");
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("$i. without break.");
  }

  print("for loop syntax (continue)");
  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      print("$i. with continue.");
    } else
      continue;
  }

  print("nested for loop syntax");
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("$i * $j = ${i * j}");
    }
  }

  print("BONUS for loop syntax");
  extLoop:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("$i * $j = ${i * j}");
      if (i == 2) {
        break extLoop;
      }
    }
  }
}
