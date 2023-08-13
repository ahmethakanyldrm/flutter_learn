import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Text("a" * 10),
          ),
          Container(
            height: 50,
            constraints: BoxConstraints(
              minHeight: 100,
              minWidth: 100,
              maxHeight: 200,
              maxWidth: 200,
            ),
            child: Text("abc" * 10),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          ),
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      colors: [
        Colors.red,
        Colors.green,
      ],
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.green,
        blurRadius: 12,
        offset: Offset(0.1, 1),
      ),
    ],
  );
}
