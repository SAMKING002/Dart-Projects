
class BankAccount {
  //private variable
  double _balance;
  //parametized constructor
  BankAccount(this._balance);
  //function that makes the private variable accessible
  double get balance => _balance;
  //function that sets a value to the variable
  set balance(double value) {
    if (value > 0) {
      _balance = value;
    } else {
      print("balance cannot be less than 0");
    }
  }

  details() {
    print(balance);
  }
}

void main() {
  //create an object
  var account = BankAccount(7);
  //updated radius
  account.balance = 0;
  account.details();
}
