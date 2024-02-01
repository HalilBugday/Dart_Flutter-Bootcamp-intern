void main(List<String> args) {
  //https://dart.dev/guides --> everything about dart!!!
  /*late keyword*/

  final myFood = Food();
  myFood.setFoodName('Pizza');
  print(myFood.foodName);
}

class Food {
  late final String foodName; //late is like assertion '!'

  void setFoodName(String foodName) {
    this.foodName = foodName;
  }
}
