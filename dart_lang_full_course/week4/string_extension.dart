void main(List<String> args) {
  if ('admin'.isAdmin()) {
    print('basarili');
  }else{
    print('basarisiz');
  }
}

extension StringUserCheckExtension on String{
  bool isAdmin(){
    return this.toLowerCase() == 'admin'.toLowerCase();
  }
}