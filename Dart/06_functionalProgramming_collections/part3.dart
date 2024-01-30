void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Lexical Closure, lexical variable scope */

  // the place in which it was created.

  //in normally testFunc2 can access testVar2 and testVar1 but NOT VICE VERSA, here is a access hierarchy
  //en içteki function, dışa doğru variable'lara erişebilir
  //these are lexical variable scope
  var testVar1 = 1;

  //print(testVar1); access
  //print(testVar2); not access
  //print(testVar3); not access
  void TestFunc1() {
    var testVar2 = 2;

    //print(testVar1); access
    //print(testVar2); access
    //print(testVar3); not access

    void TestFunc2() {
      var testVar3 = 3;

      //print(testVar1); access
      //print(testVar2); access
      //print(testVar3); access
    }
  }

  //Lexical Closure
  print("----------------------");

  //While the function within the function is running, it is not deleted from the previous memory
  var returnedFunc = doSum(3);
  var result = returnedFunc(4);
  print(result);
}

Function doSum(int element) {
  return (int value) => element * value;
}
