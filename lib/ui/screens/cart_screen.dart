import 'package:flutter/material.dart';
import 'package:sun_stickers/ui/_ui.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<StatefulWidget> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen>{

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: _appBar(context),
      body: EmptyWrapper(
        title: "Empty cart",
        isEmpty: true,
        child: Container(),
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Cart screen",
        style: Theme.of(context).textTheme.displayMedium,
      ),

    );
  }

}