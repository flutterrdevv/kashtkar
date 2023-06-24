// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_app/screens/Rice/Rice_soil.dart';

class RiceClimate extends StatefulWidget {
  const RiceClimate({super.key});

  @override
  State<RiceClimate> createState() => _RiceClimateState();
}

class _RiceClimateState extends State<RiceClimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Climate'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Spring is a season of beginnings, and the same goes for the new beginnings of rice. Rice planting happens in the spring.Rice is a tropical crop and grown where the average temperature during the growing season is between 20°C and 27°C. ',
              style: TextStyle(fontSize: 17),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RiceSoil(),
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
