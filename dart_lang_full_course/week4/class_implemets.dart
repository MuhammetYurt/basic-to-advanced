void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final int age;
  

  IStudent(this.name, this.age);
  int? schoolId;
  void saySomething(){
    print(age);
  }
  
}

class Student implements IStudent{
  final String name;
  final int age;

  Student(this.name, this.age);
  
  @override
  void saySomething() {
  }
  
  @override
  int? schoolId;
  
}

class Strudent2 implements IStudent{
  final String name;
  final int age;

  Strudent2(this.name, this.age);
  
  @override
  void saySomething() {
    print('a');
  }
  
  @override
  int? schoolId;
  
}