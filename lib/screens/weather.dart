// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
              children: [
                IconButton(
                  onPressed: (() {
                    Navigator.pop(context, true);
                  }),
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  'Weather Forecast',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
