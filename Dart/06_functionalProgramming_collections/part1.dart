void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Lambda function */

  //no name function 'Lambda' and in the main!

  Function sum = (int a, int b) {
    int result = a + b;
    print("$a + $b = $result");
  };

  print(sum);
  sum(5, 6);

  //also a lambda function
  var mult = (int a, int b) => a * b;

  var result2 = mult(4, 5);
  print(result2);
}
