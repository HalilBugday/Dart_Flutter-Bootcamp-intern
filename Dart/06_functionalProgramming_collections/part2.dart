void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Higher order functions */

  /*a function that takes one or more functions as arguments,
  or returns a function as its result */

  //not for-each takes a void function as a parameter.

  List<int> list1 = [1, 2, 3];

  list1.forEach((element) {
    print("Element: $element");
  });

  print("-------------------------------------");

  specialForEach(list1, (int value) {
    print("Value: $value");
  });
}

void specialForEach(List<int> liste, Function aFunction) {
  for (int i = 0; i < liste.length; i++) {
    aFunction(liste[i]);
  }
}

void callBack(int anElement) {
  print("Element: $anElement");
}
