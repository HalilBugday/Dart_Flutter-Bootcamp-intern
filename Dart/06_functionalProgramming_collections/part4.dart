void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* List class constructor and properties */

  Person halil = Person(3, "Halil");
  Student ibo = Student(1, "İbrahim", 10);
  Person elif = Student(8, "Elif", 8);
  var bugday = Person(6, "Bugday");
  var nur = Student(7, "Nur", 4);

  List<Person> allPerson = [halil, ibo, elif, bugday, nur];
  print("-------list allPerson---------");
  print(allPerson);

  var listFilled = List<Student>.filled(5, Student(0, "", 0));
  print("-------listFilled---------");
  print(listFilled);

  var listFrom = List.from(allPerson);
  print("-------listFrom---------");
  print(listFrom);
  var listFrom2 = List<Student>.from(allPerson.whereType<Student>());
  print("-------ListFrom2---------");
  print(listFrom2);

  var listOf = List.of(allPerson);
  print("-------listof---------");
  print(listOf);
  var listOf2 = List<Student>.of(allPerson.whereType<Student>());
  print("-------listof2---------");
  print(listOf2);

  var listGenerate = List<int>.generate(5, (index) => index + 2); //just an example
  print("-------listGenerate---------");
  print(listGenerate);
  var listGenerate2 = List<Student>.generate(5, (index) => Student(index, "", index * 2)); //higher order function btw
  print("-------listGenerate2---------");
  print(listGenerate2);

  var unmodifList = List.unmodifiable([0, 2, 1, 4, 5, 6]); //can not add/remove anything
  print("-------unmodifList---------");
  print(unmodifList);
}

class Person {
  int id = 0;
  String name = "";

  Person(this.id, this.name);

  @override
  String toString() {
    return "id: $id, name: $name";
  }
}

class Student extends Person {
  int numOfLecture = 0;

  Student(id, name, numOfLecture) : super(id, name);

  @override
  String toString() {
    return "id: $id, name: $name, lecture: $numOfLecture";
  }
}
