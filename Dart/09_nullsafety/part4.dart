import 'dart:math';

void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /*null safety for object properties*/

  final procedure = RandomText();
  String? result = procedure.deger();

  if (result == null) {
    print("Value is null");
  } else {
    printText(result);
  }
}

void printText(String exp) {
  print(exp);
}

class RandomText {
  String? deger() {
    if (Random().nextBool()) {
      return 'String expression';
    } else {
      return null;
    }
  }
}
