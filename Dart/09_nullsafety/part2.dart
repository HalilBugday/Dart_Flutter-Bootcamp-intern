void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /*Type promotion, Required*/

  final sum1 = sumOfThreeNumber(number1: 1, number2: 4, number3: 9);
  final sum2 = sumOfThreeNumber(number1: 9, number2: 5);
  final sum3 = sumOfThreeNumber2(number1: 12, number2: 10, number3: 8);

  print("-----------------------------------------------------------------");
  /* null değer alması mümkün olmayan ama null eğer alacakmış gibi belirtilen
   nullable tiplere, non-nullable gibi davranır. Buna type promotion denir. */
  String? message;

  //make it 'type promotion'
  if (DateTime.now().hour < 12) {
    message = "Good morning";
  } else {
    message = "Good evening";
  }
  print(message);
  print(message.length);

  print("-----------------------------------------------------------------");

  //type promotion from base class to derived class
  Object metin = 'it is a string';
  if (metin is String) print(metin.length);
}

//way1 'initialized'
int sumOfThreeNumber({int number1 = 0, int number2 = 0, int number3 = 0}) {
  return number1 + number2 + number3;
}

//way2 'required'
int sumOfThreeNumber2({required number1, required number2, required number3}) {
  return number1 + number2 + number3;
}
