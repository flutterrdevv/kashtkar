import 'package:flutter/material.dart';

class RiceIrration extends StatefulWidget {
  const RiceIrration({super.key});

  @override
  State<RiceIrration> createState() => _RiceIrrationState();
}

class _RiceIrrationState extends State<RiceIrration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Irrigation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Keep field flooded up to two weeks after transplanting. When all water gets infiltrated two day after apply irrigation in field. Depth of standing water should not exceed 10 cm. While doing intercultural and weeding operation, drain out excess water from field and irrigate field after completion of this operations.',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
