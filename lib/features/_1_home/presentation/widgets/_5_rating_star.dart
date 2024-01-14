import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
    this.height = 8,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 2,
      ),
      child: SizedBox(
        height: height,
        width: (height + 1) * 5,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return SvgPicture.asset(
              ImagesAssets.starImage,
              height: height,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            );
            // return const Icon(
            //   Icons.star,
            //   color: Colors.white,
            // );
          },
        ),
      ),
    );
  }
}
