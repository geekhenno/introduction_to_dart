part 'other_file.dart';

void main() {
  _privateFunction();
}

class _PackagedPrivateClass {
  final String _privateField;
  _PackagedPrivateClass._(this._privateField);
}
