class Bank {
  String name;
  String location;
  double balance;
  Bank(this.name, this.location, this.balance);
  void deposit(double amount) {
    balance += amount;
  }
  bool withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
  @override
  String toString() {
    return 'Bank{name: $name, location: $location, balance: $balance}';
  }
}
void main() {
  Bank bank1 = Bank('ABC Bank', 'New York', 5000.00);
  Bank bank2 = Bank('XYZ Bank', 'Los Angeles', 3000.00);
  print(bank1); 
  print(bank2); 
  bank1.deposit(1000.00);
  print(bank1);
  if (bank2.withdraw(500.00)) {
    print('Withdrawal successful');
  } else {
    print('Insufficient balance');
  }
  print(bank2); 
  if (bank2.withdraw(3500.00)) {
    print('Withdrawal successful');
  } else {
    print('Insufficient balance');
  }
  print(bank2); 
}