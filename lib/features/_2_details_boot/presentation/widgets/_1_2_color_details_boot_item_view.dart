import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../_1_home/presentation/widgets/_4_boot_image_view.dart';

class ColorDetailsBootItemView extends StatelessWidget {
  const ColorDetailsBootItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            ImagesAssets.smallBackgroundBoot,
            width: 66,
          ),
          const Positioned(
            bottom: 45,
            child: BootImageView(
              height: 80,
            ),
          )
        ],
      ),
    );
  }
}
