import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_data.freezed.dart';

void main() {
  final user = User(name: 'Almuhannad', age: 26);
  print(user.age);
  final userUpdated = user.copyWith(age: user.age + 1);
  print(userUpdated.age);
}

@freezed
class User with _$User {
  const User._();
  const factory User({required String name, required int age}) = _User;
}
