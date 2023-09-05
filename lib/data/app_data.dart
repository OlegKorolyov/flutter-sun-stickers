import 'package:flutter/material.dart';
import '../ui_kit/_ui_kit.dart';
import 'models/_models.dart';

class AppData {
  const AppData._();
  static const dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting "
      "industry. Lorem Ipsum has been the industry's standard dummy text ever "
  "since the 1500s, when an unknown printer took a galley of type and "
  "scrambled it to make a type specimen book. It has survived not only five "
  "centuries, but also the leap into electronic typesetting, remaining "
  "essentially unchanged. It was popularised in the 1960s with the release "
  "of Letraset sheets containing Lorem Ipsum passages, and more recently "
  "with desktop publishing software like Aldus PageMaker including versions "
  "of Lorem Ipsum.";

  static List<Sticker> stickers = [
  Sticker( 1,
  AppAsset.apple, "Apple",
  10.0,
  1,
  false,
  dummyText,
  5.0, StickerType.fruit, 150,
  false, ),
  Sticker( 2,
  AppAsset.ball, "Ball",
  15.0,
  1,
  false, dummyText,
  3.5, StickerType.toy, 652,
  false, ),
  Sticker( 3,
  AppAsset.balloon, "Balloon",
  20.0,
  1,
  false, dummyText,
  4.0, StickerType.toy, 723,
  false, ),
  Sticker( 4,
  AppAsset.bear, "Bear",
  40.0,
  1,
  false, dummyText,
  2.5, StickerType.toy, 456,
  false, ),
  Sticker( 5,
  AppAsset.berry, "Strawberry", 10.0,
  1,
  false,
  dummyText,
  4.5, StickerType.berry, 650,
  false, ),
  Sticker( 6,
  AppAsset.dandelion, "Dandelion",
  20.0,
  1,
  false,
  dummyText,
  1.5, StickerType.plant, 350,
  false, ),
  Sticker( 7,
  AppAsset.dinosaur, "Dinosaur",
  12.0,
  1,
  false,
  dummyText,
  3.5, StickerType.fauna, 265,
  false, ),
  Sticker( 8,
  AppAsset.dolphin, "Dolphin",
  30.0,
  1,
  false,
  dummyText,
  4.0, StickerType.fauna, 890,
  false, ),
    Sticker( 9,
      AppAsset.elephant, "Elephant",
      10.0,
      1,
      false,
      dummyText,
      5.0, StickerType.fauna, 900,
      false, ),
    Sticker( 10,
      AppAsset.firtree, "Fir-tree",
      15.0,
      1,
      false,
      dummyText,
      3.5, StickerType.plant, 420,
      false, ),
    Sticker( 11,
      AppAsset.fish, "Fish",
      25.0,
      1,
      false,
      dummyText,
      3.0, StickerType.fauna, 263,
      false, ),
    Sticker( 12,
      AppAsset.flower, "Flower",
      20.0,
      1,
      false,
      dummyText,
      5.0, StickerType.plant, 560,
      false, ),
    Sticker( 13,
      AppAsset.home, "Home",
      15.0,
      1,
      false,
      dummyText,
      2.5, StickerType.other, 361,
      false, ),
    Sticker( 14,
      AppAsset.mushroom, "Mushroom",
      12.0,
      1,
      false,
      dummyText,
      4.5, StickerType.other, 915,
      false, ),
    Sticker( 15,
      AppAsset.pear, "Pear",
      10.0,
      1,
      false,
      dummyText,
      3.5, StickerType.fruit, 210,
      false,
    ), Sticker(
      16, AppAsset.penguin, "Penguin",
      5.0,
      1,
      false,
      dummyText,
      4.0, StickerType.fauna, 304,
      false,
    ),

    Sticker( 17,
      AppAsset.raccoon, "Raccoon",
      15.0,
      1,
      false,
      dummyText,
      4.5, StickerType.fauna, 356,
      false, ),
    Sticker( 18,
      AppAsset.snail, "Snail",
      13.0,
      1,
      false,
      dummyText,
      3.0, StickerType.fauna, 203,
      false, ),
    Sticker( 19,
      AppAsset.star, "Star",
      20.0,
      1,
      false, dummyText,
      1.0, StickerType.toy, 278,
      false, ),
    Sticker( 20,
      AppAsset.train, "Train",
      10.0,
      1,
      false, dummyText,
      1.5, StickerType.toy, 734,
      false, ),

    Sticker( 21,
      AppAsset.umbrella, "Umbrella",
      20.0,
      1,
      false,
      dummyText,
      2.5, StickerType.other, 671,
      false, ),
    Sticker( 22,
      AppAsset.watermelon, "Watermelon",
      18.0,
      1,
      false,
      dummyText,
      3.5, StickerType.berry, 567,
      false, ),
  ];

  static List<BottomNavigationItem> bottomNavigationItems = [
    BottomNavigationItem(
    const Icon(Icons.home_outlined), const Icon(Icons.home), 'Home', isSelected: true,
    ),
    BottomNavigationItem(
      const Icon(Icons.shopping_cart_outlined), const Icon(Icons.shopping_cart), 'Shopping cart',
    ),
    BottomNavigationItem(
      const Icon(AppIcon.outlinedHeart), const Icon(AppIcon.heart), 'Favorite',
    ),
    BottomNavigationItem(
      const Icon(Icons.person_outline), const Icon(Icons.person), 'Profile',
    ) ];

  static List<StickerCategory> categories = [
    StickerCategory(StickerType.all, true),
    StickerCategory(StickerType.toy, false),
    StickerCategory(StickerType.fauna, false),
    StickerCategory(StickerType.plant, false),
    StickerCategory(StickerType.berry, false),
    StickerCategory(StickerType.fruit, false),
    StickerCategory(StickerType.other, false),
  ];
}
