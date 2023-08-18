void main(List<String> args) {
  final userNormal = User('my', 50);
  final usersBank = BankUser('muh', 50, 10);
  final userSpecial = SpecialUser('muha', 40, 9, 15);

  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculateMoney());
  print(userSpecial.money);

}

//Butun banka kullanicilarinin paralarini gormeli, banka ismiyle birlikte.
abstract class IUser{
final String name;
final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName(){
    print('$name - $money paraniz var.');
  }
}


class User extends IUser{
  final String name;
  final int money;

  User(this.name, this.money) : super (name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode):super (name, money);

  void BankSpecialLogic(){
    print(money);
  }
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _discount;

  SpecialUser(this.name, this.money, this.bankingCode, int discount):super (name, money){
    _discount = discount;
  }

  int calculateMoney(){
    return money - (money ~/ _discount);
  }
}