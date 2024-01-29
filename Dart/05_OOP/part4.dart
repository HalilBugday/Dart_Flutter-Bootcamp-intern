void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* named constructor */

  car firstCar = car("Mercedes", 2021, true); //what if I do not wan to enter model year? ->named constructor
  firstCar.getInfo();
  firstCar.calculateAge();

  car secondCar = car.consMethodWithoutModelYear("Opel", true);
  secondCar.getInfo();
  secondCar.calculateAge(); //model year = null
}

class car {
  String? name;
  int? modelYear;
  bool? isAutomatic;

  car(this.name, this.modelYear, this.isAutomatic);
  car.consMethodWithoutModelYear(this.name, this.isAutomatic); //named constructor

  void getInfo() {
    print("Brand of the car: $name, model year of the car: $modelYear, is car automatic: $isAutomatic");
  }

  void calculateAge() {
    if (modelYear != null) {
      print("Age of the car: ${2024 - modelYear!}");
    } else {
      print("There is no info about model year!");
    }
  }
}
