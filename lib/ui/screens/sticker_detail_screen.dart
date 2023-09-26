import 'package:flutter/material.dart';
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
      onPressed: () {},
      child: sticker.isFavorite
          ? const Icon(AppIcon.heart)
          : const Icon(AppIcon.outlinedHeart),
    );
  }
}


