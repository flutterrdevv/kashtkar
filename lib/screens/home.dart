// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:second_app/screens/crop_calender.dart';
import 'package:second_app/screens/crop_practices.dart';
import 'package:second_app/screens/settings.dart';
import './shop.dart';
import './soiltest.dart';
import './chat.dart';
import './loaninformation.dart';
import './weather.dart';
import './market_price.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected = 0;
  List<Widget> screens = [
    HomeWidget(),
    Chat(),
    Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[selected],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected,
          onTap: (value) {
            setState(() {
              selected = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              activeIcon: Icon(Icons.chat_sharp),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Setting',
              activeIcon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
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
          child: Image.asset(
            'assets/images/logo_kasthkar.png',
          ),
        ),
        Positioned(
          top: 120,
          right: 27,
          left: 27,
          child: SizedBox(
            height: height - 225,
            width: width,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2,
                crossAxisSpacing: 10,
              ),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Shop(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.store,
                            color: Color.fromARGB(255, 21, 77, 50),
                            size: 60,
                          ),
                          Text(
                            'Shop',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 77, 50),
                            ),
                          )
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CropCalender(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/CropCalender.png',
                            fit: BoxFit.cover,
                            color: Color.fromARGB(255, 21, 77, 50),
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          Text(
                            'Crop Calender',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 77, 50),
                            ),
                          )
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CropPractices(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Group.png',
                            color: Color.fromARGB(255, 21, 77, 50),
                          ),
                          Text(
                            'Crop Practices',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 77, 50),
                            ),
                          )
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoanInformation(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info,
                            color: Color.fromARGB(255, 21, 77, 50),
                            size: 60,
                          ),
                          Text(
                            'Loan Information',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 77, 50),
                            ),
                          )
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Weather(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sunny,
                            color: Color.fromARGB(255, 21, 77, 50),
                            size: 60,
                          ),
                          Text(
                            'Weather',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 77, 50),
                            ),
                          )
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.satellite_alt_sharp,
                            color: Color.fromARGB(255, 21, 77, 50),
                            size: 60,
                          ),
                          Text(
                            'Satellite Insights',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 77, 50),
                            ),
                          )
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => SoilTest()),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/soil.png',
                            color: Color.fromARGB(255, 21, 77, 50),
                          ),
                          Text(
                            'Soil Test',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 77, 50),
                            ),
                          )
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => MarketPrice()),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Rs.png',
                            color: Color.fromARGB(255, 21, 77, 50),
                          ),
                          Text(
                            'Market Prices',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 21, 77, 50),
                            ),
                          )
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
