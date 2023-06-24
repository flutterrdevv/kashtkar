import 'package:flutter/material.dart';
import 'package:second_app/components/pesticides_page.dart';

class Pesticides extends StatefulWidget {
  const Pesticides({super.key});

  @override
  State<Pesticides> createState() => _PesticidesState();
}

class _PesticidesState extends State<Pesticides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesticides'),
        centerTitle: true,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          childAspectRatio: 0.71,
          crossAxisSpacing: 2,
        ),
        children: [
          PesticidesPage(
            image: Image.asset(
              "assets/images/Azidox.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Azidox',
            price: 'PKR 1155',
          ),
          PesticidesPage(
            image: Image.asset(
              "assets/images/Fushu.png",
              fit: BoxFit.cover,
              height: 150,
              width: 100,
            ),
            title: 'Fushu PL',
            price: 'PKR 1950',
          ),
          PesticidesPage(
            image: Image.asset(
              "assets/images/sefina.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
              //scale: 1,
            ),
            title: 'Sefina  ',
            price: 'PKR 1200',
          ),
          PesticidesPage(
            image: Image.asset(
              "assets/images/Sega.png",
              fit: BoxFit.cover,
              height: 150,
              width: 100,
            ),
            title: 'Sega Clear pest',
            price: 'PKR 865',
          ),
          PesticidesPage(
            image: Image.asset(
              "assets/images/ZinkTMX.png",
              fit: BoxFit.cover,
              height: 150,
              width: 100,
            ),
            title: 'Librel Zink TMX',
            price: 'PKR 1065',
          ),
          PesticidesPage(
            image: Image.asset(
              "assets/images/LibrelZink.png",
              fit: BoxFit.fill,
              height: 150,
            ),
            title: 'Librel Zink',
            price: 'PKR 1745',
          ),
          PesticidesPage(
            image: Image.asset(
              "assets/images/Truce.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Truce',
            price: 'PKR 1120',
          ),
          PesticidesPage(
            image: Image.asset(
              "assets/images/Veyong_Jinteng.png",
              fit: BoxFit.fill,
              height: 150,
              width: 100,
            ),
            title: 'Veyong Jinteng',
            price: 'PKR 1075',
          ),
        ],
      ),
    );
  }
}
