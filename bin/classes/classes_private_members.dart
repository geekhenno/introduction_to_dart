void main() {
  MyClass myClass = MyClass(10, 20);
  MyClass myClass2 = MyClass.namedConstructor(public: 1, private: 2);
  // we can access the private as long as we in the same package
  print(myClass._private);
  print(myClass2._private);
}

class MyClass {
  int public;
  int _private;

  MyClass(this.public, this._private);

  MyClass.namedConstructor({required this.public, required int private})
      : _private = private;
}
