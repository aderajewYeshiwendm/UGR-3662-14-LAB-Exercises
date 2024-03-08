class Student {
  String name;
  List<int> marks;

  // Constructor
  Student(this.name, this.marks);

  // Method to find the average mark of a student
  double findAverageMark() {
    if (marks.isEmpty) {
      return 0.0; // Return 0 if marks list is empty
    }
    // Calculate the sum of all marks
    int totalMarks = marks.reduce((value, element) => value + element);
    // Calculate the average mark
    return totalMarks / marks.length;
  }
}

void main() {
  // Create a Student object
  var student = Student('John', [80, 85, 90, 75, 95]);

  // Find the average mark of the student
  double averageMark = student.findAverageMark();

  // Display the average mark
  print('Average mark of ${student.name}: $averageMark');
}
