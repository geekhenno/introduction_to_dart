void main() {
  String nesetdFunction() {
    return 'hi iam nested function';
  }

  nesetdFunction();
  topLevelFcunction();
}

String topLevelFcunction() {
  return 'hi iam top level function';
}

void myFunction() {
  topLevelFcunction();
  // nesetdFunction(); ==> can not access hte function because it is not in the top level
}

void positionalParamsFunction(String name, int age) {
  positionalParamsFunction('Almuhanand', 26);
}

// we can add a default value for the optional param [int age = 26]
void positionalOptionalParamsFunction(String name, [int? age]) {
  positionalOptionalParamsFunction('Almuhanand');
  positionalOptionalParamsFunction('Almuhanand', 26);
}

void namedOptionalParamsFunction({String? name, int? age}) {
  namedOptionalParamsFunction(name: 'Almuhanand', age: 26);
  namedOptionalParamsFunction(name: 'Almuhanand');
}

void namedRequiredParamsFunction({required String name, required int age}) {
  namedRequiredParamsFunction(name: 'Almuhanand', age: 26);
  // namedRequiredParamsFunction(name: 'Almuhanand');  // error because age is required argument
}

void positionalWithNamedParamsFunction(int age,
    {required String name, String? country}) {
  positionalWithNamedParamsFunction(26, name: 'Almuhannad');
  positionalWithNamedParamsFunction(26,
      name: 'Almuhannad', country: 'Saudi Arabia');
  // positionalWithNamedParamsFunction(name: 'Almuhannad', country: 'Saudi Arabia'); // error because age is required argument
  // positionalWithNamedParamsFunction(26, country: 'Saudi Arabia');// error because name is required argument
}
