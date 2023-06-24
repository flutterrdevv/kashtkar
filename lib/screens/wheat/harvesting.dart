import 'package:flutter/material.dart';
import 'package:second_app/screens/wheat/yeild.dart';

class Harvesting extends StatefulWidget {
  const Harvesting({super.key});

  @override
  State<Harvesting> createState() => _HarvestingState();
}

class _HarvestingState extends State<Harvesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harvesting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Harvesting of high yielding dwarf variety is carried out when leaves and stem turn yellow and become fairly dry. To avoid loss in yield crop should be harvested before it is dead ripe. Timely harvesting is needed for optimum quality and consumer acceptance. The right stage for harvesting is when moisture in grain reaches to 25-30%. For manual harvesting use serrate edge sickles. Combines harvester are also available which can do harvesting, threshing and winnowing of wheat crop in single operation.',
              style: TextStyle(fontSize: 17),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Yeild(),
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
