void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Constructor methods with inheritance */
  Living live1 = Living("animal", 2);
  print("****");
  Person person1 = Person("Halil", 24, false); //2 constructor trigged Living and Person!
  print("****");
  Child child1 = Child("Bugday", 4, false); // 3 constructor trigged!

  live1.getInfo();
  person1.getInfo();
  live1.changeAge(4);
  live1.getInfo();
}

class Living {
  int age = 0;
  String name = "";

  Living(this.name, this.age) {
    print("Living class's constructor trigged!");
  }
  void getInfo() {
    print("Hello $name, your age $age");
  }

  void changeAge(int newAge) {
    age = newAge;
  }
}

class Person extends Living {
  bool? isMarried;

  Person(super.name, super.age, this.isMarried) {
    print("Person class's constructor trigged!");
  }
  @override
  void getInfo() {
    print("Hello $name, your age $age, are you married: $isMarried");
  }
}

class Child extends Person {
  Child(super.name, super.age, super.isMarried) {
    print("Child class's constructor trigged!");
  }
}
