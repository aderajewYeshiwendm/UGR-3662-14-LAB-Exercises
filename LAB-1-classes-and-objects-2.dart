import 'dart:math';

// class Rectangle {
//   double width;
//   double height;

//   Rectangle(this.width, this.height);

//   double calculateArea() {
//     return width * height;
//   }

//   double calculatePerimeter() {
//     return 2 * (width + height);
//   }
// }

void main() {
  // var rectangle = Rectangle(5.0, 3.0);

  // double area = rectangle.calculateArea();
  // print('Area: $area');

  // double perimeter = rectangle.calculatePerimeter();
  // print('Perimeter: $perimeter');
  // var product = Product('Smartphone', 500.0, 2);

  // // Calculating and displaying total cost
  // double totalCost = product.calculateTotalCost();
  // print('Total cost of ${product.name}: \$${totalCost.toStringAsFixed(2)}');
  var circle = Circle(5.0);
  // Calculating and displaying area of the circle
  print('Area of Circle: ${circle.calculateArea().toStringAsFixed(2)}');

  // Creating a Square object
  var square = Square(4.0);
  // Calculating and displaying area of the square
  print('Area of Square: ${square.calculateArea().toStringAsFixed(2)}');
}

// class Product {
//   String name;
//   double price;
//   int quantity;

//   Product(this.name, this.price, this.quantity);

//   double calculateTotalCost() {
//     return price * quantity;
//   }
// }

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);
  @override
  double calculateArea() {
    return side * side;
  }
}
