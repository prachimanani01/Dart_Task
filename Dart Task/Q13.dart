class Restaurant {
  final Map<String, double> _menu = {
    'burger': 5.99,
    'pizza': 7.99,
    'salad': 3.99,
  };
  double _balance = 0.0;
  double getPrice(String item) {
    return _menu[item] ?? 0.0;
  }
  void order(String item) {
    if (_menu.containsKey(item)) {
      _balance += _menu[item]!;
    } else {
      print('$item is not on the menu');
    }
  }
  void pay(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('Payment of $\$amount processed successfully');
    } else {
      print('Insufficient balance');
    }
  }
  @override
  String toString() {
    String result = 'Menu:\n';
    _menu.forEach((key, value) {
      result += '$key: $\$$value\n';
    });
    result += 'Balance: $\$balance';
    return result;
  }
}
void main() {
  Restaurant myRestaurant = Restaurant();
  print(myRestaurant);
  myRestaurant.order('burger');
  myRestaurant.order('pizza');
  print(myRestaurant);
  myRestaurant.pay(10.0);
  print(myRestaurant);
  myRestaurant.pay(15.0);
  print(myRestaurant);
}