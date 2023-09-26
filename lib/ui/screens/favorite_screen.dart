import 'package:flutter/material.dart';
import 'package:sun_stickers/ui/_ui.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<StatefulWidget> createState() => FavoriteScreenState();
}

class FavoriteScreenState extends State<FavoriteScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBAr(context),
      body: EmptyWrapper(
        type: EmptyWrapperType.favorite,
        title: "Empty favorite",
        isEmpty: true,
        child: Container(),
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

}