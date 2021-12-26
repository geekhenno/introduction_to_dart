void main() {
  final admin = Admin('Almuhannad', 'Ghaleb');
  admin.sendMessage('Hello I am muhanand');

  final bot = Bot(123);
  bot.sendMessage('Hello I am bot');
}

class User {
  String firstName;
  String lastName;
  User(this.firstName, this.lastName);
}

mixin SendMessage {
  void sendMessage(String message) => print('the message $message was sent');
}

class Admin extends User with SendMessage {
  Admin(String firstName, String lastName) : super(firstName, lastName);
}

class Bot with SendMessage {
  final int id;
  Bot(this.id);
}
