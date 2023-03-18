import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/screens/login.dart';
import 'package:flutter_ui_design_task/screens/signup.dart';

class RegistraionPage extends StatefulWidget {
  const RegistraionPage({super.key});

  @override
  State<RegistraionPage> createState() => _RegistraionPageState();
}

class _RegistraionPageState extends State<RegistraionPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Center(
            child: SizedBox(
              height: height * 0.35,
              width: width * 0.8,
              child: Image.asset("welcome.png"),
            ),
          ),
          SizedBox(
            height: height * 0.07,
          ),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Before Enjoying Food Media Services",
            style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
          ),
          Text(
            "Please Register First",
            style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUp()));
            },
            child: Container(
              height: height * 0.07,
              width: width * 0.7,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(16, 205, 85, 30),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text(
                "Create Account",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Login()));
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
                "Log In",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            "By Loggin In Or Registering you Have to Agree To",
            style: TextStyle(fontSize: 11, color: Colors.black),
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'The Terms And Condition',
                    style: TextStyle(
                        color: Color.fromRGBO(16, 205, 85, 50), fontSize: 11)),
                TextSpan(
                  text: ' And',
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
                TextSpan(
                    text: ' Privacy Policy',
                    style: TextStyle(
                        color: Color.fromRGBO(16, 205, 85, 50), fontSize: 11))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
