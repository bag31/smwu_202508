class JsonModel {
  String id;
  int number;

  // int age;
  // double weight;
  // String name;
  Info info;

  JsonModel(this.id, this.number, this.info);

  @override
  String toString() {
    return 'JsonModel{id: $id, number: $number, info: $info}';
  }
}

class Info {
  int age;
  double weight;
  String name;
  Description? description; // 실제로 null 이 나오는 경우가 많다.

  Info(this.age, this.weight, this.name, this.description);

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      json['age'] ?? 0,
      json['wegiht'] ?? 0.0,
      json['name' ?? ''],
      json['description'] == null // if 문 한 줄로 정리
          ? null
          : Description.fromJson(json['description']), // 삼항연산자
    );
  }

  @override
  String toString() {
    return 'Info{age: $age, weight: $weight, name: $name, description: $description}';
  }
}

class Description {
  String career;
  String when;

  Description(this.career, this.when);

  /// factory : named 생성가 같은거
  /// json에는 아래 데이터가 들어옴
  // {
  //       "career": "developer",
  //       "when": "2010-01-01"
  // }
  factory Description.fromJson(Map<String, dynamic> json) {
    return Description(
      json['career'] ?? '',
      json['when'] ?? '',
    ); // 코틀린은 ?: ''으로 스트링의 null 값을 방지한다.
  }

  @override
  String toString() {
    return 'Description{career: $career, when: $when}'; // 값 출력해서 보기ㅡ
  }
}

// class Framework {
//
// }
