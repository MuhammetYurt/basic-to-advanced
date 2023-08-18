void main(List<String> args) {
  List<int>moneys=[100, 110, 500, 250];
  print("musteri 1'in parasi: ${moneys[0]}");

  // Kucukten buyuge siralama
  moneys.sort();
  print(moneys);

  // Sona eleman ekleme
  moneys.add(5);
  print(moneys);

  // istenilen yere eleman ekleme
  moneys.insert(0, 70);
  print(moneys);

  // Listeyi temizleme
  moneys.clear();
  print(moneys);

  // 8 adet musteri olustur ve sırayla numarasına göre hepsine 5 ekle.

  List<double> customerMoney = List.generate(8, (index){
    return index+5;
  });
  print(customerMoney);
print("-------------------------------------------------");
  List<int> newCustomerMoney = [20, 355, 45, 60];
  for(int i=0;i<newCustomerMoney.length;i++){
    print("musteri:${i+1} kredinizi puaniniz:${newCustomerMoney[i]}");
    if (newCustomerMoney[i]>50) {
      print("kredi alabilirsiniz.");
      
    }else if(newCustomerMoney[i]<50&&newCustomerMoney[i]>40){
      print("Kredi icin biraz daha puana ihtiyaciniz var.");
    }else{
      print("Malesef suanda kredi alamazsiniz.");
    }
  }

}