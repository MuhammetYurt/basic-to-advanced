 class User {
    // late ilk basta degeri yok sonradan degeri alacak
    late final String name;
    late final int money;
    late final int? age;
    late final String? city;
    late final String userCode;
    // yas ve sehiri belirtmeyebilir
    late final String _id;
    // _id private hale geldi '-' private yapmak icin kullanilir.

    User(String name, int money,{required String id, int? age, String? city}){
      this.name = name;
      this.money = money;
      this.age = age;
      this.city = city;
      _id=id;
      // userCode bos gelirse Ist olarak kabul et ?? anlami budur.
      userCode = (city ?? 'Ist');
    }

  bool isSprecialUser(String id){
    return _id == id;
  }
  }