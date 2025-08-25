import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/todo/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TextEditingController controller = TextEditingController();
  List<TodoModel> todoList = [TodoModel("산책", true), TodoModel("저녁", false)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: Column(
        // 많은 경우 Column으로 시작함. 위에서 아래로 흐름이 일반적이라서
        children: [
          Container(
            margin: EdgeInsets.only(left: 40,),
            child: Row(
              children: [
                // Expanded 현재 주어진 영역의 빈 공간을 최대한 채우는 위젯
                Expanded(child: TextFormField(controller: controller)),
                // 입력된 값 확인
                TextButton(
                  onPressed: () {
                    /// todoList에 새로운 TodoModel 추가
                    print(controller.text);
                    todoList.add(TodoModel(controller.text, false)); // me, answer

                    // TodoModel todoModel = TodoModel(controller.text, false); // answer
                    // todoList.add(todoModel);
                    setState(() {});
                    // print(todoList);
                    /// 추가
                    /// 입력된 값을 알아야 함.
                  },
                  child: Text("등록"),
                ),
              ],
            ),
          ),
          // Column안에 스크롤이 있는 위젯이 있는 경우
          // 높이 값을 설정해줘야 함.
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                /// itemCount만큼 index가 순서대로 들어감.
                var model = todoList[index];

                /// 1. checkbox 선택했을 때 cheched 값을 변경하고 화면 갱신
                /// 2. delete button을 클릭해서 클릭한 todomodel 제거
                return Row(
                  children: [
                    Checkbox(
                      value: model.checked,
                      onChanged: (value) {
                        //==================
                        // model.checked != model.checked; // me
                        // model.checked = value!; // answer1
                        model.checked = !model.checked; // answer2
                        setState(() {});
                      },
                    ),
                    Expanded(child: Text(model.name)),
                    IconButton(
                      onPressed: () {
                        //==================
                        // todoList = todoList.removeAt(index); // me
                        print("index : $index");
                        todoList.removeAt(index);
                        setState(() {});
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Container(
                  height: 2,
                  color: Colors.grey,
                ); // 2개 이상일 때 나타난다.
              },
              itemCount: todoList.length,
            ),
          ),
        ],
      ),
    );
  }
}
