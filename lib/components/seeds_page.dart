import 'package:flutter/material.dart';
import 'package:second_app/components/cart_button.dart';
import '../components/rounded_button.dart';

class SeedsPage extends StatelessWidget {
  final Image image;
  final String title;
  final String price;

  SeedsPage({
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                price,
                style: const TextStyle(
                    color: Color.fromARGB(255, 21, 77, 50),
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            RoundedButton(title: 'Add to cart', onPressed: () {
              showBottomSheet(
                    backgroundColor: const Color.fromARGB(223, 235, 240, 240),
                    shape: const RoundedRectangleBorder(
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
          const Text(
            'Add Quantity',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      const SizedBox(
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
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Amount :',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            price,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Divider(
        thickness: 5,
        indent: 20,
        endIndent: 20,
      ),
      const SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
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
              child: const Text(
                'Add to Cart',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Buy Now',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    ];
  }
}
