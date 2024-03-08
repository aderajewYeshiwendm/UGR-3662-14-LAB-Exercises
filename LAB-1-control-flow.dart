import 'dart:io';

void main() {
  // int number = int.parse(stdin.readLineSync()!);
  // if (number % 2 == 0) {
  //   print('even');
  // } else {
  //   print('odd');
  // }

  // for (int i = 1; i <= 10; i++) {
  //   print(i);
  // }

  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  String? operation = stdin.readLineSync();
  switch (operation) {
    case '+':
      print(a + b);
      break;
    case '-':
      print(a - b);
      break;
    case '*':
      print(a * b);
      break;
    default:
      print(a / b);
  }
}
