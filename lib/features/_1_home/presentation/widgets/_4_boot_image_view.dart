import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';

class BootImageView extends StatelessWidget {
  const BootImageView({
    super.key,
    this.height = 180,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 45,
      child: Transform.flip(
        flipX: true,
        child: SvgPicture.asset(
          ImagesAssets.bootImage,
          height: height,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
