void main() {}

abstract class User {
  final String fullName;
  User(this.fullName);

  void checkNameValidation();
}

// we can implement any class , but usually we implements the abstract classes
// if we implement a non abstract class the all implemntion body will be ignored
class Student implements User {
  @override
  void checkNameValidation() {
    print(fullName.length > 6);
  }

  @override
  String get fullName => fullName;
}
