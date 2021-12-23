void main() {
  User user = User(firstName: 'Almuhannad', lastName: 'Ghaleb');
  user.email = 'a@a.com';
  print(user.email);
}

class User {
  String firstName;
  String lastName;
  String? _email;
  User({
    required this.firstName,
    required this.lastName,
    String? email,
  }) {
    this.email = email;
  }

  // String getFullName() => '$firstName $lastName'; // there is a better way

  String get name => '$firstName $lastName';
  String get email => _email!;

  set email(String? value) {
    if (value != null && value.contains('@')) {
      _email = value;
    } else {
      _email = 'Wrong Format';
    }
  }
}
