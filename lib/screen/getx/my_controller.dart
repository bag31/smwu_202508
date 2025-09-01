import 'package:get/get.dart';

class MyController extends GetxController {
  /// Get.find => Get 안에 등록된 Controller를 불러오는 역할
  /// MyController는 return 타입
  /// get은 불러온다는 키워드
  /// to는 변수명
  static MyController get to => Get.find<MyController>();

  /// GetX 상태관리의 2가지 요소
  /// 1. Rx로 선언된 변수
  ///
  RxInt count = 0.obs;

  void countUp() {
    count.value++;
  }
}
