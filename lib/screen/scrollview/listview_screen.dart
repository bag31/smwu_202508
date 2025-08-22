import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ListView"),),
    body: SizedBox(
      height: 200,
      child: ListView(
        children: [
        Text("A", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
        Text("B", style: TextStyle(fontSize: 20),),
        Text("C", style: TextStyle(fontSize: 20),),
        Text("D", style: TextStyle(fontSize: 20),),
        Text("E", style: TextStyle(fontSize: 20),),
        Text("F", style: TextStyle(fontSize: 20),),
        Text("G", style: TextStyle(fontSize: 20),),
        Text("H", style: TextStyle(fontSize: 20),),
        Text("I", style: TextStyle(fontSize: 20),),
        Text("J", style: TextStyle(fontSize: 20),),
        Text("K", style: TextStyle(fontSize: 20),),
        Text("L", style: TextStyle(fontSize: 20),),
        Text("M", style: TextStyle(fontSize: 20),),
        Text("N", style: TextStyle(fontSize: 20),),
        Text("O", style: TextStyle(fontSize: 20),),
        Text("P", style: TextStyle(fontSize: 20),),
        Text("Q", style: TextStyle(fontSize: 20),),
      ],),
    ),
    );
  }
}
