void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* factory constructor */

  //not: default constructor can not return anything!
  //if you want to use return in constructor -> FACTORY CONS.

  Student st1 = Student(280201094, "Halil");
  Student st2 = Student.withoutIdConst("İbrahim");
  Student st3 = Student.factorCons(-12123, "Elif");

  st1.getInfo();
  st2.getInfo();
  st3.getInfo();
}

class Student {
  int id = 0;
  String name = "";

  Student(this.id, this.name) {
    print("The default constructor method runned!");
  }
  Student.withoutIdConst(this.name) {
    print("The named constructor method runned!");
  }

  factory Student.factorCons(int id, String name) {
    if (id < 0) {
      return Student(1, name);
    } else {
      return Student(id, name);
    }
  }
  void getInfo() {
    print("Name: $name, ID: $id");
  }
}
