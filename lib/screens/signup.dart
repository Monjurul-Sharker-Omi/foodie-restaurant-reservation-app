import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/screens/signupSuccess.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Success()));
                },
                child: Container(
                  height: height * 0.07,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(16, 205, 85, 150),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 15, color: Colors.green),
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
