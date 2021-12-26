import 'package:meta/meta.dart';

void main() {
  // User user = User(); ==> Abstract classes can't be instantiated

  Employee employee = Employee(firstName: 'Almuhannad', lastName: 'Ghaleb');
  employee.withoutImplemntation();
  print(employee.firstNameLength);
}

abstract class User {
  String _firstName;
  String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';

  void sayHi() => print('Hi');

  void withoutImplemntation();

  int get firstNameLength;
}

class Employee extends User {
  Employee({required String firstName, required String lastName})
      : super(firstName, lastName);

  @override
  String get fullName => 'Iam an employee: ${super.fullName}';

  @override
  void sayHi() {
    print('Hi iam An employee');
  }

  @override
  void withoutImplemntation() {
    print('I am withoutImplemntation');
    // I have to ovveride unimplemented functions
  }

  @override
  int get firstNameLength => _firstName.length;
}
