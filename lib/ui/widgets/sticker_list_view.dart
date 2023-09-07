import 'package:flutter/material.dart';
import '../../data/_data.dart';


class StickerViewList extends StatelessWidget {
  const StickerViewList({super.key, required this.stickers, this.isReserved = false});

  final List<Sticker> stickers;
  final bool isReserved;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(top: 8.0),
          itemBuilder: (_, index) {
            return Container(
              width: 160,
              decoration: const BoxDecoration(
                color: Colors.orange,
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
