import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print('even');
  } else {
    print('odd');
  }
}
