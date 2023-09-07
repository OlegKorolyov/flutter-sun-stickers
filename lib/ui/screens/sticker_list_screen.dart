import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart' hide Badge;

import 'package:sun_stickers/ui_kit/_ui_kit.dart';


class StickerList extends StatefulWidget {
  const StickerList({super.key});

  @override
  State<StatefulWidget> createState() => StickerListState();
}

class StickerListState extends State<StickerList> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: _appBar(context),
    body: Padding(
      padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Morning, Sunny",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                "What sticker do you want\nto buy today",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              _searchBar(),
              Text(
                "Available for you",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              _categories(),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 5),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best stickers of the week",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "See all",
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith( color: AppColor.accent),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
  );

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const FaIcon(FontAwesomeIcons.dice),
        onPressed: (){},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.location_on_outlined, color: AppColor.accent),
          Text("Location",
              style: Theme
                  .of(context)
                  .textTheme
                  .bodyLarge)
        ],),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Badge(
            badgeStyle: const BadgeStyle(badgeColor: AppColor.accent),
            badgeContent: const Text(
              "2",
              style: TextStyle(color: Colors.white),),
            position: BadgePosition.topStart(start: -3),
            child: const Icon(Icons.notifications_none, size: 30),),
        )
      ],
    );
  }

  Widget _searchBar() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search sticker",
            prefixIcon: Icon(Icons.search, color: Colors.grey,),
        ),
      ),
    );
  }

  Widget _categories() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: (){
                  print('click on category');
                },
                child: Container(
                  width: 100,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: AppColor.accent,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Text(
                    'Kebab',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
              );
            } ,
            separatorBuilder: (_, __) {
              return Container(
                width: 15,
                height: 30,
              );
            },
            itemCount: 20
        ),
      )
    );
  }
}