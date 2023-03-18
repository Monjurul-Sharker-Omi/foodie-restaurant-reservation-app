import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/screens/registrationpage.dart';
import 'package:flutter_ui_design_task/screens/signup.dart';

class Success extends StatelessWidget {
  const Success({super.key});

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
                child: Image.asset("success.png"),
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            const Text(
              "Success",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Please check your email for creating",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
            Text(
              "a new password",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Cant get Email? ',
                    style: TextStyle(fontSize: 11, color: Colors.black),
                  ),
                  TextSpan(
                      text: 'Resubmit',
                      style: TextStyle(
                          color: Color.fromRGBO(16, 205, 85, 50), fontSize: 11))
                ],
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegistraionPage()));
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
                  "Back Email",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
