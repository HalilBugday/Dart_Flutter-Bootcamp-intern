void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Generic types, Generic class, Stack-LIFO */

  /*Generics in Dart provide a way to write reusable code
 that can work with different types. They allow you to define
 classes, functions, and interfaces that can operate on a variety of data
 types without sacrificing type safety. Generics are denoted by using
 angle brackets < > and a type parameter. */

  //List<E> ==> Element
  //Map<K, V> ==> Key, Value
  //R ==> Return type
  //Student <T extends Person>
  StackAnyTypes stack1 = StackAnyTypes();
  stack1.push(5);
  stack1.push("Halil");
  stack1.push(true);

  StackIntTypes stack2 = StackIntTypes();
  stack2.push(2);
  stack2.push(4);
  stack2.push(11);

  StackStrTypes stack3 = StackStrTypes();
  stack3.push("Halil");
  stack3.push("Elif");
  stack3.push("Bugday");

  //Instead of making one type like this, let's make it generic!
  StackGenericType<String> stack4 = StackGenericType();
  stack4.push("Halil");
  stack4.push("Bugday");

  StackGenericType<int> stack5 = StackGenericType();
  stack5.push(7);
  stack5.push(-3);
}

class StackAnyTypes {
  List _myList = []; //private but same folder! so you can see in main!

  push(newElement) {
    _myList.add(newElement);
  }

  pop() {
    return _myList.removeLast();
  }
}

class StackIntTypes {
  List<int> _myList = <int>[];

  void push(int newElement) {
    _myList.add(newElement);
  }

  int pop() {
    return _myList.removeLast();
  }
}

class StackStrTypes {
  List<String> _myList = <String>[];

  void push(String newElement) {
    _myList.add(newElement);
  }

  String pop() {
    return _myList.removeLast();
  }
}

class StackGenericType<T> {
  List<T> _myList = <T>[];

  void push(T newElement) {
    _myList.add(newElement);
  }

  T pop() {
    return _myList.removeLast();
  }
}
