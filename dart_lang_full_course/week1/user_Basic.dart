void main(List<String> args) {
  //musterinin adini tut
  //musterinin parasini ogren
  //musteriye merhaba deyip parasini soyle
  //bizim bankaya yeni geldigi icin +5 tl ekle 

  int userMoney = 25;
  String userName = "Muhammet";
  userMoney = userMoney + 5 ;

  print("Merhaba $userName $userMoney");

  print("--------------");
  userMoney = userMoney-10;
  print("Paraniz deger kaybetti, guncel paraniz : $userMoney");

  double ahmetMoney = 15.2;

  ahmetMoney = ahmetMoney/2;

  print("Ahmet bey paranız yarıya dustu guncel bakiye:$ahmetMoney");

  //'~' işareti integer tipleri double halinin alt int degerini bulur
  userMoney = userMoney ~/3;
  print(userMoney);

  print("-----------------------");
  // Yeni bir user adi olustur
  // Yeni bir para ver
  // Bu parayı 20 ye bol ve ekranda goster

  String newUser = "Jhon_Wick";
  double newMoney = 745.25;
  print('$newUser Bey suanda bakiyeniz:$newMoney');
  newMoney /= 20;
  print('$newUser Bey hesabinizin guncel bakiyesi:$newMoney');
}