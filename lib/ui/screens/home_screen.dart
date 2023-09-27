import 'package:flutter/material.dart';
import '_screens.dart';
import 'package:sun_stickers/data/app_data.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super( key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final List<Widget> screens = [const StickerList(), const CartScreen(), const FavoriteScreen(), const ProfileScreen()];
  int currentIndex = 0;

  void onTabTap(int index) {
    if (currentIndex == index) return;
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTap,
        selectedFontSize: 0,
        items: AppData.bottomNavigationItems.map(
            (element) {
              return BottomNavigationBarItem(
                icon: element.disableIcon,
                label: element.label,
                activeIcon: element.enableIcon,
              );
            },
        ).toList(),
      ),
    );
  }

}