void main(List<String> args) {
  String name = 'Muhammet';
  String lastName = 'Yurt';

  print (name+lastName);

  if(name == 'Muhammet'){}
  if(name != 'Muhammet'){}
  if(name.length < 'Muhammmet'.length){}
  if(name.length > 'Muhammmet'.length){}
  if(name.length <= 'Muhammmet'.length){}
  if(name.length >= 'Muhammmet'.length){}

  const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney= 30;

  myMoney = myMoney - (appleMoney ~/ disccount);
  print(myMoney);
  print(myMoney.isEven); // cift mi?
  print(myMoney.isOdd); // tek mi?
  
  print(myMoney%2); // 2 ile bolumunden kalan
  
}