void main() {
  IntGenericClass intGenericClass = IntGenericClass();
  print('integer value : ${intGenericClass.returnData()}');

  StringGenericClass stringGenericClass = StringGenericClass();
  print('String value : ${stringGenericClass.returnData()}');
}

abstract class GenericClass<T> {
  T returnData();
}

class IntGenericClass implements GenericClass<int> {
  @override
  int returnData() => 1996;
}

class StringGenericClass implements GenericClass<String> {
  @override
  String returnData() => 'Almuhannad';
}
