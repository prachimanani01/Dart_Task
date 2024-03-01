class ShoppingCart {
  List<String> items;
  double totalCost;
  ShoppingCart() {
    items = [];
    totalCost = 0.0;
  }
  void addItem(String item, double price) {
    items.add(item);
    totalCost += price;
  }
  void removeItem(String item) {
    int index = items.indexOf(item);
    if (index != -1) {
      double price = 10.0; 
      totalCost -= price;
      items.removeAt(index);
    }
  }
  @override
  String toString() {
    return 'ShoppingCart{items: $items, totalCost: $totalCost}';
  }
}
void main() {
  ShoppingCart cart = ShoppingCart();
  cart.addItem('Apple', 1.0);
  cart.addItem('Banana', 0.5);
  cart.addItem('Orange', 0.8);
  print(cart); 
  cart.removeItem('Banana');
  print(cart); 
}