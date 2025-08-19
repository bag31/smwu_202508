import 'package:flutter/material.dart';

class ColumnPracticeScreen extends StatelessWidget {
  const ColumnPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Practice'),),
      body: Container(
        width: 300,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 100, height: 100, color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(width:20, height: 20, color: Colors.yellow,),
                Container(width: 20, height: 20, color: Colors.cyanAccent),
                Container(width: 20, height: 20, color: Colors.black45),
              ],
            ),),
            Container(width: 100, height: 100, color: Colors.red,),
            Container(width: 100, height: 100, color: Colors.green,),

          ],
        ),
      ),
    );
  }
}
