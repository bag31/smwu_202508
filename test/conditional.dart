class Conditional {
  void simpoleIf() {
    int age = 20;
    bool check = false;
    if (age < 20) {
      print('Conditional.simpoleIf 미성년자');
    } else {
      print('Conditional.simpoleIf 성인');
    }
  }

  void simpleSwitch() {
    int age = 30;

    switch (age) {
      case 10:
        break;

      case 20:
        break;

      case 30:
        break;

      case 40:
        break;

      default:
        print('default');
        break;
    }
  }

  String practice_if(int score) {
    if (score >=90) return "A";
    if (score >=80) return "B";
    if (score >=70) return "C";
    if (score >=60) return "D";
    return "F";
  }

  String practice_switch(int score) {
    // score에서 10을 나누고 정수를 반환
    // ex) score= 90 => score ~/10 = 9
    // ex) score= 85 => score ~/10 = 8
    int value = score ~/10;
    switch (score ~/ 10) {
      case 9:
        return "A";
      case 8:
        return "B";
      case 7:
        return "C";
      case 6:
        return "D";
    }
    return "F";
  }
}
