class ForLoop {

  ForLoop(){
    normalForLoop();
    enhancedForLoop();
    forEachForLoop();
    practice();
    practice2();
  }
  void normalForLoop() {
    for (int i = 0; i < 5; i++) {
      print("normal for : index : $i");
    }

    List<int> ageList = [10, 20, 30, 40, 50, 60];

    for(int i=0; i<ageList.length; i++){
      print('ageList index : $i, value : ${ageList[i]}');
    }
  }

  void enhancedForLoop(){
    List<int> ageList = [10, 20, 30, 40, 50, 60];
    for(int value in ageList){
      print('enhancedForLoop $value');
    }
  }

  void forEachForLoop(){
    List<int> ageList = [10, 20, 30, 40, 50, 60];

    ageList.forEach((element) {
      print('forEachForLoop : $element');
    },);
  }

  void practice(){
    print('실습 연습');
    List<double> ageList = [10, 20, 30, 40, 50, 60];
    
    for(int i=0; i<ageList.length; i++){
      print('normal index : $i, value : ${ageList[i]}');
    }

    for(double value in ageList){
      print('enhancedForLoop $value');
    }

    ageList.forEach((element) {
      print('forEachForLoop : $element');
    },);
  }

  void practice2(){
    print('실습 연습-answer');
    List<double> values = [10, 2.1, 4.2, 5.6];

    for(int i=0; i < values.length; i++){
      print('practice normal : ${values[i]}');
      // print('practice normal : ' +values[i].toString()); // double 타입은 +바로 못씀.
    }

    for (var value in values) {
      print('pratice enhanced : $value');
    }

    values.forEach((element) {
      print('practice forEach : $element');
    },);
  }

}
