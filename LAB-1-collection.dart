import 'dart:io';

void main() {
  // Create an empty map to represent the shopping cart
  Map<String, int> shoppingCart = {};

  // Simulate shopping
  addToCart(shoppingCart, 'Apples', 2);
  addToCart(shoppingCart, 'Bananas', 3);
  addToCart(shoppingCart, 'Oranges', 1);

  // Display the current items in the shopping cart
  print('Items in the shopping cart:');
  displayCart(shoppingCart);

  // Calculate and print the total price of items in the cart
  double totalPrice = calculateTotalPrice(shoppingCart);
  print('Total price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove an item from the cart
  removeFromCart(shoppingCart, 'Bananas');

  // Display the updated items in the shopping cart
  print('\nItems in the shopping cart after removing Bananas:');
  displayCart(shoppingCart);
}

// Function to add an item to the shopping cart
void addToCart(Map<String, int> cart, String productName, int quantity) {
  if (cart.containsKey(productName)) {
    // Increment the quantity if the product is already in the cart
    cart[productName]! += quantity;
  } else {
    // Add the product to the cart with the specified quantity
    cart[productName] = quantity;
  }
}

// Function to remove an item from the shopping cart
void removeFromCart(Map<String, int> cart, String productName) {
  if (cart.containsKey(productName)) {
    // Remove the product from the cart
    cart.remove(productName);
    print('$productName removed from the cart.');
  } else {
    print('$productName is not in the cart.');
  }
}

// Function to calculate the total price of items in the shopping cart
double calculateTotalPrice(Map<String, int> cart) {
  double totalPrice = 0;
  // Define the prices of each product (you can replace these with actual prices)
  Map<String, double> prices = {
    'Apples': 1.50,
    'Bananas': 0.75,
    'Oranges': 2.00,
  };

  // Iterate over each item in the cart and calculate the total price
  cart.forEach((productName, quantity) {
    if (prices.containsKey(productName)) {
      totalPrice += prices[productName]! * quantity;
    }
  });

  return totalPrice;
}

// Function to display
