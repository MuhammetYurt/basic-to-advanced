import '../week4/model/user_model.dart';

void main(List<String> args) {

  final user = _User('veli', age:24);
  
  // musterinin yasinin 18 den kucuk olup olamadigini kontrol et 
  // if((user.age ?? 0)>18){}
  if(user.age is int){
    if(user.age! >18){
      print('yetiskin');
      user.updateMoneyWithString('TR');
    }
  }

// Kullanicilarin parasi var ama para tipleri degisken olabilir.
// Parasi olan kisinin o parametresi bir isimde olabilir veya deger olabilir.
// tr yazacak ya da orada 15 gibi bir deger yazabilir.

  print((user.moneyType as String) + ' para birimi');

  print('--'*10);

  final moneyBank1 = Bank(45,'12');
  final moneyBank2 = Bank(30,'12');

  print(moneyBank1 + moneyBank2 );

  
  print(moneyBank1 == moneyBank2);

  
  // musterinin parasina 10tl ekleyip dondur, musterinin id sinin yanina 1 ekle ve ismini veli yap.

  moneyBank1.money += 10;
  print(moneyBank1.money); 
  
  moneyBank1..money +=10
            ..updateName('veli')
            ..id+='1';

  print(moneyBank1.id);
  print(moneyBank1.money);
  print(moneyBank1.name);

  }

class _User {
  final String name;
  int? age;
  

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString (String data){
    moneyType = data;
  }
  void updateMoneyWithNumber (int number){
    moneyType = number;
  }
  
}

class Bank with BankMixin{
  int money;
  String id;
  String? name;


  Bank(this.money, this.id);

  int operator + (Bank newBank){
    return this.money + newBank.money;
  } 

  void updateName (String name){
    this.name = name;
  }

  // id leri ayni olan musteri ayni kisi olmalidir.
  @override 
  bool operator == (Object object){
    return object is Bank && object.id == id;
  }
  
  @override
  void sayBankHello() {
    calculateMoney(money);
  }
  
}

//diger bankadan alinan modulu ekleyip sorgula 
mixin BankMixin {
  void sayBankHello();
  void calculateMoney (int money){
    print('money');
  }
}