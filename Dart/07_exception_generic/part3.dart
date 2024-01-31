void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* exception classes (Self) */

  try {
    Student person1 = Student(-5);
    print(person1.age);
  } on AgeException catch (e) {
    print(e.message);
  } finally {
    print("Program ended");
  }
}

class AgeException implements Exception {
  String message = 'Age Exception';

  AgeException({message});
}

class Student {
  int age = 0;

  Student(this.age) {
    if (age < 0) {
      throw AgeException();
    } else {
      this.age = age;
    }
  }
}
