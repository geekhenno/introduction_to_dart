void main() {
  final user = User.employee(true);
  print(user.fullName);
}

class User {
  String _firstName;
  String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';

  factory User.employee(bool isEmployee) {
    if (isEmployee) return Employee(firstName: 'Employee', lastName: 'User');
    return User('Normal', 'User');
  }
}

class Employee extends User {
  Employee({required String firstName, required String lastName})
      : super(firstName, lastName);
}
