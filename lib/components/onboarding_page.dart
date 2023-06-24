// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_app/components/rounded_button.dart';
import 'package:flutter/services.dart';
import 'package:second_app/helper.dart';
import 'package:second_app/screens/home.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.noOfScreen,
      required this.onNextPressed,
      required this.currentScreenNo})
      : super(key: key);

  final Image image;

  final String title;

  final String description;

  final int noOfScreen;

  final Function(int) onNextPressed;

  final int currentScreenNo;

  @override
  Widget build(BuildContext context) {
    bool isLastScreen = currentScreenNo >= noOfScreen - 1;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                image,
                const SizedBox(
                  height: 20,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 21, 77, 50),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 21, 77, 50),
                    ),
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: !isLastScreen,
            replacement: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: RoundedButton(
                      title: "Get Started",
                      onPressed: () {
                        openHomeScreen(context);
                      },
                    ),
                  ),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      openHomeScreen(context);
                    },
                  ),
                  Row(
                    children: [
                      for (int index = 0; index < noOfScreen; index++)
                        createProgressDots(
                            (index == currentScreenNo) ? true : false)
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      onNextPressed(currentScreenNo + 1);
                    },
                    child: Text(
                      'Next',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  //Create a function to create progress dots
  Widget createProgressDots(bool isActiveScreen) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: isActiveScreen ? 15 : 10,
      width: isActiveScreen ? 15 : 10,
      decoration: BoxDecoration(
          color: isActiveScreen ? Color.fromARGB(255, 21, 77, 50) : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }

  //Lets create function to open home screen, same function we will call from skip button too.
  void openHomeScreen(BuildContext context) {
    Navigator.pop(context);
    chnageScreen(context, Home());
  }
}
