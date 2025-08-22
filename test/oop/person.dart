// 클래스에는 함수가 들어갈 수도 있고, 변수가 들어갈 수도 있음.
class Person{
  String name;
  int age;
  double weight;
  String nickName = "nick"; // 변수에 초기값이 있으면 this.nickName 없어도 됨.

  Person(this.name, this.age, this.weight);

  void talk(){
    print('$name이 대화를 신청했습니다.');

  }

  @override // 오버라이드 공부 필수
  String toString() {
    return 'Person{name: $name, age: $age, weight: $weight, nickName: $nickName}';
  }

  // void practice(){
  //   Person person = Person("B", 2, 20);
  //   List<Person> personList = [person];
  //   personList.add(Person("A", 1, 10));
  // }

}