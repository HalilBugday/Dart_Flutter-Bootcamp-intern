void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /*Nullable, non-nullable, assertion*/

  //nullable variable with ?
  int? number1;
  number1 = null;
  print("The value of number1: $number1");

  print("----------------------------------------");

  List<String> stringList = ['Halil', 'Bugday', 'Elif'];
  List<String>? nullOlabilecekStringList; // ?
  List<String?> nullOlabilecekStringListTutanList = ['Halil', null, 'Bugday']; // ?
  print("String listesi: $stringList");
  print("null olabilecek liste: $nullOlabilecekStringList");
  print("null olabilecek stringleri tutan liste: $nullOlabilecekStringListTutanList");

  print("----------------------------------------");

  int? nullOlabilirAmaDegil;
  List<int?> nullDegerTutanListe = [2, 3, null];
  int a = nullOlabilirAmaDegil!; //assertion operator '!' (evet, null olabilir ama söz null degil:)
  int b = nullDegerTutanListe.first!; //assertion operator '!' (evet, null olabilir ama söz null degil:)
  int c = nullDondurebilirAmaDondurmeyecek()!.abs();
}

int? nullOlabilirAmaDegil = 1;

int? nullDondurebilirAmaDondurmeyecek() {
  return 5;
}
