Future<void> main(List<String> args) async {
    print('A');
    await Future.delayed(Duration(seconds: 2));
    // 2 saniye bekletip sonra calistirir.
    print('B');

    // ikiser saniye aralikla calistiralim.
    Future.forEach([1, 2, 3, 4, 5], (int element) async{
    await Future.delayed(Duration(seconds: 2));
    print('islem bitti $element');
    }) ;

    //
    Stream<int> bankMoneys = Stream.empty();
    bankMoneys=dataAddBankMoney(10, 3);
    bankMoneys.listen((event){
      print(event);
    });
  }

  Stream<int> dataAddBankMoney(int retryCount, int money) async*{
    int _localRetry =0;
    await Future.delayed(Duration(seconds: 2));
    while (_localRetry<retryCount){
      _localRetry++;
      yield money +=5;
    }
  }
