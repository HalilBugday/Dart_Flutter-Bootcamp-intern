void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Async and Await */
  //yukarı async keyword yazdık, program çalışmaya devam eder
  print("Personal data will be fetched from the internet.");
  processAboutPerson();
  print("Program running still..");
}

Future<String> getDataFronNet() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Name: 'Halil', ID: '28'";
  });
}

void processAboutPerson() async {
  String person = await getDataFronNet();
  print("Length: ${person.length}");
}
