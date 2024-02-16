//private variable ->  'datatype _name = ".."'; ( '_' is mean that make it private)
//private method -> 'String _isBla' --- ( '_' is mean that make it private)
//not: if you want to make it private, the class must another dart folder.
import 'dart:math';

class Database {
  String _userName = "Halil";
  String _passw = "123456";

  Database(); //constructor
  Database.connectWithNamePass(String name, String passw); //named constructor

  bool connect() {
    if (_isThereInternet()) {
      if (_userName == "Halil" && _passw == "123456") {
        return true;
      } else
        return false;
    } else {
      return false;
    }
  }
}

bool _isThereInternet() {
  bool temp = Random().nextBool();
  if (temp) {
    return true;
  } else {
    return false;
  }
}
