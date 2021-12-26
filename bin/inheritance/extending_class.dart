import 'package:meta/meta.dart';

void main() {
  Employee employee = Employee(firstName: 'Almuhanand', lastName: 'Ghaleb');
  employee.sayHi();
  print(employee.fullName);
  employee.youHaveToCallMe();
}

class User {
  String _firstName;
  String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';

  void sayHi() => print('Hi');

  @mustCallSuper
  void youHaveToCallMe() => print('thanks ... ');
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
  void youHaveToCallMe() {
    print('I called you 😍');
    super.youHaveToCallMe();
  }
}
