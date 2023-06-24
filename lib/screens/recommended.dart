import 'package:flutter/material.dart';
import '../components/recommended_page.dart';

class RecommendedProd extends StatelessWidget {
  const RecommendedProd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommended Products'),
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
            RecommendedProducts(
              image: Image.asset(
                "assets/images/HRS_313.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Hybrid HRS 313',
              price: 'PKR 9300 ',
            ),
            RecommendedProducts(
              image: Image.asset(
                "assets/images/AS_2002.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Wheat Galaxy',
              price: 'PKR 5200',
            ),
            RecommendedProducts(
              image: Image.asset(
                "assets/images/Galaxy_2013.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Wheat_Ujala',
              price: 'PKR 5600',
            ),
            RecommendedProducts(
              image: Image.asset(
                "assets/images/urea.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Engro Urea',
              price: 'PKR 2250',
            ),
            RecommendedProducts(
              image: Image.asset(
                "assets/images/Engro_DAP.png",
                fit: BoxFit.fill,
                height: 150,
                width: 100,
              ),
              title: 'Engro_DAP',
              price: 'PKR 9000',
            ),
          ]),
    );
  }
}
