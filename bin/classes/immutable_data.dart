import 'package:meta/meta.dart';

void main() {
  final user = User(name: 'Almuhannad', age: 25);
  final userUpdated = user.copyWith(age: user.age + 1);
  print('age is : ${user.age}');
  print('age is : ${userUpdated.age}');
}

@immutable
class User {
  final String name;
  final int age;
  User({
    required this.name,
    required this.age,
  });

  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
