import 'package:flutter/material.dart';
import 'package:second_app/components/seeds_page.dart';

class Seeds extends StatefulWidget {
  const Seeds({super.key});

  @override
  State<Seeds> createState() => _SeedsState();
}

class _SeedsState extends State<Seeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seeds'),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 0.71,
          crossAxisSpacing: 10,
        ),
        children: [
          SeedsPage(
            image: Image.asset(
              "assets/images/AS_2002.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Wheat Galaxy',
            price: 'PKR 1200',
          ),
          SeedsPage(
            image: Image.asset(
              "assets/images/Basmati_515.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Basmati_515',
            price: 'PKR 1200',
          ),
          SeedsPage(
            image: Image.asset(
              "assets/images/Faisalabad_2008.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Sadiq-21',
            price: 'PKR 1200',
          ),
          SeedsPage(
            image: Image.asset(
              "assets/images/Galaxy_2013.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Wheat_Ujala',
            price: 'PKR 1200',
          ),
          SeedsPage(
            image: Image.asset(
              "assets/images/HRS_313.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Hybrid HRS 313',
            price: 'PKR 1200',
          ),
          SeedsPage(
            image: Image.asset(
              "assets/images/Shandaar.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Super Kernel Basmati',
            price: 'PKR 1200',
          ),
          SeedsPage(
            image: Image.asset(
              "assets/images/Sorgo.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Basmati Golden Sella',
            price: 'PKR 1200',
          ),
        ],
      ),
    );
  }
}
