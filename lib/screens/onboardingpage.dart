import 'package:flutter/material.dart';
import 'package:flutter_ui_design_task/screens/registrationpage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
      done: const Icon(
        Icons.arrow_forward_outlined,
        color: Color.fromRGBO(50, 183, 104, 100),
      ),
      onDone: () => goToRegistrationPage(context),
      showSkipButton: true,
      skip: Text('Skip'),
      next: const Icon(
        Icons.arrow_forward_outlined,
        color: Color.fromRGBO(50, 183, 104, 100),
      ),
      dotsDecorator: getDotDecoration(),
      pages: [
        PageViewModel(
          title: "Nearby Restaurants",
          body:
              "You don't have to go far to find a good restaurant, we have provided all the restaurants that is near you",
          image: buildImage('assets/screen1.png'),
          decoration: getDecoration(),
        ),
        PageViewModel(
          title: "Select the Favourite Menu",
          body:
              "Now eat well,don't leave the house, You can choose your favourite food only with one click",
          image: buildImage('assets/screen2.png'),
          decoration: getDecoration(),
        ),
        PageViewModel(
          title: "Good food at a cheap price",
          body: "You can eat at expensive restaurants with affordable price",
          image: buildImage('assets/screen3.png'),
          decoration: getDecoration(),
        )
      ],
    ));
  }

  Widget buildImage(String path) => Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Center(
          child: Image.asset(
            path,
            width: 350,
          ),
        ),
      );
  PageDecoration getDecoration() => const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 16),
      bodyPadding: EdgeInsets.all(16),
      imagePadding: EdgeInsets.all(30));
  DotsDecorator getDotDecoration() => const DotsDecorator(
        activeColor: Color.fromRGBO(16, 205, 85, 100),
      );
  void goToRegistrationPage(context) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const RegistraionPage()));
}
