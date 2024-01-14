import 'dart:ui';

import 'package:boots_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondTextView extends StatelessWidget {
  const SecondTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 30,
          sigmaY: 30,
        ),
        child: ClipPath(
          //clipper: CustomShapeContainer(),
          child: Container(
            height: 142,
            width: 364,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 36,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              "Shoes have been made from leather, wood or canvas, but are increasingly being made from rubber, plastics….",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AssetsFonts.fRoboto,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecoundTextSvg extends StatelessWidget {
  const SecoundTextSvg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(16),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 30,
              sigmaY: 30,
            ),
            child: SvgPicture.asset(
              height: 145,
              width: 360,
              ImagesAssets.lockContainer,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Positioned(
          top: 45,
          right: 0.05,
          height: 143,
          width: 360,
          child: Container(
            // height: 143,
            // width: 360,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: const Text(
              "Shoes have been made from leather, wood or canvas,  but are increasingly being made from rubber,  plastics….",
              textAlign: TextAlign.center,
              maxLines: 3,
              style: TextStyle(
                fontFamily: AssetsFonts.fRoboto,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
