import 'package:flutter/material.dart';
import '../../data/_data.dart';
import '../../ui_kit/_ui_kit.dart';


class StickerViewList extends StatelessWidget {
  const StickerViewList({super.key, required this.stickers, this.isReserved = false});

  final List<Sticker> stickers;
  final bool isReserved;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(top: 8.0),
          itemBuilder: (_, index) {
            return Container(
              width: 160,
              decoration: BoxDecoration(
                color: isDark ? AppColor.dark : Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            );
          },
          separatorBuilder: (_, __) {
            return Container(
              width: 50,
            );
          },
          itemCount: stickers.length
      ),
    );
  }

}
