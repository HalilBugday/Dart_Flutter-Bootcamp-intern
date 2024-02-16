void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /* inheritance and method overriding */
  User user1 = User();
  user1.enterSystem();
  NormalUser user2 = NormalUser();
  user2.email = "hbgdy@gmail.com";
  user2.passw = "123";
  user2.enterSystem();
  user2.sendAInvitation();
  PrimeUser user3 = PrimeUser();
  user3.passw = "323";
  user3.sendAInvitation();
  AdminUser user4 = AdminUser();
  // user4.sendAInvention(); --> can not access because admin and normal user are in the same level!
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
}

//child class of NormalUser
class PrimeUser extends NormalUser {
  void packetInfo() {
    print("The prime users have gold!");
  }
}
