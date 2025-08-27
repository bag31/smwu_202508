import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NEWS")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(color: Colors.grey, width: 100, height: 100),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "제목",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 2,
                            ),
                            Text("기자", maxLines: 2),
                            Text("언론사"),
                            Text("날짜"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
