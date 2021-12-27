Future<void> main() async {
  int timer = 0;
  final stream = Stream.periodic(Duration(seconds: 1));
  final subscription = stream.listen((event) {
    print('${++timer}');
  });
  await Future.delayed(Duration(seconds: 5));
  subscription.cancel();
}
