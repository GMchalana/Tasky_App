import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tasky_app/main.dart';
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool isNotValidate = false;

  void registerUser() async {
    if (usernameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      var regBody = {
        "username": usernameController.text,
        "email": emailController.text,
        "password": passwordController.text
      };

      var response = await http.post(
          Uri.parse('http://192.168.1.106:3000/registration'),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody));

      var jsonResponse = jsonDecode(response.body);

      print(jsonResponse['status']);

      if (jsonResponse['status']) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
      } else {
        print("Something went wrong");
      }
    } else {
      setState(() {
        isNotValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.PNG"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Tasky App",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 480,
              width: 355,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 241, 239),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      errorStyle: const TextStyle(color: Colors.white),
                      errorText: isNotValidate ? "Enter Proper Info" : null,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      errorStyle: const TextStyle(color: Colors.white),
                      errorText: isNotValidate ? "Enter Proper Info" : null,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      errorStyle: const TextStyle(color: Colors.white),
                      errorText: isNotValidate ? "Enter Proper Info" : null,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Conform Password',
                    ),
                  ),
                  const SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      registerUser();
                    },
                    child: Text("Sign Up"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
