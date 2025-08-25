import 'package:flutter/material.dart';
// 현엽에서 이렇게 작은 단위 위젯을 많이 만들어서 쓴다.

class InnerState extends StatefulWidget {
  const InnerState({required this.count, super.key});

  final int count;

  @override
  State<InnerState> createState() => _InnerStateState();
}

// 데이터를 다르게 관리하고 싶을 때
class _InnerStateState extends State<InnerState> {
  int innerCount = 0;

  // initState는 Stateful 위젯이 생성될 때 한 번만 호출됨.
  @override
  void initState() {
    super.initState();
    // widget.은 이 위젯에서 다른 클래스 속 변수 쓰고 싶을 때.
    innerCount = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(innerCount.toString()),

        ElevatedButton(
          onPressed: () {
            innerCount++;
            setState(() {});
          },
          child: Text("Inner count up"),
        ),
      ],
    );
  }
}
