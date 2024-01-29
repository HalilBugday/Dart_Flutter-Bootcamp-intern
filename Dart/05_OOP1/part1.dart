void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Class and object concepts */

  Student person1 = Student(); // Create an object from class
  var person2 = Student(); // Create an object from class another syntax

  person1.studentName = "Halil Bugday";
  person1.studentId = 280201094;
  person1.isActive = true;

  print("name of person1 object: ${person1.studentName}");
  person1.studyHard();
}

class Student {
  int? studentId;
  String? studentName;
  bool? isActive;

  studyHard() {
    print("$studentName study something");
  }
}
