void main() {
  User user1 = User(name: 'Almuhannad', age: 25);
  User user2 = User(name: 'Almuhannad', age: 25);

  print(user1 == user2);
}

class User {
  String name;
  int age;
  User({
    required this.name,
    required this.age,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
