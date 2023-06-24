import 'package:flutter/material.dart';
import '../components/fertilizer_page.dart';

class Fertilizer extends StatefulWidget {
  const Fertilizer({super.key});

  @override
  State<Fertilizer> createState() => _FertilizerState();
}

class _FertilizerState extends State<Fertilizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fertilizer'),
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
          FertilizerPage(
            image: Image.asset(
              "assets/images/Engro_DAP.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Engro_DAP',
            price: 'PKR 1200',
          ),
          FertilizerPage(
            image: Image.asset(
              "assets/images/EngroNP.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Engro NP plus',
            price: 'PKR 1200',
          ),
          FertilizerPage(
            image: Image.asset(
              "assets/images/Engro_Ammonium_Sulphate.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Ammonium Sulphate',
            price: 'PKR 1200',
          ),
          FertilizerPage(
            image: Image.asset(
              "assets/images/Engro_Phos.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Engro Phos Power',
            price: 'PKR 1200',
          ),
          FertilizerPage(
            image: Image.asset(
              "assets/images/urea.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Engro Urea',
            price: 'PKR 1200',
          ),
          FertilizerPage(
            image: Image.asset(
              "assets/images/Zoron.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Zoron',
            price: 'PKR 1200',
          ),
          FertilizerPage(
            image: Image.asset(
              "assets/images/Zarkhez.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Zarkhez',
            price: 'PKR 9650',
          ),
          FertilizerPage(
            image: Image.asset(
              "assets/images/Zingro_1.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Zingro',
            price: 'PKR 1200',
          ),
        ],
      ),
    );
  }
}
