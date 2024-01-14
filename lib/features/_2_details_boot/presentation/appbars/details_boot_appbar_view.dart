import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/widgets/custom_icon_button.dart';

class DetailsBootAppBarView extends StatelessWidget {
  const DetailsBootAppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomAppBarIconButton(
          iconPath: ImagesAssets.arrowLeftImage,
          onPressed: () async {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
