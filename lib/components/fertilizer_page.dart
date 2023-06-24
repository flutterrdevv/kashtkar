// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_app/components/cart_button.dart';
import '../components/rounded_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FertilizerPage extends StatelessWidget {
  final Image image;
  final String title;
  final String price;

  FertilizerPage({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 250,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: image),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                price,
                style: TextStyle(
                    color: Color.fromARGB(255, 21, 77, 50),
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            RoundedButton(
                title: 'Add to cart',
                onPressed: () {
                  showBottomSheet(
                    backgroundColor: Color.fromARGB(223, 235, 240, 240),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    context: context,
                    elevation: 10,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(15),
                        child: SizedBox(
                          height: 300,
                          child: Column(
                            children: bottomSheet(context),
                          ),
                        ),
                      );
                    },
                  );
                })
          ],
        ),
      ),
    );
  }

  List<Widget> bottomSheet(BuildContext context) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Add Quantity',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Quantity :',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          CartButton()
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Amount :',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Divider(
        thickness: 5,
        indent: 20,
        endIndent: 20,
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Cart update successfully!"),
                ));
                // Fluttertoast.showToast(
                //     msg: "This is a Toast message",
                //     toastLength: Toast.LENGTH_SHORT,
                //     gravity: ToastGravity.TOP,
                //     timeInSecForIosWeb: 1,
                //     textColor: Colors.black,
                //     fontSize: 16.0);
              },
              child: Text(
                'Add to Cart',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Buy Now',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    ];
  }
}
