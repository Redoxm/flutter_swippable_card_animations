import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter_swippable_card_animations/presentation/declarations/constants/constants.dart';
import 'package:flutter_swippable_card_animations/presentation/declarations/constants/images/image_files.dart';

class SwiperBuilder extends StatelessWidget {
  const SwiperBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: kPadding / 2,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Swiper(
              itemWidth: 400,
              itemHeight: 225,
              loop: true,
              duration: 1200,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imagepath[index])),
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              },
              itemCount: imagepath.length,
              layout: SwiperLayout.STACK,
            ),
          ),
        ),
      ),
    );
  }
}
