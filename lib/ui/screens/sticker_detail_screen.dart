import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sun_stickers/ui/_ui.dart';
import 'package:sun_stickers/ui_kit/_ui_kit.dart';
import 'package:sun_stickers/data/app_data.dart';

class StickerDetails extends StatefulWidget {
  const StickerDetails({super.key});

  @override
  State<StickerDetails> createState() => StickerDetailsState();
}

class StickerDetailsState extends State<StickerDetails> {
  final sticker = AppData.stickers[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Center(child: Image.asset(sticker.image, scale: 2)),
      floatingActionButton: _floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(
        'Sticker details screen',
        style: TextStyle(color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
        ),
      ],
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      elevation: 0.0,
      backgroundColor: AppColor.accent,
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: sticker.isFavorite
          ? const Icon(AppIcon.heart)
          : const Icon(AppIcon.outlinedHeart),
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
              height: 300,
              child: Container(
                color: Theme.of(context).brightness == Brightness.dark
                  ? AppColor.dark
                  : Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            RatingBar.builder(
                              itemPadding: EdgeInsets.zero,
                              itemSize: 20,
                              initialRating: sticker.score,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              glow: false,
                              ignoreGestures: true,
                              itemBuilder: (_, __) => const FaIcon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.yellow,
                              ),
                              onRatingUpdate: (rating) {
                                print('rating');
                              },
                            ),
                            const SizedBox(width: 15,),
                            Text(
                              sticker.score.toString(),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "(${sticker.voter})",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${sticker.price}",
                              style: Theme.of(context).textTheme.displayLarge?.copyWith(color: AppColor.accent),
                            ),
                            CounterButton(
                                onIncrementTap: (){},
                                onDecrementTap: (){},
                                label: Text(
                                  sticker.quantity.toString(),
                                  style: Theme.of(context).textTheme.displayLarge,
                                ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Text(
                          "Description",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 15,),
                        Text(
                          sticker.description,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 30,),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Add to cart"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
          )
      ),
    );
  }
}


