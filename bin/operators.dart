void main() {
  int number = 10;

  number++;
  number--;

  number += 1; // the same of  number = number + 1;
  number -= 1;
  number *= 1;
  number ~/= 2; // number = number ~/2 ; ==> use ~ to convert it to int directly

  bool isNegativeNumber = number < 0; // you can use number.isNegative
  print(isNegativeNumber.toString());

  String result = 'the number is: ' +
      number.toString() +
      ' and isNegativeNumber is: ' +
      isNegativeNumber.toString();
  print(result);

  // the better way is using string interpolation
  result = 'the number is: $number and isNegativeNumber is: $isNegativeNumber';
  print(result);

  // if we have mluti expression :
  int num1 = 1, num2 = 3, num3 = 6;
  print(
      'total equal: $num1 + num2 + num3'); // wrong way, take just the first one
  print('total equal: ${num1 + num2 + num3}');
}
