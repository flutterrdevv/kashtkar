// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Fertilizers1 extends StatefulWidget {
  const Fertilizers1({super.key});

  @override
  State<Fertilizers1> createState() => _Fertilizers1State();
}

class _Fertilizers1State extends State<Fertilizers1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fertilizers'),
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
                  'Fertilizers',
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Apply NPK fertlizer as per soil test. Apply half of N and full dose of P20 and K2O5 basally before aowing and incorporate in the sowing line',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
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
