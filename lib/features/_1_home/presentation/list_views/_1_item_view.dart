import 'package:boots_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_animated_widgets.dart';
import '../widgets/_4_boot_image_view.dart';
import '../widgets/_5_rating_star.dart';

class ItemView extends StatelessWidget {
  const ItemView(
      {super.key,
      required this.index,
      required this.backgroundAnimation,
      required this.bootImageAnimation,
      required this.bootTextAnimation});

  final int index;
  final Animation<Offset> backgroundAnimation;
  final Animation<Offset> bootImageAnimation;
  final Animation<Offset> bootTextAnimation;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    int localIndex = 0;

    if (index == 1) {
      return const Gap(87);
    } else {
      if (index > 1) {
        //use localIndex plz
        localIndex = index - 1;
      }
      return Padding(
        padding: const EdgeInsets.only(
          bottom: 45,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CustomAnimatedWidget(
              animation: backgroundAnimation,
              child: SvgPicture.asset(
                ImagesAssets.backgroundBoot,
              ),
            ),
            Positioned(
              left: 8,
              bottom: 55,
              child: CustomAnimatedWidget(
                animation: bootImageAnimation,
                child: const BootImageView(),
              ),
            ),
            Positioned(
              top: 140,
              left: 13,
              child: CustomAnimatedWidget(
                animation: bootTextAnimation,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hermes rivera",
                      style: TextStyle(
                        fontFamily: AssetsFonts.fRoboto,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Gap(4),
                    SizedBox(
                      width: 135,
                      child: Text(
                        "Human foot can adapt to varied…..",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: AssetsFonts.fRoboto,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Gap(4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ 125.99",
                          style: TextStyle(
                            fontFamily: AssetsFonts.fMontserrat,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(5.4),
                        RatingStars(),
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontFamily: AssetsFonts.fPoppins,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}
