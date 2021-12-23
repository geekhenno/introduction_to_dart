void main() {
  // List numbers = [0, 1, 2];  ==> dynamic
  List<int> numbers = [0, 1, 2]; // we can use final insted of List<int>
  print(numbers.length);
  print(numbers.first);
  print(numbers[2]);

  <int>[0, 1, 2]; //   ==> we can use it without variable

  Map<String, dynamic> map = {'name': 'Almuhannad', 'age': 26};
  print(map['name']);
  print(map['age']);

  Set<int> mySet = {0, 1, 2, 2}; // it ignores the duplicated values
  print(mySet);

  // ---------------------------------------

  final evenNumbers = numbers.where((number) => number.isEven).toList();
  print(evenNumbers);
  final isEvenNumbers = numbers.map((number) => number.isEven).toList();
  print(isEvenNumbers);

  print('for loop');
  for (int index = 0; index < numbers.length; index++) {
    print(numbers[index]);
  }

  print('for loop');
  for (int number in numbers) {
    print(number);
  }

  print('forEachloop');
  numbers.forEach(print); // same of numbers.forEach((number) => print(number));

  int number = 25;
  final list1 = <String>[
    'Hi number you are',
    if (number.isEven) 'Even' else 'Odd', // or number.isEven ? 'Even' : 'Odd',
  ];
  print(list1);

  final list2 = [
    for (int number in [1, 2, 3]) number.toString(),
  ];
  print(list2);

  // combine two lists
  final list3 = [...list1, ...list2]; // or list3 = list1 + list2;
  print(list3);
}
