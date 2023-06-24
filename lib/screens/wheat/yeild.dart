import 'package:flutter/material.dart';

class Yeild extends StatefulWidget {
  const Yeild({super.key});

  @override
  State<Yeild> createState() => _YeildState();
}

class _YeildState extends State<Yeild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yield'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'The national average yield of wheat grain is about 12 to 13.8 quintals per hectare ',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
