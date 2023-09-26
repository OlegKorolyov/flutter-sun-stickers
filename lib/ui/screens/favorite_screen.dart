import 'package:flutter/material.dart';
import 'package:sun_stickers/ui/_ui.dart';
import 'package:sun_stickers/ui_kit/_ui_kit.dart';
import 'package:sun_stickers/data/app_data.dart';
import 'package:sun_stickers/data/_data.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<StatefulWidget> createState() => FavoriteScreenState();
}

class FavoriteScreenState extends State<FavoriteScreen>{
  var favoriteItems = AppData.favoriteItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBAr(context),
      body: EmptyWrapper(
        type: EmptyWrapperType.favorite,
        title: "Empty favorite",
        isEmpty: favoriteItems.isEmpty,
        child: _favoriteListView(),
      ),
    );
  }

  PreferredSizeWidget _appBAr(BuildContext context) {
    return AppBar(
      title: Text(
        "Favorite",
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }

  Widget _favoriteListView() {
    return ListView.separated(
        padding: const EdgeInsets.all(30),
        itemBuilder: (_, index) {
          Sticker sticker = favoriteItems[index];
          return Card(
              color: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : AppColor.dark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), ),
            child: ListTile(
              title: Text(
                sticker.name,
                style:
                Theme.of(context).textTheme.headlineMedium,
              ),
              leading: Image.asset(sticker.image),
              subtitle: Text(
                sticker.description,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              trailing: const Icon(AppIcon.heart, color: Colors.redAccent),
            ),
          );
        },
        separatorBuilder: (_, __) {
          return Container(height: 20,);
        },
        itemCount: favoriteItems.length
    );
  }

}