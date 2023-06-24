import 'package:flutter/material.dart';
import 'package:second_app/screens/wheat/sowing.dart';

class Soil extends StatefulWidget {
  const Soil({super.key});

  @override
  State<Soil> createState() => _SoilState();
}

class _SoilState extends State<Soil> {
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
            const Text(
              'Soils with a clay loam or loam texture,good structure and moderate water holding capacity are ideal for wheat cultivation. Heavy soil with good drainage for wheat cultivation under dry conditions',
              style: TextStyle(fontSize: 17),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sowing(),
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
