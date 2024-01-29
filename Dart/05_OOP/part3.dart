void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* This keyword */

  car firstCar = car("BMW", 1996, true);
  firstCar.getInfo();
  firstCar.calculateAge();
}

// ! ünlem işareti null olabilecek şeyleri, null olmayacağına dair teminat sunar (modelYear!)
class car {
  String? name;
  int? modelYear;
  bool? isAutomatic;

  car(String name, int modelYear, bool isAutomatic) {
    this.name = name;
    this.modelYear = modelYear;
    this.isAutomatic = isAutomatic;

    //short cut: car(this.name, this.modelYear, this.isAutomatic)
  }
  void getInfo() {
    print("Brand of the car: $name, model year of the car: $modelYear, is car automatic: $isAutomatic");
  }

  void calculateAge() {
    // ! ünlem işareti null olabilecek şeyleri, null olmayacağına dair teminat sunar (modelYear!)
    print("Age of the car: ${2024 - modelYear!}");
  }
}
