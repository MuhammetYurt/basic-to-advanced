// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../week4/model/user_model.dart';

void main(List<String> args) {

final model = CarModel(model: CarModels.bmw, name:  'bmw x5', money: 15, isSecondHand: false);

final carItems = [
  CarModel(model: CarModels.bmw, name:  'bmw x5', money: 13, isSecondHand: false),
  CarModel(model: CarModels.toyota, name:  'corolla', money: 5,),
  CarModel(model: CarModels.opel, name:  'astra', money: 5, isSecondHand: false),
  CarModel(model: CarModels.bmw, name:  'bmw m5', money: 15,),
  CarModel(model: CarModels.ford, name:  'mustang', money: 17, isSecondHand: false),
];
// arabalarin kac tanesi ikinic el 

  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  // yeni bir araba ekle ve bu arada digerleriyle ayni mi kontrol et 

  final newCar = CarModel(model: CarModels.ford, name:  'mustang', money: 17, isSecondHand: false);
  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('ayni aractan elimizde var.');
  }else{
    print('elimizde bu arabadan yokmus.');
    
  }

  // bmw olan parasi 14 ten buyuk arabalari sirala

  final resultBmwMore14 = carItems.where((element){
    return element.model == CarModels.bmw && element.money >14;
  }).join();
  print(resultBmwMore14);

  // arabalarin isimlerini yan yana goster.
  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  // elimizde mercedes var mi

  
  try { // deneme yapar varsa calistirir
      final mercedesCar = carItems.singleWhere((element) => element.model == CarModels.mercedes);
      print(mercedesCar.name);
  } catch (e) { //deneme basarili olmazsa burayi calistirir
    print('mercedes model araba yok.');
  }finally{ //burdaki her kod calisir.
    print('bu islem yapildi.');
  }

  // new car kacinci indexte ?
  final index = carItems.indexOf(newCar);
  print(index);

  // yeni araba geldi mercedes bunu ekleyelim.

  final _mercedes = CarModel(model: CarModels.mercedes, name: 'merso', money: 10);
  carItems.add(_mercedes);

  // arabalarin fiyatlarini kucukten buyuge sirala.

  carItems.sort((first, second)=> first.money.compareTo(second.money));
  print(carItems);

  // arabalarin fiyatlarini buyukten kucuge sirala.
  carItems.sort((first, second)=> second.money.compareTo(first.money));
  print(carItems);

  // arabalari user yapalim.

  final users = carItems.expand((element) => element.users).toList();

  // son eklenen arabayi silelim.
  // hem bmw olan ve hem de 15 den dusuk fiyatli olanlari silelim.

  print('----------------'*10);
  calculateToUser(carItems);
  carItems.remove(_mercedes);
  carItems.removeWhere((element) => element.model == CarModels.bmw && element.money<15);
  print(carItems);

  print('----------------'*10);


}

// bmw olan modelleri toyota yap.
// ikinci elleri sifir yap.

void calculateToUser(List<CarModel> items){
  final _items = [...items.toList()];
  final newItems = _items.map((CarModel e){

    if(e.isSecondHand){
      e.isSecondHand = false;
    }

    return CarModel(model: e.model == CarModels.bmw ? CarModels.toyota : e.model, 
    name: e.name ,
    money: e.money,
    isSecondHand: false);

  }).toList();
  print(newItems);
}


// Bir araba sinifi olustur 
// Arabalarin modeli (bmw,toyota...), ismi, parasi kesin olacak sehri olmayacak. 
// Ikinci el durumunu musteri soylemezse her urun ikinci el kabul edilecek.
// 5 adet araba olacak.

class CarModel {
  CarModels model;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;

  List<User> users;

  
  CarModel({
    required this.model,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
    this.users = const []
  });

 

  @override
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.model == model &&
      other.name == name &&
      other.money == money &&
      other.city == city &&
      other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return model.hashCode ^
      name.hashCode ^
      money.hashCode ^
      city.hashCode ^
      isSecondHand.hashCode;
  }
  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels {
  bmw,
  toyota,
  opel,
  ford,
  mercedes
}