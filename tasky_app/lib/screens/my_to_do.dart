import 'package:flutter/material.dart';

class MyToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To do",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My To- Dos"),
        ),
      ),
    );
  }
}
