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
