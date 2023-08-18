void main(List<String> args) {

  final customerMouse = Mouses.logitech;
  print(customerMouse.index);

  switch(customerMouse){
    case Mouses.logitech:

    case Mouses.apple:

    case Mouses.magic:
  }
  if(customerMouse.isCheckName('logitech')){
    print('dogru');
  }

}


enum Mouses { 
  magic,
  apple,
  logitech,


}

extension MousesSelectedExtension on Mouses {

  bool isCheckName(String name){
    
    return this.name == name;
  }
}