void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  /* String data type and interpolation */
  print("-----Literal variables-----");
  //No assigned any variable
  "Halil";
  56;
  true;
  print("can not printed!");

  print("-----String op./Interpolation-----");
  /* The concept of interpolation is basically the process of combining two
  defined variables by using the $ (dollar) sign in parentheses
  instead of the + (plus) sign. */
  String name = "Halil";
  String lastName = "Bugday";
  var pet1 = "Who's dog?";
  var pet2 = 'Who\'s cat?';

  print(name + " " + lastName);
  print("$name $lastName");

  print("in '$name' char numbers: " + name.length.toString()); //name.length.toString() -> (toString because (String + String))
  print("anther way to find char numbers: ${name.length}"); // ${expression.method}

  double width = 10;
  double length = 12;
  print("Area is with double: ${width * length}");
  print("Area is with integer: ${width.toInt() * length.toInt()}");
}
