import 'package:flutter/material.dart';

class TextPracticeScreen extends StatelessWidget {
  const TextPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Practice")),
      body: Text(
        "Text 위젯 실습입니다. 색생은 deepOrange입니다.",
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          // letterSpacing 글자간 간격
          letterSpacing: 2.5,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
