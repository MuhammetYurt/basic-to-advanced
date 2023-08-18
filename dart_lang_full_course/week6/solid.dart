// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {

  IDatabase database = SQL();
  database = Mongo();
  database.write();

}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name){
    this.name=name;
  }
  
}

class UserLocalization{
  final UserManager manager;

  UserLocalization(this.manager);
  void updateNameAndLocalization(){
    manager.changeUserName('a');
    changeLocalization();
  }
  void changeLocalization(){
    print('object');
  }
}

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product{
  ProductCategories(String name, String money) : super(name, money);

  final String category = 'kategori';
}

// 

abstract class IDatabase{
  void write();
}

class SQL extends IDatabase{
  @override
  void write() {
  }
}

class Mongo extends IDatabase{
  @override
  void write() {

    }

}

