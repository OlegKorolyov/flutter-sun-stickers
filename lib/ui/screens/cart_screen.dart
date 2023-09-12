import 'package:flutter/material.dart';
import 'package:sun_stickers/data/app_data.dart';
import 'package:sun_stickers/ui/_ui.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<StatefulWidget> createState() => CartScreenState();
}

class CartScreenState extends State<CartScreen>{
  var cartItems = AppData.cartItems;

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: _appBar(context),
      body: EmptyWrapper(
        title: "Empty cart",
        isEmpty: cartItems.isEmpty,
        child: _cartListView(),
      ),
      bottomNavigationBar: cartItems.isEmpty ? const SizedBox() : _bottomAppBar(),
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

  Widget _cartListView() {
    return ListView.separated(
        padding: EdgeInsets.all(20),
        itemCount: 20,
        itemBuilder: (_, index) {
          return Container(
            height: 60,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey
            ),
            child: Text(
              '${index + 1}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          );
        },
        separatorBuilder: (_, __) => Container(height: 20,),
        );
  }

  Widget _bottomAppBar() {
    return BottomAppBar(
      child: SizedBox(
        height: 300,
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }

}