import 'package:boots_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../constant.dart';

class DescDetailsBootView extends StatelessWidget {
  const DescDetailsBootView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Vulnerable ",
          style: TextStyle(
            fontFamily: AssetsFonts.fRoboto,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        Gap(8),
        Text(
          kDesc,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: AssetsFonts.fRoboto,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
