void main(List<String> args) {

  IUser user = Turk();

  user.sayName();
  user = English();

  user.sayName();
}

abstract class IUser{
  final String name;
   IUser(this.name);

   void sayName();
}

class Turk implements IUser{
  @override
  String get name => 'muhammet';

  @override
  void sayName() {
    print('merhaba, hosgeldin $name');
  }

}
class English implements IUser{
  @override
  String get name => 'josh';

  @override
  void sayName() {
    print('hello, wellcome $name');
  }

}