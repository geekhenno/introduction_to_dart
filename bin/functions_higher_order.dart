void main() {
  final calledTwiceFunction = twiceFunction((int x) => x + 10);
  final result = calledTwiceFunction(3);
  print(result);
}

typedef duplicate = int Function(int); // for simplifications

duplicate twiceFunction(duplicate function) {
  return (int number) {
    return function(function(number));
  };
}
