void main() {
  try {
    int convertedNumber = int.parse('262w');
    print(convertedNumber);
  } catch (e) {
    print(e);
  }
  /////////
  try {
    int convertedNumber = int.parse('262w');
    print(convertedNumber);
  } on FormatException catch (e) {
    print(e);
  }
  /////////////
  try {
    int convertedNumber = int.parse('262w');
    print(convertedNumber);
  } on FormatException {
    print('sorry Format exception');
  } finally {
    print('I will always be run');
  }
  /////////////
  // try {
  //   int convertedNumber = int.parse('262w');
  //   print(convertedNumber);
  // } on FormatException {
  //   throw CustomException('format Exception');
  // }
}

// class CustomException implements Exception {
//   final String message;

//   CustomException(this.message);
// }
