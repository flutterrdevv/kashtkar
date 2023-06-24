// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_app/screens/wheat/wheat_ferti.dart';

class LandPreparation extends StatefulWidget {
  const LandPreparation({super.key});

  @override
  State<LandPreparation> createState() => _LandPreparationState();
}

class _LandPreparationState extends State<LandPreparation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Land Preparation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Field Preparation',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Plough twice with an iron plough and two to three times with cultivator and prepare the land to a fine tilth',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Seed Treatment with Fungicides',
                    style: TextStyle(fontSize: 17)),
                SizedBox(
                  height: 5,
                ),
                Text(
                    'Treat the seeds with carbendazim or thiram at 2g/kg of seeds 24 hours before sowing',
                    style: TextStyle(fontSize: 17)),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Fertilizers1(),
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
