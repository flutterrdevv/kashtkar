import 'package:flutter/material.dart';

class Mustard extends StatelessWidget {
  Mustard({super.key});
  List text = [
    'Introduction',
    'Climate',
    'Soil',
    'Sowing',
    'Land preparation',
    'Fertilizers',
    'Major pests',
    'Harvesting',
    'Yeild'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Musard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/mustard.png',
              fit: BoxFit.cover,
            ),
            ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: text.length,
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    elevation: 5,
                    child: ListTile(
                      title: Text(
                        text[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
