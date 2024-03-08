void main() {
  var person = Person();
  person.name = 'aderajew';
  person.age = 33;
  person.Address = 'addis ababa';
  person.Name;
  person.Name = 'yesho';
  person.Name;
  var student = Student(marks: [1, 2, 3], rollNumber: 7);
  print(student.average(student.marks));
  print(student.total(student.marks));
}

class Person {
  String? name;
  int? age;
  String? address;

  void get Name => print(name);
  set Name(value) {
    name = value;
  }

  void get Age => print(age);
  set Age(value) {
    age = value;
  }

  void get Address => print(address);
  set Address(value) {
    address = value;
  }
}

class Student extends Person {
  int rollNumber;
  List<double> marks;
  Student(
      {required this.marks,
      required this.rollNumber,
      String? name,
      int? age,
      String? address})
      : super();
  total(marks) {
    double sum = 0;
    for (int i = 0; i < marks.length; i++) {
      sum += marks[i];
    }
    return sum;
  }

  average(marks) {
    double sum = 0;
    for (int i = 0; i < marks.length; i++) {
      sum += marks[i];
    }
    return sum / marks.length;
  }
}
