
void main(List<String> args) {
  final int userMoney =0;
  controlUserMoney(userMoney, 0);
  final int userMoney2 = 5;
  controlUserMoney(userMoney2, 2);


//-----------------------------------------------



  final int musteriTurkLirasi = 6500;
   int dolar = 27;
  print(convertToDolar(musteriTurkLirasi , dolar));

//---------------------------------------------------


List<dynamic> users = [5, 'a', true];
for (var item in users) {
  print(item);
}


}
void controlUserMoney(int money, int minValue){
  if(money>minValue){
    print("paraniz var");
  }else{
    print("paraniz yok");
  }
}
int convertToDolar (int musteriParasi, int dolarTl){
  return musteriParasi ~/ dolarTl;

}

