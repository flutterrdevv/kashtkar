// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_app/screens/Rice/Rice.dart';
import 'package:second_app/screens/carrot.dart';

import 'package:second_app/screens/cotton.dart';
import 'package:second_app/screens/maize.dart';
import 'package:second_app/screens/mustard.dart';
import 'package:second_app/screens/onions.dart';
import 'package:second_app/screens/paotato.dart';

import 'package:second_app/screens/sugarcane.dart';
import 'package:second_app/screens/sunflower.dart';

import 'package:second_app/screens/wheat/wheat.dart';

class CropPractices extends StatefulWidget {
  const CropPractices({super.key});

  @override
  State<CropPractices> createState() => _CropPracticesState();
}

class _CropPracticesState extends State<CropPractices> {
  List image = [
    '',
    '',
    '',
    '',
  ];

  List<Widget> screens = [
    Wheat(),
    Rice(),
    SugarCane(),
    Maize(),
    Mustard(),
    Sunflower(),
    Cotton(),
    Onions(),
    Potato(),
    Carrot(),
  ];

  List text = [
    'Wheat',
    'Rice',
    'Sugarcane',
    'Maize',
    'Mustard',
    'Sunflower',
    'Cotton',
    'Onions',
    'Potato',
    'Carrot',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
            ),
            Container(
              width: double.maxFinite,
              height: 160,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 21, 77, 50),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (() {
                      Navigator.pop(context, true);
                    }),
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  Text(
                    'Crop Practices',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 90,
              right: 27,
              left: 27,
              child: SizedBox(
                height: height - 170,
                width: width,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: text.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => screens[index]))),
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image.asset(image[index]),
                              // SizedBox(
                              //   height: 22,
                              // ),
                              Text(
                                text[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 21, 77, 50),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
