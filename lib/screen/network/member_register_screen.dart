import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// post 방식으로 메일과 비밀번호를 전달하는 예제
class MemberRegisterScreen extends StatefulWidget {
  const MemberRegisterScreen({super.key});

  @override
  State<MemberRegisterScreen> createState() => _MemberRegisterScreenState();
}

class _MemberRegisterScreenState extends State<MemberRegisterScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://0f5d227aa566.ngrok-free.app"));

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  /// 화면이 사라질 때 한 번 호출됨 <=> init : 처음에 한 번 호출됨
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("멤버 등록")),
      body: Column(
        children: [
          TextFormField(controller: emailController),
          TextFormField(controller: passwordController),
          ElevatedButton(
            onPressed: () async{
              await dio.post(
                "/api/v1/member",
                /// 이런 data를 body라고 함.
                data: {
                  "email": emailController.text,
                  "password": passwordController.text,
                },
              );
              Navigator.pop(context, true);
            },
            child: Text("등록"),
          ),
        ],
      ),
    );
  }
}
