import 'package:flutter/material.dart';
import 'package:sun_stickers/ui/screens/_screens.dart';
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
            Sticker sticker = isReserved ? stickers.reversed.toList()[index] : stickers[index];
            return GestureDetector(
              onTap: (){
                print("click on card");
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => StickerDetails())
                );
              },
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  color: isDark ? AppColor.dark : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(sticker.image, scale: 6,),
                      Text(
                        "\$${sticker.price}",
                        style: AppTextStyle.h3Style.copyWith(color: AppColor.accent),
                      ),
                      Text(
                        sticker.name,
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
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
