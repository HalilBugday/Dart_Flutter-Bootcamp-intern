void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* polymorphism and advantage of inheritance, upcasting */

  User user1 = NormalUser(); //Upcasting (create a child from a parent)
  User user2 = AdminUser();
  User user3 = User();
  User user4 = PrimeUser();

  List<User> allUsers = [];
  allUsers.add(user1);
  allUsers.add(user2);
  allUsers.add(user3);
  allUsers.add(user4);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
}

void test(User aUser) {
  aUser.enterSystem(); //polymorphism <3 (bir türün bir başka tür gibi davranabilme ve bu tür gibi kullanılabilme özelliği)
}

//parent class
class User {
  String email = "";
  String passw = "";

  void enterSystem() {
    print("Parent entered the system.");
  }
}

//child class of User
class NormalUser extends User {
  void sendAInvitation() {
    print("$email user sent an invitation!");
  }

  @override //üst classdan methodu al ve özelleştir.
  void enterSystem() {
    print("Normal user entered the system");
  }
}

//child class of User
class AdminUser extends User {
  void totalUser() {
    print("20 user is active right now!");
  }

  @override
  void enterSystem() {
    print("Admin user entered the system");
  }
}

//child class of NormalUser
class PrimeUser extends NormalUser {
  void packetInfo() {
    print("The prime users have gold!");
  }

  @override
  void enterSystem() {
    print("Prime user entered the system");
  }
}
