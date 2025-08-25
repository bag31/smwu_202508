import 'package:flutter/material.dart';

class Navigator2Screen extends StatefulWidget {
  const Navigator2Screen({required this.count, super.key});

  final int count;

  @override
  State<Navigator2Screen> createState() => _Navigator2ScreenState();
}

class _Navigator2ScreenState extends State<Navigator2Screen> {
  int count2 = 0;

  // initState 안에서는 setState를 못 쓴다.
  // setState는 build가 완료된 후에 호출할 수 있다.
  // setState를 호출하면 build 함수를 다시 실행
  @override
  void initState() {
    count2 = widget.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigator 2")),
      body: Column(
        children: [
          Text(count2.toString()),
          ElevatedButton(
            onPressed: () {
              count2 += 2;
              setState(() {
                // count2 +=2; // 안에 넣어도 작동함.
              });
            },
            child: Text("Count up"),
          ),
          ElevatedButton(
            onPressed: () {
              // 뒤로 가기
              Navigator.pop(context, count2); // navigator_screen에서 count2 를 받아야 함.
            },
            child: Text("Pop"),
          ),

        ],
      ),
    );
  }
}
