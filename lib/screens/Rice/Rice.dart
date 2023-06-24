// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_app/helper.dart';
import 'package:second_app/screens/Rice/Rice_climate.dart';
import 'package:second_app/screens/Rice/Rice_intro.dart';
import 'package:second_app/screens/Rice/Rice_irrgation.dart';
import 'package:second_app/screens/Rice/Rice_soil.dart';
import 'package:second_app/screens/Rice/Rice_sowing.dart';

class Rice extends StatelessWidget {
  Rice({super.key});
  List text = [
    'Introduction',
    'Climate',
    'Soil',
    'Sowing',
    'Irrigation',
  ];
  List<Widget> screens = [
    RiceIntro(),
    RiceClimate(),
    RiceSoil(),
    RiceSowing(),
    RiceIrration(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rice'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/rice.jpg',
              fit: BoxFit.cover,
            ),
            ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: text.length,
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    elevation: 5,
                    child: ListTile(
                      onTap: () => chnageScreen(context, screens[index]),
                      title: Text(
                        text[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
