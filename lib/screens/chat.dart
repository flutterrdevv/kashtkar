// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // IconButton(
                //   onPressed: (() {
                //     Navigator.pop(context, true);
                //   }),
                //   icon: Icon(Icons.arrow_back),
                //   color: Colors.white,
                // ),

                Text(
                  'Conversation',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            top: 120,
            right: 27,
            left: 27,
            child: SizedBox(
              height: height - 225,
              width: width,
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 5,
                    ),
                    elevation: 5,
                    child: InkWell(
                      child: ListTile(
                        leading: Icon(
                          Icons.chat,
                          color: Color.fromARGB(255, 21, 77, 50),
                          size: 29,
                        ),
                        title: Text(
                          'Farmer Support',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text('Click to start.....'),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color.fromARGB(255, 21, 77, 50),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 5,
                    ),
                    elevation: 5,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/images/delivery.png',
                      ),
                      title: Text(
                        'Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      subtitle: Text('Yes I recieved  order.....'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 21, 77, 50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
