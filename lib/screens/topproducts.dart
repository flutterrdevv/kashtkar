import 'package:flutter/material.dart';
import '../components/topproducts_page.dart';

class TopProducts extends StatelessWidget {
  const TopProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Selling Products'),
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
            TopProductsPage(
              image: Image.asset(
                "assets/images/Engro_DAP.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Engro_DAP',
              price: 'PKR 9000',
            ),
            TopProductsPage(
              image: Image.asset(
                "assets/images/EngroNP.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Engro NP plus',
              price: 'PKR 9370',
            ),
            TopProductsPage(
              image: Image.asset(
                "assets/images/urea.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Engro Urea',
              price: 'PKR 2250',
            ),
            TopProductsPage(
              image: Image.asset(
                "assets/images/Zarkhez.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Zarkhez',
              price: 'PKR 9650',
            ),
            TopProductsPage(
              image: Image.asset(
                "assets/images/Fushu.png",
                fit: BoxFit.cover,
                height: 150,
                width: 100,
              ),
              title: 'Fushu PL',
              price: 'PKR 1950',
            ),
          ]),
    );
  }
}
