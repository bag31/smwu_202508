import 'package:flutter/material.dart';

class ImagePracticeScreen extends StatelessWidget {
  const ImagePracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Practice")),
      // 스크롤 안되게 하면, 화면보다 이미지가 큰 경우 오버플로 경고가 뜬다.
      body: SingleChildScrollView(
        // 이미지 몇 개 안되니까 이 위젯 없어도 됨
        child: SizedBox(
          width: double.infinity, // 가운데 정렬을 위한 위젯
          child: Column(
            children: [
              Text(
                "URL",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                color: Colors.grey,
                width: 200,
                height: 200,
                child: Image.network(
                  "https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_responsibility.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Asset",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/company_sustainability.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
