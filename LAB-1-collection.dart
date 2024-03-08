void main() {
  // Create an empty map to store student names and their marks
  Map<String, int> studentMarks = {};

  // Add entries to the map using putIfAbsent
  studentMarks.putIfAbsent('John', () => 85);
  studentMarks.putIfAbsent('Alice', () => 90);
  studentMarks.putIfAbsent('Bob', () => 75);

  // Print the map
  print('Student Marks: $studentMarks');

  // Iterate over the map using forEach
  print('\nIterating over the map:');
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  // Check if a student name exists in the map using containsKey
  String studentName = 'Alice';
  if (studentMarks.containsKey(studentName)) {
    int marks = studentMarks[studentName]!;
    print('\n$studentName obtained $marks marks.');
  } else {
    print('\n$studentName is not found in the map.');
  }
}
