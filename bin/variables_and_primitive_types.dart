void main(List<String> arguments) {
  String nameValue = 'Almohannad';
  int intValue = 5;
  double doubleValue = 5.3;
  num numWithIntegerValue = 4;
  num numWithDouble = 4.2;
  bool boolValue = true;
  dynamic dynamicValue = 'dynamic';
  dynamicValue = 4;
  dynamicValue = true;
  dynamicValue = 4.9;
  var varValue = 'mohannad';
  var dynamicVarValue;
  dynamicVarValue = 4;

  String getStringFromFunction() => 'mm';
  //const x = getStringFromFunction(); ==> error should declared in compile-time
  final stringFromFunction = getStringFromFunction();
  const constValue = 5;

  print('nameValue: $nameValue');
  print('intValue: $intValue');
  print('doubleValue: $doubleValue');
  print('numWithIntegerValue: $numWithIntegerValue');
  print('numWithDouble: $numWithDouble');
  print('boolValue: $boolValue');
  print('dynamicValue $dynamicValue');
  print('varValue: $varValue');
  print('dynamicVarValue: $dynamicVarValue');
  print('stringFromFunction: $stringFromFunction');
  print('constValue: $constValue');
}
