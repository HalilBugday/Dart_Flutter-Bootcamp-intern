import 'dart:io';

void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* then, catchError, whenComplete */
  //Triggered when the build is ready -> then
  //whenCompleted -> like finally (will run always)

  print("The mother sends her child to the market.");
  Future<String> result = longTermProcess();

  result.then((String value) => print(value)).catchError((error) {
    print("An error");
  }).whenComplete(() => print("Program ended"));

  print("Mother prepares food.");
  print("Lunch is ready.");
}

Future<String> longTermProcess() {
  print("The child leaves the house to buy bread.");
  Future<String> result = Future.delayed(Duration(seconds: 3), () {
    return "The child enters the house with bread.";
  });
  return result;
}
