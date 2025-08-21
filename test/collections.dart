class Collections {
  //   List, Map, Set
  void listAdd() {
    List<int> listInt = [];
    listInt.add(1);
    listInt.add(2);
    listInt.add(3);
    listInt.addAll([4, 5, 6, 7, 8]);

    listInt.insert(0, 50);

    print(listInt);
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.add("김진한");
    nameList.add("홍길동");
    nameList.add("이순신");
    nameList.add("오바마");
    nameList.add("기린");
    nameList.add("호랑이");
    nameList.add("사자");

    nameList.remove("기린");

    nameList.removeLast();

    nameList.removeAt(3);

    nameList.removeWhere((element) {
      return element == "호랑이";
    });

    print(nameList);

    nameList.clear();

    print(nameList);
  }

  void listController() {
    List<int> ageList = [4, 5, 2, 6, 7, 8, 9, 3];
    int length = ageList.length;
    print('Collections.listController : $length');

    int two = ageList[2]; // index를 입력한다.
    print('Collections.listController : $two');

    //   ageList가 비어있는 경우 isEmpty = true;
    bool isEmpty = ageList.isEmpty;

    //   ageList가 비어있지 않은 경우 isNotEmpty = true
    bool isNotEmpty = ageList.isNotEmpty;
  }

  void mapController() {
    Map m = {
      "a": 10,
      "b": 10,
      "c": 10,
      50: 61,
      1111: 4444,
    };

    var maValue = m["a"];
    print('Collections.mapController : $maValue');

    m["d"] = 40;
    m.remove("c");
    print('Collections.mapController m : $m');

    Map<String, int> typedMap = {"a": 10 ,"b": 20, "c": 30};
    print('Collections.mapController typedMap : $typedMap');
  }

  void setController(){
    Set s = {'a', 'b', 'c'};
    s.add("a");
    s.add("b");
    print('setController : $s');
  }

  void practice(){  // self
    List<String> listPrac = [];
    listPrac.add("개");
    listPrac.add("고양이");
    listPrac.add("기린");
    listPrac.add("호랑이");
    listPrac.add("사자");
    print('Collections.practice : $listPrac');
    listPrac.removeAt(1);
    print('Collections.practice : $listPrac');

    Map prac = {
      "a" : 1,
      "b" : 2,
      "c" : 3,
    };
    print('Collections.practice : $prac');

    prac.remove("b");
    print('Collections.practice : $prac');

    Set setPrac = {};
    setPrac.addAll(['미국', '한국', '중국', '일본', '러시아']);
    print('Collections.practice : $setPrac');

    setPrac.remove("미국");
    print('Collections.practice : $setPrac');

  }

  void practice2(){ // answer
    List<String> animals = [];
    animals.addAll(['강아지', '고양이', '송아지','햄스터','기린']);
    print('Collections.practice2 : $animals');
    animals.removeAt(1);
    print('Collections.practice2 : $animals');

    Map<String, int> ageMap = {'김진환':34};
    ageMap["박세희"] = 22;
    ageMap['박'] = 100;
    print('Collections.practice2 : $ageMap');

    ageMap.removeWhere((key, value) {
      return key == "박세희";
    },);
    print('Collections.practice2 : $ageMap');
    
    Set nation = {};
    nation.add("한국");
    nation.add("일본");
    nation.add("중국");
    nation.add("러시아");
    nation.add("미국");
    print('Collections.practice2 set 1: $nation');

    nation.remove("한국");
    print('Collections.practice2 set 2: $nation');
  }
}
