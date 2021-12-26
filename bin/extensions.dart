void main() {
  String value = 'a';
  String concatenateValue = value.concatenate(3);
  print(concatenateValue);
}

extension StringConcatenate on String {
  String concatenate(int times) {
    String text = '';
    for (int i = 0; i < times; i++) {
      text += this;
    }
    return text;
  }
}
