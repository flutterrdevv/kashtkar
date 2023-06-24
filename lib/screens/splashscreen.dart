// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:second_app/helper.dart';
import 'package:second_app/screens/home.dart';
import 'package:second_app/screens/login.dart';

import 'package:second_app/screens/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    getData();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animationController.forward();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
          ),
        );
      },
    );
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? id = await prefs.getString('id');
    if (id != null) {
      chnageScreen(context, Home());
    } else {
      chnageScreen(context, OnboardingScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: Color.fromARGB(204, 155, 221, 157),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: animationController,
              child: Image.asset(
                'assets/images/logo_kasthkar.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SlideTransition(
              position: Tween(begin: Offset(-1, 0), end: Offset.zero)
                  .animate(animationController),
              child: Text(
                "Welcome to Kasthkar",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 21, 77, 50),
                ),
              ),
            ),
            RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(animationController),
              child: Text(
                "Mobile App",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 21, 77, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
