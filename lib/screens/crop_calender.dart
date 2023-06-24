// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CropCalender extends StatefulWidget {
  const CropCalender({super.key});

  @override
  State<CropCalender> createState() => _CropCalenderState();
}

class _CropCalenderState extends State<CropCalender> {
  String secondVal = 'Select Crop';

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Calender'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Center(
              child: Text(
                'Which crop are you growing ? ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 21, 77, 50),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          secondVal,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showMenu<String>(
                          context: context,
                          position:
                              const RelativeRect.fromLTRB(120, 180, 10, 0),
                          items: [
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
                          ]
                              .map(
                                (val) => PopupMenuItem<String>(
                                  value: val,
                                  child: Text(val),
                                  onTap: () {
                                    setState(() {
                                      secondVal = val;
                                    });
                                  },
                                ),
                              )
                              .toList(),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '',
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Select',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
