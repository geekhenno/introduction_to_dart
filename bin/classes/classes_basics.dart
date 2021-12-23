void main() {
  UserWithPositionalConstructor2 user1 =
      const UserWithPositionalConstructor2('almuhannad', 'ghaleb', 26);
  UserWithPositionalConstructor2 user2 =
      const UserWithPositionalConstructor2('almuhannad', 'ghaleb', 26);

  UserWithRequiredNamedConstructor user3 =
      UserWithRequiredNamedConstructor(name: 'almuhanand', age: 26);

  UserWithOptionalNamedConstructor user4 = UserWithOptionalNamedConstructor();

  print(user1 == user2);
  print(user3.name);
  print(user4.isAdultUser());
}

class UserWithPositionalConstructor {
  final String name;
  final int age;
  UserWithPositionalConstructor(this.name, this.age);

  bool isAdultUser() => age >= 18;
}

class UserWithRequiredNamedConstructor {
  final String name;
  final int age;
  UserWithRequiredNamedConstructor({required this.name, required this.age});
  bool isAdultUser() => age >= 18;
}

class UserWithOptionalNamedConstructor {
  final String? name;
  final int? age;
  UserWithOptionalNamedConstructor({this.name, this.age});
  bool isAdultUser() => age != null && age! >= 18;
}

class UserWithPositionalConstructor2 {
  final String name;
  final int age;
  const UserWithPositionalConstructor2(
      String firstName, String lastName, this.age)
      : name = '$firstName $lastName';
  bool isAdultUser() => age >= 18;
}
