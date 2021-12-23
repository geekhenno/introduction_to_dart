void main() {
  int age = 18;
  // if
  if (age > 0 && age < 18) {
    print('Child');
  } else if (age >= 18) {
    print('Young Adults');
  } else {
    print('Wrong age');
  }

  int number = 2;
  // switch
  switch (number) {
    case 1:
      print('number is one');
      break;

    case 2:
      print('number is two');
      break;

    default:
      print('non');
  }

  print('for loop:');
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  print('while loop:');
  while (number > 0) {
    print(number);
    number--;
  }

  print('do while loop:');
  do {
    print(number);
  } while (number > 0);
}
