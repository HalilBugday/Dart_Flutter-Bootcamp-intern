void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!

  print("-----Print process-----");
/* Print process */
  print("object1");
  print('object2');
  print("3 + 5"); //str
  print(3 + 5); //int
  print('Halil\'s Lectures'); //void // or ("Halil's Lectures")
  print("Halil" + "Bugday"); //merge

  print("-----Variable & Data types-----");
/* Variable & Data types */
  int age = 27; //integer
  double pi = 3.14; //float
  num year = 1996; //number -> use when var int or double
  String name = "Halil";
  bool isTrue = false;

  print("Name: " + name);
  print("Pi: $pi");
  print("Birth Year: $year");
  print('Age: $age');
  print("Is Halil's age 35?: $isTrue");

  //When a variable is declared as a var type, it can hold any value
  var age2 = 27;
  var pi2 = 3.10;
  var name2 = "Bugday";
  var isFalse = true;
}
