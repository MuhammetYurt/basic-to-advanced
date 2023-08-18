void main(List<String> args) {
  // 'var' veri tipini kendisi belirler.
  var userName2= 'Muhammet2';

  // 'final' veri tipi daha sonradan degistirlemez veri tipidir.
  final int bankMoney = 150;

//------------------------------------
//Banka ismi MY BANK
//Bankuser1 bank1musteri
//bankuser1 in parasi 100.00
//bank1 musteriye kimse dokunamaz 
//yeni bir musteri gelecek adı bank2musteri 
//bankaya yeni gelenden bu bankuser1 parasini cikartip ekranda goster
//--------------------------------------
  //'const' asla değiştirilemez verileri tutar.

  const String bankName = 'MY Bank';
  const String user1 = 'Bank 1 Musteri';
  const double user1Money = 100.00;

  const String user2 = 'Bank 2 Musteri';
  int user2Money = 500;

  //'toInt()' double olan veriyi int veriye cevirdi.
  user2Money = user2Money - user1Money.toInt();

  print('User 2 money : $user2Money');


// Bir halisaha var 100 kisi kapasiteli 
// Saat 10 da 20 kisilik bir grup1 mac yapacak
// 20 kisi kesin gelecek
// saat 10 da grup2 gelip 50 kisilik yer ayırtacak
// bu islem sonrasında halisaha kapasitesi kac kalir?

int kapasite = 100;
String musteri1 = 'grup1';
final int saat1 = 10;
const int kisiSayisi1 = 20;
String musteri2 = 'grup2';
int kisiSayisi2 = 50;

int kalanKapasite = kapasite-kisiSayisi1-kisiSayisi2;

print("$musteri1 ve $musteri2 nin saat $saat1 da katilimiyla kapasite suanda $kalanKapasite");



}