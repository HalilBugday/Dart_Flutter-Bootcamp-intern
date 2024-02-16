void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* immutable class */

  Student st1 = Student(5, "Halil");
  Student st2 = Student(5, "Halil");

  print("final var st1 ID now: ${st1.stId}");

  //due to final keyword you cannot change those values;
  // st.stId = 12;
  //and these storage in different address even if they have same value!

  if (st1 == st2) {
    print("st1 and st2 are equal!");
  } else {
    print("st1 and st2 are NOT equal!");
  }
  //but values can be change;
  st1 = Student(11, "Halil");
  print("final var st1 ID now: ${st1.stId}");
  print("--------------------------------------------");

  const Teacher tec1 = Teacher(4, "Bugday");
  const Teacher tec2 = Teacher(4, "Bugday");

  final Teacher tec3 = const Teacher(4, "Bugday"); //other const syntax
  var tec4 = const Teacher(4, "Bugday"); //other const syntax

  if (tec1 == tec2) {
    print("tec1 and tec2 are equal!");
  } else {
    print("tec1 and tec2 are NOT equal!");
  }

  //values cannot be changed due to const keyword
  //tec1 = Teacher(3, "Bugday");
}

class Student {
  final int stId;
  final String stName;

  Student(this.stId, this.stName);
}

class Teacher {
  final int stId;
  final String stName;

  const Teacher(this.stId, this.stName);
}
