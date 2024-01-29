void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* interface concept */
}

abstract class CanFly {
  void fly();
}

abstract class CanRun {
  void run();
}

abstract class CanBark {
  void bark();
}

abstract class Animal {
  void getInfo() {
    print("test");
  }
}

//2 class implement! (in extends, dart allow just one class extends! it is a difference)
class Dog implements CanBark, CanRun {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class Bird implements CanFly {
  @override
  void fly() {
    // TODO: implement fly
  }
}

//a class both extend and implement
class Cat extends Animal implements CanRun {
  @override
  void run() {
    // TODO: implement run
  }
}

//Human not an animal but can run!
class Human implements CanRun {
  @override
  void run() {
    // TODO: implement run
  }
}
