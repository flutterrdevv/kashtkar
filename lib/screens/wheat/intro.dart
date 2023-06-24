// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:second_app/screens/wheat/climate.dart';

class IntroWheat extends StatefulWidget {
  const IntroWheat({super.key});

  @override
  State<IntroWheat> createState() => _IntroWheatState();
}

class _IntroWheatState extends State<IntroWheat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Wheat currently contributes 37 percent of total food energy intake in Pakistan.Wheat is a Rabi crop that is grown in the winter season.In Pakistan sowing of wheat takes place from October to December and harvesting during the month of March to May.',
              style: TextStyle(fontSize: 17),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Climate(),
                    ));
              },
              child: const Text('Next'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
