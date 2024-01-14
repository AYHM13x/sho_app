import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class TitleView extends StatelessWidget {
  const TitleView({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          //"S h o .",
          style: const TextStyle(
            fontFamily: AssetsFonts.fBebasNeue,
            fontSize: 48,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          text2,
          //"The design of shoes",
          style: const TextStyle(
            fontFamily: AssetsFonts.fPoppins,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
