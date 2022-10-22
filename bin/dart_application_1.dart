import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'package:test/scaffolding.dart';

void main() {
  
  print('\n \n \n');

  var human = new Human(name:'ahmed',age:22);
  human.printData();
  human.className();

  print('\n  \n \n');

  var student = new Student(school: 'factual of engineering' , name:'ahmed mohamed' , age:20);
  student.printData();

  print('\n the static class variable ${Student.collage}'); // static variables doesnot used in objects
////////////////////////////////////////////////////////
  print('\n @@@@@@@ \n \n the list is here :\n');

  List <String> names = ['ahmed' , 'mohamed' , 'yassin'];
  names.add('ibrahim');
  names.remove('yassin');
  names.removeAt(0);
  names.addAll(['1' , '2' , '3']);

  print('$names ${names.length} ${names.remove('yassindd')} ');

  for(String name in names){
    print(name);
  }
///////////////////////////////////////////
  print('\n @@@@@@@ \n \n the sets is here \n');

  var theSet = Set();                // لا تكرر العناصر 
  theSet.add('ahmed');
  theSet.add('ahmed');
  theSet.add('mohamed');
  theSet.remove('mohamed');

  print(theSet);

//////////////////////////////////////////
  print('\n @@@@@@@ \n \n the map is here : \n');
  
  var theMap = {'ahmed' : '17 years' , 'ibrahim' : '10 years old'};
  theMap.addAll({'mohamed' : '20 years old'});
  theMap['ahmed2'] = '21 yrears old';

  print(theMap);

  print('\n\n\n\n\n');
}

void printName (String name){
  print('name is $name');
}

abstract class theAbstract{
  void className(){
    print('abstract class is only for inheritance not for use');
  }
}

class Human extends theAbstract{
  String name = '';
  int age = 0;

  void printData(){
    print('the name is ${this.name} and the age is ${this.age}');
  }

  Human({name , age}){
    this.name = name;
    this.age = age;
  }
}

class Student extends Human{
  static String collage = 'cuf';
  String school = '';

  void printData(){
    super.printData();     // تضيف الدالة التي هي بنفس الاسم بدلا من استبدالها
    print('the school is ${this.school}');
  }

  Student({school , name , age }) : super(age:age , name:name){
    this.school = school;
  }
}
