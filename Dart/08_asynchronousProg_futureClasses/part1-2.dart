import 'dart:io';

void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* asynchronous, future*/

  /*In synchronous programming, one function does not start working
   before the other one finishes, that is, they wait for each other
   and you cannot move on to the other before the answer of the waiting
   function is returned. However, asynchronous functions start running
   at the same time and continue to run without waiting for each other's results. */

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
