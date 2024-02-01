void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /*Type promotion, Required*/

  try {
    print(findfirstCharNumber("Halil"));
  } catch (e) {
    print(e);
  }
}

int findfirstCharNumber(String? metin) {
  if (metin == null) {
    throw Exception("Metin Null!");
  }
  return metin.length;
}
