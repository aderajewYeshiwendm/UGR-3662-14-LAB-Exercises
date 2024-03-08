import 'dart:async';

// Simulated function to load data from a database asynchronously
Future<List<String>> loadDataFromDatabase() async {
  // Simulate database query delay
  await Future.delayed(Duration(seconds: 2));

  // Simulated data loaded from the database
  List<String> data = ['John', 'Alice', 'Bob', 'Emma', 'David'];

  return data;
}

void main() async {
  // Start loading data from the database asynchronously
  print('Loading data...');
  var data = await loadDataFromDatabase();

  // Data loaded successfully, print the results
  print('Data loaded successfully:');
  data.forEach((item) => print(item));
}
