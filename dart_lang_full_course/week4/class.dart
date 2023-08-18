import 'model/user_model.dart';

void main(List<String> args) {
  //Bankaya 3 musteri gelir birinin 100tlsi var birinin bankada hic hesabi yok digerinin 0 tlsi var.

  // ? null gelebilecek verilerin onune konur.
  List<int?> customersMoney = [100,null,0];
  for (var item in customersMoney) {
    if(item != null){
      if(item>0){
        print('Hosgeldiniz.');
      }else{
        print('Hesabinizda hic para yok.');
      }
    }else{
      print('Bankamizda hesabiniz yok, hesap acmak ister misiniz?');
    }
    // parasi olanlari true yazalim
    // null? null olup olmadıgını kontrol eder
    // 1. yazan yani false eger null dogruysa yazar
    // 2. yazan null degilse yazar
    bool result = controlMoney(item) == null? false:true;
    print(result);
    
  }
  // *10 karakterden 10 tane daha yanyana yazar.
  print('-------------'*10);
  User user1 = User('Muhammet',50,age:24,city:'Istanbul', id: '1');
  User user2 = User('Veli',40,age: null,city:null, id: '2');
  final user3 = User('ali', 54,age: 7,city:null, id: '3');
  print(user1.name);
  print(user2.age);
  print(user3.money);
  print(user3.userCode);

// id numarasi 3 olana indirim yapalim.
  if(user3.isSprecialUser('3')){
    print('id-3e indirim yapildi');
  }
}
// yeni bir metod olsun parasi olmayani ve hesabi olmayani yok saysin
int? controlMoney (int? money){
  
    if(money !=null && money >0){
      return money;
    }
    if(money == null || money == 0){
      return null;
    }
    
  }

 