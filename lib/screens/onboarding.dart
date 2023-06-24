import 'package:flutter/material.dart';

import '../components/onboarding_page.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          OnboardingPage(
            image: Image.asset(
              "assets/images/pollution.png",
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
            title: "Get Started",
            description:
                "Kashtkar is a mobile application that will connect the agriculture ecosystem with the digital world.",
            noOfScreen: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 0,
          ),
          OnboardingPage(
            image: Image.asset(
              "assets/images/info.png",
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
            title: "Crop Information",
            description:
                "Crop calendar to keep track of crops, soil testing techniques, crop advisory using a voice chatbot which will be used for dealing with user queries.",
            noOfScreen: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 1,
          ),
          //lets add 3rd screen
          OnboardingPage(
            image: Image.asset(
              "assets/images/Artboard.png",
              fit: BoxFit.cover,
              width: double.maxFinite,
            ),
            title: "Biggest Market Place",
            description:
                "Market prices of crops in Pakistan, weather report of a specific geographical area and satellite insights to make the crop growth more effective and M-commerce",
            noOfScreen: 3,
            onNextPressed: changeScreen,
            currentScreenNo: 2,
          ),
        ],
      ),
    );
  }

  //Lets write function to change next onboarding screen
  void changeScreen(int nextScreenNo) {
    controller.animateToPage(nextScreenNo,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
