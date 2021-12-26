part of 'main_file.dart';

void callPrivateClass() {
  _PackagedPrivateClass._('hi private');
}

void _privateFunction() {
  print('iam private');
}
