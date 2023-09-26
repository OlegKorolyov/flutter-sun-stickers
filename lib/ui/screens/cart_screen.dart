import 'package:flutter/material.dart';
import 'package:sun_stickers/data/app_data.dart';
import 'package:sun_stickers/ui/_ui.dart';
import 'package:sun_stickers/ui_kit/_ui_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        padding: EdgeInsets.all(30),
        itemCount: cartItems.length,
        itemBuilder: (_, index) {
          final sticker = cartItems[index];
          return Dismissible(
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {
                print('Удаляем');
              }
            },
            key: UniqueKey(),
            background: Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 25,
                  ),
                  decoration: BoxDecoration( color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(15), ),
                  child: const FaIcon(FontAwesomeIcons.trash), ),
              ],
            ),
            child: Container(
              height: 80,
              width: double.infinity,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(width: 20,),
                  Image.asset(sticker.image, scale: 10),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sticker.name,
                        style:
                        Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "\$${sticker.price}",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      CounterButton(
                        onDecrementTap: () {
                          print('уменьшили');
                        },
                        onIncrementTap: () {
                          print('увеличили');
                        },
                        size: const Size(24, 24),
                        padding: 0,
                        label: Text(
                          sticker.quantity.toString(),
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Text(
                        "\$10",
                        style: AppTextStyle.h2Style.copyWith(
                            color: AppColor.accent
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => Container(height: 20,),
        );
  }

  Widget _bottomAppBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomAppBar(
        child: SizedBox(
          height: 250,
          child: Container(
            color: Theme.of(context).brightness ==
                Brightness.dark ? AppColor.dark : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            "\$111",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Taxes",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            "\$${5.00}",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text(
                            "\$${15.00}",
                            style: AppTextStyle.h2Style.copyWith(color: AppColor.accent,),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Checkout"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}