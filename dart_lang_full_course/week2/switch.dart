void main(List<String> args) {
  final int classDegree = 2;
  bool isSucess = false;
  // 2 ise basarili
  // 1 ise orta
  // 0 ise gecer
  // diger durumlar basarisiz

  switch (classDegree){
    case 2:
    print('basarili');
    isSucess = true;
    break;
    case 1:
    print('orta');
    isSucess = true;
    break;
    case 0: 
    print('gecer');
    isSucess = true;
    break;
    default:
    print('basarisiz');
    isSucess = false;
  }
  print("Dersten gecme durumu $isSucess");

  // Isimler Ahmet ve Cemil'se onayla degilse onay verme 

  const String specialName1='Ahmet';
  const String specialName2='Cemil';
  String name = 'Emin';
  switch(name){
    case specialName1:
    case specialName2:
    print('Gecebilirsiniz.');
    break;
    default:
    print('Giris yapamazsiniz.');
  }


}