import 'package:input_quantity/input_quantity.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      InputQty(
        maxVal: 4, //max val to go
        initVal: 1, //min starting val
        onQtyChanged: (val) {
          //on value changed we may set the value
          //setstate could be called
        },
      ),
    ]);
  }
}
