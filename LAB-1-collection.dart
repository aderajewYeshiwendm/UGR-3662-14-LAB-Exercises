import 'dart:math';

void main() {
  // Generate a list of random numbers
  List<int> numbers = List.generate(20, (_) => Random().nextInt(20));

  // Print the original list of numbers
  print('Original List of Numbers: $numbers');

  // Create a set to store unique numbers
  Set<int> uniqueNumbers = Set.from(numbers);

  // Print the unique numbers
  print('Unique Numbers: $uniqueNumbers');
}
