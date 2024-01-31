void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* function with generic types */

  double avg1 = average(5, 9);
  print("Average 'avg1': $avg1");

  double avg2 = averageGeneric<int>(5, 1);
  print("Average 'avg2': $avg2");
}

double average(n1, n2) {
  return (n1 + n2) / 2;
}

double averageGeneric<T extends num>(T n1, T n2) {
  return (n1 + n2) / 2;
}
