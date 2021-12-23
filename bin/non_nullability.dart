void main() {
  // String nullValue = null;  ==> error (null safty)

  /*
  error (null safty)
  String nullValue;
  print(nullValue.isEmpty);
   */

  /*
  error (null safty)
  String? nullValue;
  print(nullValue.isEmpty);
   */

  /*
  exception
  String? nullValueException;
  print(nullValueException!.isEmpty);
   */

  // exception

  String? nullValue;
  print(nullValue?.isEmpty);
}
