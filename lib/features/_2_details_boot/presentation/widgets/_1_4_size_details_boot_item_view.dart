import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';

class SizeDetailsBootItemView extends StatelessWidget {
  const SizeDetailsBootItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          ImagesAssets.smallSizeBackgroundBoot,
          height: 40,
        ),
        const Center(
          child: Text(
            "6.5",
            style: TextStyle(
              fontFamily: AssetsFonts.fRoboto,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
