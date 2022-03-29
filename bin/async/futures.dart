import 'package:dio/dio.dart';

Future<void> main() async {
  const String apiUrl = 'https://jsonplaceholder.typicode.com/users';
  print('loading ....');
  try {
    final response = await Dio().get(apiUrl);
    print(response.data);
  } catch (e) {
    print('sorry there is an error $e');
  }

  // or we can use the other approach but sometimes not recommended
  // Dio()
  //     .get(apiUrl)
  //     .then((response) => print(response.data))
  //     .catchError((e) => print('sorry there is an error $e'));
}
