class Customer {
  int? _custNo;

  //Customer(this._custNo);
  Customer(int custNo) {
    _custNoControl(custNo);
  }

  void _custNoControl(int no) {
    if (no > 300) {
      _custNo = no;
    }
  }

  void printInfo() {
    print("Your customer no: $_custNo");
  }
}
