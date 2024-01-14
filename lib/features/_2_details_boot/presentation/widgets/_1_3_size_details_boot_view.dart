import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/dimensions_of_screen.dart';
import '_1_4_size_details_boot_item_view.dart';

class SizeDetailsBootView extends StatelessWidget {
  const SizeDetailsBootView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Sizes",
          style: TextStyle(
            fontFamily: AssetsFonts.fRoboto,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Gap(30),
        SizedBox(
          height: 80,
          width: DimensionsOfScreen.dimensionsOfWidth(context, 40),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            clipBehavior: Clip.none,
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 14,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return const SizeDetailsBootItemView();
            },
          ),
        ),
      ],
    );
  }
}
