void main() {
  // Create a list of favorite hobbies
  List<String> hobbies = ['Reading', 'Coding', 'Music', 'Hiking'];

  // Print the initial list of hobbies
  print('Initial List of Hobbies: $hobbies');

  // Add a new hobby to the list
  hobbies.add('Gardening');
  print('List after adding a hobby: $hobbies');

  // Remove a hobby from the list
  hobbies.remove('Cooking');
  print('List after removing a hobby: $hobbies');

  // Sort the list of hobbies alphabetically
  hobbies.sort();
  print('List after sorting: $hobbies');

  // Check if the list is empty
  if (hobbies.isEmpty) {
    print('The list of hobbies is empty.');
  } else {
    print('The list of hobbies is not empty.');
  }
}
