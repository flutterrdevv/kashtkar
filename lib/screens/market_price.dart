// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MarketPrice extends StatefulWidget {
  const MarketPrice({super.key});

  @override
  State<MarketPrice> createState() => _MarketPriceState();
}

class _MarketPriceState extends State<MarketPrice> {
  String value = 'Select Market';
  String secondVal = 'Select Crop';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color.fromARGB(255, 21, 77, 50),
        title: Text('Market Price'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 80,
              //width: 400,
              child: Card(
                elevation: 5,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          value,
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
                              const RelativeRect.fromLTRB(120, 150, 10, 0),
                          items: ['Punjab', 'Sindh', 'Blochistan', 'KPK']
                              .map(
                                (e) => PopupMenuItem<String>(
                                  value: e,
                                  child: Text(e),
                                  onTap: () {
                                    setState(() {
                                      value = e;
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
                              const RelativeRect.fromLTRB(120, 150, 10, 0),
                          items: [
                            'Wheat',
                            'Cotton',
                            'Rice',
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
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(110, 45),
                  ),
                  onPressed: () async {
                    await FirebaseFirestore.instance
                        .collection('prices')
                        .get()
                        .then((QuerySnapshot snapshot) {
                      snapshot.docs.forEach((element) {
                        element.data();
                      });
                    });
                  },
                  child: Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Show All',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
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
