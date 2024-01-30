void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* List class methods */

  Person halil = Person(3, "Halil");
  Student ibo = Student(1, "İbrahim", 10);
  Person elif = Student(8, "Elif", 8);
  var bugday = Person(6, "Bugday");
  var nur = Student(7, "Nur", 4);

  List<Person> allPerson = [halil, ibo, elif, bugday, nur];
  print("-------list allPerson---------");
  print("First list: $allPerson");

  allPerson.add(halil);
  print("'Halil' added again: $allPerson");

  allPerson.addAll([elif, nur]);
  print("'Elif' and 'nur' added again: $allPerson");

  bool result = allPerson.any((Person element) => element.id >= 8); //elif (if just 1 ok it will true)
  print("is there any person who id >= 8: $result");

  Map<int, Person> mapFromList = allPerson.asMap();
  print("List to Map: $mapFromList");
  print("List to Map first element name: ${mapFromList[0]!.name}"); //extrea

  print(allPerson.contains(Person(3, "Halil"))); //IMPOETANT! it will return false because it create a new address

  bool result2 = allPerson.every((Person element) => element.id >= 8); //elif (if all element ok it will true)
  print("are all person who id >= 8: $result2");

  var found = allPerson.firstWhere((element) => element.id == 1); //give me first person who id is = 1
  print("first person who has id = 1: $found");

  var mapIterable = allPerson.map((Person e) => "${e.name}").toList(); //it is a iterable so toList(), toSet()
  print("Just person names: $mapIterable");

  allPerson.sort((st1, st2) {
    if (st1.id < st2.id) {
      return -1;
    } else if (st1.id > st2.id) {
      return 1;
    } else
      return 0;
  });

  print("sorted list according to Id: $allPerson");
}

class Person {
  int id = 0;
  String name = "";

  Person(this.id, this.name);

  @override
  String toString() {
    return "id: $id, name: $name\n";
  }
}

class Student extends Person {
  int numOfLecture = 0;

  Student(id, name, numOfLecture) : super(id, name);

  @override
  String toString() {
    return "id: $id, name: $name, lecture: $numOfLecture\n";
  }
}
