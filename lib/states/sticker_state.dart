import 'package:flutter/material.dart';
import 'package:sun_stickers/data/_data.dart';
import 'package:sun_stickers/data/app_data.dart';
import 'package:sun_stickers/ui/_ui.dart';

class StickerState {
  StickerState._();
  static final _instance = StickerState._();
  factory StickerState() => _instance;

  GlobalKey<CartScreenState> cartKey = GlobalKey();
  GlobalKey<FavoriteScreenState> favoriteKey = GlobalKey();

  List<StickerCategory> categories = AppData.categories;
  List<Sticker> stickers = AppData.stickers;
  List<Sticker> stickersByCategory = AppData.stickers;
  List<Sticker> get cart => stickers.where((element) => element.cart).toList();
  List<Sticker> get favorite => stickers.where((element) => element.isFavorite).toList();
  ValueNotifier<bool> isLigth = ValueNotifier(true);

  Future<void> onCategoryTap(StickerCategory category) async {
    categories.map((e) {
      e.isSelected = e.type == category.type;
    }).toList();
    if (category.type == StickerType.all) {
      stickersByCategory = stickers;
    } else {
      stickersByCategory = stickers.where((e) =>
        e.type == category.type).toList();
    }
  }
  Future<void> onIncreaseQuantityTap(Sticker sticker) async {}
  Future<void> onDecreaseQuantityTa(Sticker sticker) async {}
  Future<void> onAddToCartTap(Sticker sticker) async {}
  Future<void> onRemoveFromCartTap(Sticker sticker) async {}
  Future<void> onCheckOutTap() async {}
  Future<void> onAddRemoveFavoriteTap(Sticker sticker) async {}

  void toggleTheme() {}

  String stickerPrice(Sticker sticker) { return "";}
  double get subtotal {return 0.0;}
}