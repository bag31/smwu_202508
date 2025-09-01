import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/getx/my_controller.dart';
import 'package:get/get.dart';

class GetxScreen extends StatefulWidget {
  const GetxScreen({super.key});

  @override
  State<GetxScreen> createState() => _GetxScreenState();
}

class _GetxScreenState extends State<GetxScreen> {
  @override
  Widget build(BuildContext context) {
    MyController.to;

    return Scaffold(appBar: AppBar(title: Text("Getx"),),
      body: Column(
        children: [


          /// GetX 상태관리의 2가지 요소
          /// 1. Rx로 선언된 변수
          /// 2. Obx로 감쌀 것.
          /// 알아서 자동 업데이트된다.
          Obx(() {
            return Text(MyController.to.count.value.toString());
          },),
          ElevatedButton(onPressed: () {
            MyController.to.countUp();
          }, child: Text("Count up")),
          ElevatedButton(onPressed: () {

          }, child: Text("Move")),
        ],
      ),
    );
  }
}
