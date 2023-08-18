// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct = Product.money;
  calculateMoney();

  // User classini kullanarak product yapalim

  final user1 = User('muhammet', 'aa');
  final newProduct2 = Product(user1.product);

  // apiKey neydi ? 
  print(ProductConfig.instance.apiKey);

}

void calculateMoney(){
  if(Product.money>5){
    print('5 tl eklendi');
    Product.incerementMoney(5);
    print(Product.money);
  }
}

class Product {
  static int money = 10;
  String name;
  
  Product(this.name);

  Product.muhammet([this.name = 'muhammet']);

  //constractor geriye deger dondurmez eger dondurmesi intenirse basina factory eklenir.
  factory Product.fromUser(User user){
    return Product(user.name);
  }

  static const companyName = 'my Bank';
  static void incerementMoney (int newMoney){
    money += newMoney;
  }
}

class User{
  final String name;
  final String product;

  User(this.name, this.product);

   
}