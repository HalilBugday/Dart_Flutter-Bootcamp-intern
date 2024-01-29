class Customer {
  int? _custNo;

  //Customer(this._custNo);
  Customer(int custNo) {
    _custNoControl(custNo);
  }

//setter (mainde = de direkt değer atayabilirsin ()-> gerek yok)
  void set custNoAssign(int no) {
    if (no > 300) {
      _custNo = no;
    } else
      return;
  }

//getter
  String get custNoGet {
    return "Customer no: $_custNo";
  }

  void _custNoControl(int no) {
    if (no > 300) {
      _custNo = no;
    } else
      return;
  }

  void printInfo() {
    print("Your customer no: $_custNo");
  }
}
