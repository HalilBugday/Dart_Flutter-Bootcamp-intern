void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* map class constructor and methods */

  Map<String, dynamic> map1 = Map();
  var map2 = <String, dynamic>{}; //other syntax

  map1["id"] = 5;
  map1["name"] = "Halil";
  map1["color"] = "Green";
  print("map1: $map1");

  var newMap = Map.from({'value': 'new'}); //created a new map from constructor
  print("newMap from constructor: $newMap");

  var mapFromEntries = Map.fromEntries(map1.entries);
  print("mapFromEntries copy map1: $mapFromEntries");

  var list1 = [1, 2, 3, 4, 2, 3, 1, 9];
  var mapFromIterable = Map.fromIterable(list1); //value,key same list to map
  print(mapFromIterable);

  var mapFromIterable2 = Map<String, String>.fromIterable(list1,
      key: (item) {
        return "$item";
      },
      value: (item) => "${item * 3}");
  print("mapFromIterable2: $mapFromIterable2"); //contect manupulation

  // LOOK FOR MORE -> https://api.dart.dev/stable/3.2.6/dart-core/Map-class.html
}
