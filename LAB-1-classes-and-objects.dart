void main() {
  var person = Person();
  person.name = 'aderajew';
  person.age = 33;
  person.Address = 'addis ababa';
  person.Name;
  person.Name = 'yesho';
  person.Name;
}

class Person {
  String? name;
  int? age;
  String? address;

  void get Name => print(name);
  set Name(value) {
    name = value;
  }

  int? get Age => age;
  set Age(value) {
    age = value;
  }

  String? get Address => address;
  set Address(value) {
    address = value;
  }
}
