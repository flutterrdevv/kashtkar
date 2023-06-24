// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(35),
            backgroundColor: Colors.orange,
          ),
          child: Text(
            title,
            style: const TextStyle(fontSize: 16),
          )),
    );
  }
}
