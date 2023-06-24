// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_app/screens/Rice/Rice_climate.dart';

class RiceIntro extends StatefulWidget {
  const RiceIntro({super.key});

  @override
  State<RiceIntro> createState() => _RiceIntroState();
}

class _RiceIntroState extends State<RiceIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pakistan is the worlds 10th largest producer of rice. Pakistan s exports make up more than 8% of worlds total rice trade.It is an important crop in the agriculture economy of Pakistan.In 2019, Pakistan produced 7.5 million tonnes of rice and ranked 10th in largest rice producing countries.',
              style: TextStyle(fontSize: 17),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RiceClimate(),
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
