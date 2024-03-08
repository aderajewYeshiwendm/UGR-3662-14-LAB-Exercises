// ignore_for_file: unused_local_variable

import 'dart:io';

void main() {
  var name = 'Aderajew Yeshiwendm';
  var age = 21;
  var favoriteColor = 'Green';
  print('name: $name age: $age favoriteColor: $favoriteColor');

  const int speed = 299792458;
  print('enter distance:');
  double distance = double.parse(stdin.readLineSync()!);
  double second = distance / speed;
  print('$second seconds');
}
