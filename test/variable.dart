import 'package:flutter/cupertino.dart';

class Variable {

  Variable() {
    String name= '박세희';
    int age = 22;
    bool check = true;
    bool check2 = true;
    double weight = 48;

  //   var(type을 추론해서 알아서 간주해줌), dynamic 변수 타입
    var animal = 'dog';
    animal = 'cat';
    // animal = 0; // java는 에러 안 날텐데 얘는 최초 할당받은 타입만 가능

    // 네트워크 통신 같은 경우 뭐가 들어올지 몰라서 쓰는 경우 말고는 거의 안 씀
    dynamic home = false;
    home = 'my home';
    home = 0;
    
    // null 오류가 치명적이라 필요할 때 말고는 안 쓰는 거 추천
    String? smwu = 'yes'; // ?는 null 값을 허용한다는 뜻
    smwu = null;
    // Text(smwu); // null일 수 있어서 에러 표시 남. smwu = null 위에 두면 에러 안 남.
    int? age2 = 20;
    bool? h2 = false;
    h2 = null;

  //   final, const 변수의 값 변경 불가
  //   final, const 차이 = 컴파일 시점 차이
  //   컴파일 =사림이 작성한 코드를 컴퓨터가 인식할 수 있게 변환하는 작업
  //   const는 컴파일 시점에 값이 정해짐
  //   final은 런타임 시점에 값이 정해짐 -> 메모리에 올라옴
    final String name3 = 'sehui22';
    const String address = 'aaa';



  }
}
