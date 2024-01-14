import 'package:boots_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_icon_button.dart';
import '../../../../core/widgets/title_view.dart';

class HomeAppBarView extends StatelessWidget {
  const HomeAppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleView(
          text1: "S h o .",
          text2: "Some shoes Collection",
        ),
        CustomAppBarIconButton(
          iconPath: ImagesAssets.scanIcon,
        )
      ],
    );
  }
}
