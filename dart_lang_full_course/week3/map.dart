void main(List<String> args) {
  
  Map<String, int> users = {'ahmet':20, 'mehmet':30};
  print('ahmetin parasi ${users['ahmet']}');

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

 print('----------------------------------------------------------------------------');

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }
 print('----------------------------------------------------------------------------');
  // Bir bankada bir musterinin birden fazla hesabi olabilir.
  // Ahmet Bey 3 hesap sirasiyla 100, 200, 300
  // Mehmet Bey 2 hesap 30, 50
  // Veli Bey 1 hesap 30
  // Bir musterinin herhangi bir hesabinda 150 tl den fazla para varsa krediniz hazir de 

  final Map<String, List<int>> myBank = {
  'ahmet' : [100, 200, 300]
  };
  myBank['mehmet'] = [30, 50];
  myBank['veli'] = [30];

  for (var item in myBank.keys) {
    // bankanin tum elemanlari 
    for (var money in myBank[item]!) {
      // user hesaplarini dolasir
      if(money>150){
        print('krediniz hazir.');
        break;
      }
    }
  }
  print('----------------------------------------------------------------------------');

  // Bankadaki musterilerin toplam parasi nedir?

  for (var name in myBank.keys) {
    //  myBank[item]! --> musterinin hesaplari demek
    int result = 0;
    for (var money in myBank[name]!) {
      result += money;
    }
    print('$name Bey toplam paraniz: $result');
  }
  
  
}