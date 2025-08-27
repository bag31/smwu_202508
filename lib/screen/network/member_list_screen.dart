import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_projects/screen/network/json_model.dart';
import 'package:flutter_projects/screen/network/member.dart';
import 'package:flutter_projects/screen/network/member_edit_screen.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://0f5d227aa566.ngrok-free.app"));
  Dio dio2 = Dio(
    BaseOptions(
      baseUrl:
          "https://online-lecture-data.s3.ap-northeast-2.amazonaws.com/data.json",
    ),
  );

  List<Member> memberList = [];
  bool loading = false;


  // https://online-lecture-data.s3.ap-northeast-2.amazonaws.com/data.json

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Scaffold(body: CircularProgressIndicator());
    }
    return Scaffold(
      appBar: AppBar(title: Text("멤버 조회")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              loading = true;
              setState(() {});
              var response = await dio.get("/api/v1/member/all");

              memberList = (response.data as Iterable)
                  .map((e) => Member.fromJson(e))
                  .toList();
              loading = false;
              setState(() {});

              // baseURL에 맞춰 /를 잘 써야 함. 보통 baseURL 마지막에 / 없이 쓴다.
              // dio.get("/api/v1/member/all").then((value) {
              //   // if(value.data is Iterable) {}
              //   memberList = (response.data as Iterable).map((e) {
              //     return Member.fromJson(
              //       e,
              //     ); // Iterable인 value(여러 개 Json 데이터가 있음)를 map이 하나씩 꺼내서 e에 넣음. 그리고 각각을 Member.fromJson 꼴을 적용해서 Member 객체 리스트로 만든다.
              //   }).toList();
              //   setState(() {});
              //   print('memberList : $memberList');
              // });
            },
            child: Text("Get Data"),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MemberEditScreen(
                            email: memberList[index].email,
                          ); // 페이지 이동 시 이메일 전달함
                        },
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      /// 왼쪽 정렬
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("이메일 : ${memberList[index].email}"),
                        Text("설명 : ${memberList[index].description}"),
                      ],
                    ),
                  ),
                );
              },
              itemCount: memberList.length,
            ),
          ),

          // ElevatedButton(
          //   onPressed: () {
          //     dio2.get("").then((value) {
          //       print(value);
          //       var jsonModel = JsonModel.fromJson(value.data);
          //       print(jsonModel);
          //     },);
          //   },
          //   child: Text("Get Json"),
          // ),
        ],
      ),
    );
  }
}
