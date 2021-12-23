void main() {
  print(UserWithStaticMember.minAge);
  UserWithStaticMember.greeting();
}

class UserWithStaticMember {
  String name;
  int age;
  UserWithStaticMember(this.name, this.age);

  static const minAge = 18;

  static void greeting() => print('Hello');
}
