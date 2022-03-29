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

