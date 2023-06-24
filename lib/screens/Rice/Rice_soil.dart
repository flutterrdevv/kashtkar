import 'package:flutter/material.dart';
import 'package:second_app/screens/Rice/Rice_sowing.dart';

class RiceSoil extends StatefulWidget {
  const RiceSoil({super.key});

  @override
  State<RiceSoil> createState() => _RiceSoilState();
}

class _RiceSoilState extends State<RiceSoil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' It can be grown on a variety of soils with low permeability and pH varying from 5.0 to 9.5.Rice can be grown in any type of soil except sandy soil. Clay loam soil with an optimum quantity of organic matter and more water holding capacity is the best for rice cultivation.',
              style: TextStyle(fontSize: 17),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RiceSowing(),
                    ));
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
