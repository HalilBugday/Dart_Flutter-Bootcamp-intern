void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* abstract class and methods */
  Shape aShape = Rectangle(3, 12);
  aShape.getInfo();

  print("***");

  Shape aShape2 = Square(11);
  aShape2.getInfo();

  //you can not create an object from abstract class!
}

//abstract parent class
abstract class Shape {
  double calcArea(); //abstract methods must override on the sub-classes
  double calcEnv(); //abstract methods must override on the sub-classes

  void getInfo() {
    //normal method you not must override it!
    print(calcArea());
    print(calcEnv());
  }
}

//sub-class
class Square extends Shape {
  int aSideLength;
  Square(this.aSideLength);

  @override
  double calcArea() {
    return (aSideLength * aSideLength).toDouble();
  }

  @override
  double calcEnv() {
    return (aSideLength * 4).toDouble();
  }
}

//sub-class
class Rectangle extends Shape {
  int width, length;
  Rectangle(this.length, this.width);

  @override
  double calcArea() {
    return (width * length).toDouble();
  }

  @override
  double calcEnv() {
    return ((width + length) * 2).toDouble();
  }
}
