// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_projects/main.dart';

import 'collections.dart';
import 'conditional.dart';
import 'for_loop.dart';
import 'method.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  // 20250821
  // Method();
  //
  // var collection = Collections();
  // collection.listAdd();
  // collection.listRemove();
  // collection.mapController();
  // collection.setController();
  // collection.practice();
  //
  // // var conditional1 = Conditional();
  // // conditional1.simpleSwitch;
  //
  // var conditional1 = Conditional();
  // conditional1.simpleSwitch;
  // var ifScore = conditional1.practice_if(99);
  // var ifSwitch = conditional1.practice_switch(10);
  // print('if score $ifScore | switch score $ifSwitch');

  // 20250822
  // ForLoop();
  //
  // Person person = Person('sehui', 10, 100);
  // // person : Instance of 'Person'
  // // Person 클래스의 인스턴스
  // // 인스턴스 => 클래스를 생성헤서 메모리에 올라간 상태
  // print("person : $person");
  // print('person name : ${person.name}');
  // print('person name : ${person.age}');
  // print('person name : ${person.weight}');
  // print('person name : ${person.nickName}');
  // person.talk();
  //
  // // 클래스 예제 1
  // List<Person> personList = [person];
  // print('personList before : $personList');
  // personList.add(Person("A", 1, 10));
  // print('personList after : $personList');
  //
  // //클래스 예제 1- answer
  // List<Person> personList1 = [];
  // Person person1 = Person('aa', 10, 100);
  // Person person2 = Person("bb", 2, 10);
  // // personList1에 데이터들을 추가
  // personList.addAll([person1, person2]);
  // // personList1의 기존 데이터들은 사라지고, 새로운 값 할당
  // personList1 = [person1, person2];
  // print('personList : $personList1');
  // for (var person in personList1) {
  //   print(person);
  // }
  //
  // // 실습 5
  // List<Product> productList = [];
  // Product product1 = Product(name: "Na", company: "Company 1");
  // Product product2 = Product(name: "Me", company: "Company 1");
  // Product product3 = Product(name: "EE", company: "Company 2");
  // productList.addAll([product1, product2, product3]);
  // for (var product in productList) {
  //   print(product);
  // }
  // product1.sale();
  // product1.sale();
  // product2.sale();
  // print('sale 함수 호출');
  // for (var product in productList) {
  //   print(product);
  // }

  // 실습 5- answer
  List<Product> productList1 = [];
  productList1.add(Product(name: "녹차", company: "스타벅스"));
  Product product01 = Product(name: '아이스티', company: '스타벅스 ');
  Product product02 = Product(name: '프라푸치노', company: '스타벅스 ');
  Product product03 = Product(name: '자몽망고코코', company: '스타벅스 ');

  for (var product in productList1) {
    print('product : $product01');
    product01.sale();
    print('product : $product01');
  }
  // productList1[1].sale();
  // productList1[1].sale();
  // productList1[1].sale();
  // productList1[1].sale();
  // print('p1 : ${productList1[1].count}');
}

