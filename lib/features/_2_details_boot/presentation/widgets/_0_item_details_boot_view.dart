import 'package:boots_app/core/utils/app_assets.dart';
import 'package:boots_app/core/widgets/custom_animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../_1_home/presentation/widgets/_4_boot_image_view.dart';
import '../../../_1_home/presentation/widgets/_5_rating_star.dart';

class ItemDetailsBootView extends StatelessWidget {
  const ItemDetailsBootView({
    super.key,
    required this.backgroundAnimation,
    required this.bootImageAnimation,
    required this.bootTextAnimation,
  });

  final Animation<Offset> backgroundAnimation;
  final Animation<Offset> bootImageAnimation;
  final Animation<Offset> bootTextAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomAnimatedWidget(
            animation: backgroundAnimation,
            child: SvgPicture.asset(
              ImagesAssets.backgroundBoot,
              height: 350,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 8,
            bottom: 60,
            child: CustomAnimatedWidget(
              animation: bootImageAnimation,
              child: const BootImageView(
                height: 300,
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 20,
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
                      fontSize: 26,
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
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Gap(5.4),
                      RatingStars(
                        height: 14.74,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontFamily: AssetsFonts.fPoppins,
                          fontSize: 12,
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
