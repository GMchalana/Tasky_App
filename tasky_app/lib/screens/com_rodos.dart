import 'package:flutter/material.dart';
import 'package:tasky_app/screens/add_to_do.dart';
import 'package:tasky_app/screens/navbar.dart';

class ComToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To do",
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Center(
            child: Text("Completed To- Dos"),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddToDo()),
                );
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: const Text("Have to fetch data"),
      ),
    );
  }
}
