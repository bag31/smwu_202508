import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/navigator/navigator_2_screen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int count = 0; // navigator 2와 데이터 주고 받기

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigator")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(width: 24),
          Center(child: Text(count.toString())),
          SizedBox(width: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Navigator2Screen(count: count); // screen 2에 값 전달
                  },
                ),
              ).then((value) {
                if (value != null && value is int) { // && = AND
                  count = value;
                  setState(() {});
                }
              });
            },
            child: Text("2번 화면으로 이동"),
          ),
        ],
      ),
    );
  }
}
