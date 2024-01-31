import 'dart:io';

void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* then, catchError, whenComplete */

  print("The mother sends her child to the market.");
  longTermProcess();
  print("Mother prepares food.");
  print("Lunch is ready.");
}

void longTermProcess() {
  print("The child leaves the house to buy bread.");
  Future.delayed(Duration(seconds: 5), () {
    print("The child enters the house with bread.");
  });
}
