void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* Map structure */

  //it has a key and a value for every elements
  Map<String, int> cityCode = {"Ankara": 06, "İzmir": 35, "İstanbul": 34, "Denizli": 20};
  print(cityCode);
  print(cityCode["İzmir"]); //key is 'izmir' than value is '35'

  Map<int, dynamic> myInfo = {1: "Halil", 2: 1.88, 3: true}; //int, dynamic data type map.
  print(myInfo);

  Map<String, dynamic> map1 = {}; //null map
  map1["key1"] = 55; //added some value to the map1
  map1["key2"] = true;
  print(map1);

  print("***************");
  for (String temp in cityCode.keys) {
    print(temp); //for loop to take keys
    print(cityCode[temp]); //for loop to take values
  }

  print("***************");
  //for loop to just take values
  for (dynamic temp in cityCode.values) {
    print(temp);
  }

  print("***************");
  //for loop to just take both
  for (var temp in cityCode.entries) {
    print("Key: ${temp.key} , Value: ${temp.value}");
  }
}

