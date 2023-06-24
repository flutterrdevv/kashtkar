// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SoilTest extends StatefulWidget {
  const SoilTest({super.key});

  @override
  State<SoilTest> createState() => _SoilTestState();
}

class _SoilTestState extends State<SoilTest> {
  List<String> str1 = [
    "PH",
    "Electrical Conductivity  (EC)",
    "Organic Carbon  (OC)",
    "Nitrogen  (N)",
    "Phosphorus  (P)",
    "Potassium  (K)",
  ];
  List<String> str2 = [
    "PH",
    "Electrical Conductivity  (EC)",
    "Organic Carbon  (OC)",
    "Nitrogen  (N)",
    "Phosphorus  (P)",
    "Potassium  (K)",
    "Calcium  (Ca)",
    "Magnesium (Mg)",
    "Zinc  (Zn)",
    "Sulfur  (S)",
    "Manganese  (Mn)",
    "Iron  (Fe)",
    "Copper  (Cu)",
    "Boron  (B)",
  ];
  List<String> str3 = [
    "Nitrogen  (N)",
    "Phosphorus  (P)",
    "Potassium  (K)",
    "Calcium  (Ca)",
    "Magnesium (Mg)",
    "Zinc  (Zn)",
    "Sulfur  (S)",
    "Manganese  (Mn)",
    "Iron  (Fe)",
    "Copper  (Cu)",
    "Boron  (B)",
  ];
  List<String> str4 = [
    "PH",
    "Electrical Conductivity  (EC)",
    "Sodium Adsorption Ratio  (SAR)",
    "Residual Sodium Carbonate",
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Soil Test'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                width: 400,
                child: Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: 400,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.green,
                              Color.fromARGB(255, 21, 77, 50),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Soil analysis sample for 6 Perameters',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: str1.map((strone) {
                            return Row(children: [
                              Text(
                                "\u2022",
                                style: TextStyle(fontSize: 30),
                              ), //bullet text
                              SizedBox(
                                width: 10,
                              ), //space between bullet and text
                              Expanded(
                                child: Text(
                                  strone,
                                  style: TextStyle(fontSize: 18),
                                ), //text
                              )
                            ]);
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 400,
                child: Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: 400,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.green,
                              Color.fromARGB(255, 21, 77, 50),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Soil sample analysis for 14 perameters',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: str2.map((strone) {
                            return Row(children: [
                              Text(
                                "\u2022",
                                style: TextStyle(fontSize: 30),
                              ), //bullet text
                              SizedBox(
                                width: 10,
                              ), //space between bullet and text
                              Expanded(
                                child: Text(
                                  strone,
                                  style: TextStyle(fontSize: 18),
                                ), //text
                              )
                            ]);
                          }).toList(),
                        ),
                      ),
                      Center(
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Test')))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 400,
                child: Card(
                  elevation: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: 400,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.green,
                              Color.fromARGB(255, 21, 77, 50),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Water sample analysis for 4 parameters',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: str4.map((strone) {
                            return Row(children: [
                              Text(
                                "\u2022",
                                style: TextStyle(fontSize: 30),
                              ), //bullet text
                              SizedBox(
                                width: 10,
                              ), //space between bullet and text
                              Expanded(
                                child: Text(
                                  strone,
                                  style: TextStyle(fontSize: 18),
                                ), //text
                              )
                            ]);
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
