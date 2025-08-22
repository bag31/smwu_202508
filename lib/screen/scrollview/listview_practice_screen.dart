import 'package:flutter/material.dart';

class ListviewPracticeScreen extends StatelessWidget {
  const ListviewPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> numList = [];
    for (int i = 0; i < 30; i++) {
      numList.add(i);
    }
    print('ListviewPracticeScreen.build : $numList');
    return Scaffold(
      appBar: AppBar(title: Text("ListView Practice")),
      body: ListView.builder(
        itemCount: numList.length,
        padding: EdgeInsets.symmetric(vertical: 24),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.grey,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              '${numList[index]}',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          );
          // return Text(numList[index].toString(), textAlign: TextAlign.center);
        },
      ),
    );
  }
}
