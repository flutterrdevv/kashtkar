import 'package:flutter/material.dart';

class RiceLand extends StatefulWidget {
  const RiceLand({super.key});

  @override
  State<RiceLand> createState() => _RiceLandState();
}

class _RiceLandState extends State<RiceLand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Land Preparation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' ',
              style: TextStyle(fontSize: 17),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => RiceSowing(),
                //     ));
              },
              child: const Text('Next'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
