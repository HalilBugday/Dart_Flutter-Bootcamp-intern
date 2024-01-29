void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Types of methods and Constructor */

  car firstCar = car();
  firstCar.brand = "Honda";
  firstCar.modelYear = 2020;
  firstCar.isAutomatic = true;

  firstCar.getInfo();
  print("*****************");
  firstCar.modelYear = 2023;
  firstCar.getInfo();

  print("*****************");
  car secondCar = car();
  secondCar.getInfo(); //null

  print("*****************");
  motorCycle firstMotor = motorCycle(1978, "Harley", false); //object constructor argument
  firstMotor.getInfo2(); //it return null because we dont use 'THIS keyword :)'
}

//without constructor (actually default constructor)
class car {
  int? modelYear;
  String? brand;
  bool? isAutomatic;

  void getInfo() {
    print("Model year of the car: $modelYear");
    print("Brand of the car: $brand");
    print("Is the car automatic: $isAutomatic");
  }
}

//with a constructor
class motorCycle {
  int? modelYear;
  String? brand;
  bool? isAutomatic;

  motorCycle(int modelYear, String brand, bool isAutomatic); //constructor

  void getInfo2() {
    print("Model year of the motor: $modelYear");
    print("Brand of the motor: $brand");
    print("Is the motor automatic: $isAutomatic");
  }
}
