enum UserType { superAdmin, admin, user }
void main() {
  final userType = UserType.superAdmin;
  print(userType.index);

  switch (userType) {
    case UserType.user:
      print('you are a user');
      break;

    case UserType.admin:
      print('you are an admin');
      break;

    case UserType.superAdmin:
      print('you are asuper admin');
      break;

    // if we want to compare a sub of the enums we can add to ignore the warning
    // default:
    //   break;
  }
}
