import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_design_task/screens/homepage.dart';
import 'package:flutter_ui_design_task/screens/mainpage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List _items = [];
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //Database? _database;

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assests/sample.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              TextFormField(
                controller: usernameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock)),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  checker("user", "12345678", usernameController.toString(),
                      passwordController.toString());
                  //getFromUser();
                },
                child: Container(
                  height: height * 0.07,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(16, 205, 85, 150),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text("Log In",
                      style: TextStyle(fontSize: 15, color: Colors.green)),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  checker(String nameDB, String passwordDB, String name, String password) {
    if (identical(name, nameDB) & identical(password, passwordDB)) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Homepage()));
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const MainPage()));
    }
  }
}
