import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/column/column_practice_screen.dart';
import 'package:flutter_projects/screen/column/column_screen.dart';
import 'package:flutter_projects/screen/container/container_practice_screen.dart';
import 'package:flutter_projects/screen/container/container_screen.dart';
import 'package:flutter_projects/screen/image/image_practice_screen.dart';
import 'package:flutter_projects/screen/image/image_screen.dart';
import 'package:flutter_projects/screen/row/column_row_practice_screen.dart';
import 'package:flutter_projects/screen/row/row_practice_screen.dart';
import 'package:flutter_projects/screen/row/row_screen.dart';
import 'package:flutter_projects/screen/scrollview/listview_builder_screen.dart';
import 'package:flutter_projects/screen/scrollview/listview_practice_screen.dart';
import 'package:flutter_projects/screen/scrollview/listview_screen.dart';
import 'package:flutter_projects/screen/scrollview/scrollView_screen.dart';
import 'package:flutter_projects/screen/stack/stack_practice_screen.dart';
import 'package:flutter_projects/screen/stack/stack_screen.dart';
import 'package:flutter_projects/screen/text/text_practice_screen.dart';
import 'package:flutter_projects/screen/text/text_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // onPressed: 클릭했을 때 중괄호 안으로 이동
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ContainerScreen();
                      },
                    ),
                  );
                },
                child: Text("Container"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ContainerPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Container Practice"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ColumnScreen();
                      },
                    ),
                  );
                },
                child: Text("Column"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ColumnPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Column Practice"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RowScreen();
                      },
                    ),
                  );
                },
                child: Text("Row"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RowPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Row Practice"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ColumnRowPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Column Row Practice"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RowPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Row Practice"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TextScreen();
                      },
                    ),
                  );
                },
                child: Text("Text Screen"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TextPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Text Practice Screen"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ImageScreen();
                      },
                    ),
                  );
                },
                child: Text("Image Screen"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ImagePracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Image Practice Screen"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StackScreen();
                      },
                    ),
                  );
                },
                child: Text("Stack"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StackPracticeScreen();
                      },
                    ),
                  );
                },
                child: Text("Stack Practice"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ScrollviewScreen();
                      },
                    ),
                  );
                },
                child: Text("ScrollView"),
              ),
              button(context, ListviewScreen(), "ListView"),
              button(context, ListviewBuilderScreen(), "ListView Builder"),
              button(context, ListviewPracticeScreen(), "ListView practice"),
            ],
          ),
        ),
      ),
    );
  }

  //
  Widget button(BuildContext context, Widget child, String name){
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return child;
            },
          ),
        );
      },
      child: Text(name),
    );

  }
}
