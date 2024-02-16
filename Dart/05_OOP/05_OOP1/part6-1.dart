import 'part6-2.dart';
import 'part6-3.dart';

void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* private variables - getter and setter */

  Database db = Database(); //create an object from databse class (part6-2.dart)
  //you cannot use/see privates such as db.name or db.isThereInternet();
  //you can use db.connect(); because it is not private
  Database db2 = Database.connectWithNamePass("Bugday", "01230123");

  Customer person1 = Customer(56);
  person1.printInfo();
  person1.custNoAssign = 952;
  person1.printInfo();
  print(person1.custNoGet);

  bool result = db.connect();
  if (result) {
    print("You connected");
  } else {
    print("Your username or password wrong!");
  }
}
