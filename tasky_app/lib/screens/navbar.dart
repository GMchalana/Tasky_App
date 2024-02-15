import 'package:flutter/material.dart';
import 'package:tasky_app/screens/add_to_do.dart';
import 'package:tasky_app/screens/my_to_do.dart';
import 'package:tasky_app/screens/com_rodos.dart';
import 'package:tasky_app/main.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Tasky App"),
            accountEmail: null,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.PNG"),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: const Text('My To-Dos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyToDo()),
              );
            },
          ),
          ListTile(
            title: const Text('Completed Tasks'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComToDo()),
              );
            },
          ),
          ListTile(
            title: const Text('Add Tasks'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddToDo()),
              );
            },
          ),
          ListTile(
            title: const Text('Log Out'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          )
        ],
      ),
    );
  }
}
