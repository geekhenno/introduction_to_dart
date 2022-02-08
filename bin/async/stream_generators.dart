void main() {
  // we can use the collection functions
  showMessages().map((event) => event.toUpperCase()).listen((event) {
    print(event);
  });
}

Stream<String> showMessages() async* {
  yield 'Hi 👋🏻';
  await Future.delayed(Duration(seconds: 1));
  yield 'Iam Almuhanand 🥸';
  await Future.delayed(Duration(seconds: 1));
  yield 'I hope you enjoyed with this course 🥺';
}


/*

void main() {
  final list = [
    User('mohnnad', 10),
    User('mohnnad', 20),
    User('mohnnad', 30),
    User('mohnnad', 40),
    User('mohnnad', 50),
  ];

}

class User {
  String name;
  int age;
  User(this.name, this.age);
}

*/
