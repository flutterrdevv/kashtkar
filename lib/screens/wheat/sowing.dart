// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Sowing extends StatefulWidget {
  const Sowing({super.key});

  @override
  State<Sowing> createState() => _SowingState();
}

class _SowingState extends State<Sowing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sowing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'SEED RATE',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Used seed rate of 45 kg per acre. The seed should be cleaned and graded thoroughly before sowing',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Sowing', style: TextStyle(fontSize: 17)),
                SizedBox(
                  height: 5,
                ),
                Text(
                    'Draw the lines 20 cm apart and sow the seeds continuously after application of fertilizers to a depth of 5 cm Avoid deep sowing',
                    style: TextStyle(fontSize: 17)),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sowing(),
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
