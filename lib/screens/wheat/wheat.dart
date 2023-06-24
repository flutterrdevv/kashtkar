import 'package:flutter/material.dart';
import 'package:second_app/helper.dart';
import 'package:second_app/screens/fertilizer.dart';
import 'package:second_app/screens/wheat/climate.dart';
import 'package:second_app/screens/wheat/harvesting.dart';
import 'package:second_app/screens/wheat/intro.dart';
import 'package:second_app/screens/wheat/landpreparation.dart';
import 'package:second_app/screens/wheat/soil.dart';
import 'package:second_app/screens/wheat/sowing.dart';
import 'package:second_app/screens/wheat/yeild.dart';

class Wheat extends StatelessWidget {
  Wheat({super.key});
  List text = [
    'Introduction',
    'Climate',
    'Soil',
    'Sowing',
    'Land preparation',
    'Fertilizers',
    'Major pests',
    'Harvesting',
    'Yield'
  ];
  List<Widget> screens = [
    const IntroWheat(),
    const Climate(),
    const Soil(),
    const Sowing(),
    const LandPreparation(),
    const Fertilizer(),
    const IntroWheat(),
    const Harvesting(),
    const Yeild(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wheat'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/wheat..jpg',
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
