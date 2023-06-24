// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:second_app/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String value = '';
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  //Function
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = ' ON';
        print('On');
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = ' OFF';
        print('OFF');
      });
    }
  }

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
          top: 90,
          right: 27,
          left: 27,
          child: SizedBox(
            height: height - 225,
            width: width,
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 30),
                        child: CircleAvatar(
                          radius: 30,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/profile.jpeg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'KAZUYA',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'kazuya21@gamil.com',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ListTile(
                  leading: Icon(Icons.language),
                  title: Text(
                    'Language',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      showMenu<String>(
                        context: context,
                        position: const RelativeRect.fromLTRB(120, 350, 10, 0),
                        items: ['English', 'Urdu']
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
                      Icons.arrow_drop_down_outlined,
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(
                    'Notification',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  trailing: Column(
                    children: [
                      Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.yellow,
                        activeTrackColor: Color.fromARGB(255, 21, 77, 50),
                        inactiveThumbColor: Colors.grey[300],
                        inactiveTrackColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    // SharedPreferences prefs =
                    //     await SharedPreferences.getInstance();
                    // await prefs.remove('id');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(150, 50),
                    //backgroundColor: Colors.orange,
                  ),
                  child: Text(
                    'Logout',
                    style: const TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
