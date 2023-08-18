void main(List<String> args) {
  final int money = 15;
  String userName = 'Muhammet';
  // bool => 0, 1
   bool isCustomerRich = false;
   print('$money' + userName);
  // if else

  if (money>10) {
    print('Musteri zengin.');
  }else{
    print('Musteri zengin degil.');
  }

//musteri bankaya gelir ve 10tlsi vardır, bir sorgu yapar.
// sorgu sonucu 20 tlsi alinir fakat parasi sorguya yeterliyse.
// eger kalan parasi sifirdan kucukse bankadan kovulur.
//eger parası bankingCost a yetmiyorsa bankaya alinmaz. 

int newCustomerMoney = 10;
const int bankingCost = 5;
const int bankingCostGeneral = 20;


if (newCustomerMoney > bankingCost) {
  print("Hosgeldiniz Beyefendi.");
  newCustomerMoney -= bankingCostGeneral;
}else if(newCustomerMoney>0){
print("Beyefendi lutfen sira aliniz.");
}else{
  print("Beyefendi lutfen kredinizi odeyin.");
}
print("-----------------------------------------------------");
// bir magazaya isim verilecek 
// ornek isimler toplanir
// ornek isimler: ahmet, mehmet, veli, kx, x
// magaza sadece karakter uzunlugu 2 veya daha altı olanlari gorecektir
// bu kosula uyanlar magazada yanyana gorulecek aralarinda bosluk olacak.

final String ahmetCompany = 'Ahmet';
final String mehmetCompany = 'Mehmet';
final String veliCompany = 'Veli';
final String kxCompany = 'Kx';
final String xCompany = 'X';

int companyLenght = 2;
String result = "";

if (ahmetCompany.length>companyLenght) {
  result += ahmetCompany;
}
if (mehmetCompany.length>companyLenght) {
  result += mehmetCompany;
}
if (veliCompany.length>companyLenght) {
  result += veliCompany;
}
if (kxCompany.length>companyLenght) {
  result += kxCompany;
}
if (xCompany.length>companyLenght) {
  result += xCompany  ;
}

print(result);


}