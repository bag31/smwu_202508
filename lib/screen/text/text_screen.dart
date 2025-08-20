import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text")),
      body: SizedBox(
        width: double.infinity, // 현재 화면을 전부 채우기
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Text Widget 1",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            Text(
              "This is Text Widget 1.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            // FontWeight w400 = normal
            // FontWeight w500 = medium
            // FontWeight w700 = bold
            Text(
              "텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.텍스트 위젯 입니다.",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
