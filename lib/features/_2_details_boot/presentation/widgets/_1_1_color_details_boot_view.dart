import 'package:boots_app/core/utils/dimensions_of_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_assets.dart';
import '_1_2_color_details_boot_item_view.dart';

class ColorDetailsBootView extends StatelessWidget {
  const ColorDetailsBootView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "02 Colour",
          style: TextStyle(
            fontFamily: AssetsFonts.fRoboto,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Gap(50),
        SizedBox(
          width: DimensionsOfScreen.dimensionsOfWidth(context, 46),
          height: 100,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return const ColorDetailsBootItemView();
            },
          ),
        )
      ],
    );
  }
}
