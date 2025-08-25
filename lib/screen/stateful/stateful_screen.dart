import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/stateful/inner_state.dart';

class StatefulScreen extends StatefulWidget {
  const StatefulScreen({super.key});

  @override
  State<StatefulScreen> createState() => _State();
}

class _State extends State<StatefulScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful")),
      body: Column(
        children: [
          Text("Count : $count"),
          TextButton(
            onPressed: () {
              count++;
              setState(() {});  // setState 함수를 통해 화면 갱신 가능. 하나의 stateful만 해당 화면이 변경되는 부분
            },
            child: Text("Count up"),
          ),
          InnerState(count: count),
        ],
      ),
    );
  }
}
