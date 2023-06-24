// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_app/screens/Rice/Rice_.dart';
import 'package:second_app/screens/Rice/Rice_irrgation.dart';

class RiceSowing extends StatefulWidget {
  const RiceSowing({super.key});

  @override
  State<RiceSowing> createState() => _RiceSowingState();
}

class _RiceSowingState extends State<RiceSowing> {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sowing Time',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '20 may to 5 june is the optimum time for sowing',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Sowing Depth',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'The seed rate for direct seeding of fine grain rice varieties should be 16-18 kg and for coarse varieties 14-16 kg per acre. Seed should be sown 2-3cm deep for good crop stand as placing seed deeper will result in poor emergence.',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RiceIrration(),
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
