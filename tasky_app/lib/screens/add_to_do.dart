import 'package:flutter/material.dart';
import 'package:tasky_app/screens/navbar.dart';

class AddToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To do",
      home: Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            title: const Center(
              child: Text("Add To-Dos"),
            ),
            actions: const <Widget>[],
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/background.PNG"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(81, 250, 250, 250),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Date',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Task Topic',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Description',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const ElevatedButton(
                        onPressed: (null),
                        child: const Text("Add Task"),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
