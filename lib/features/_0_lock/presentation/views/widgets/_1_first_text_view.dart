import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class FirstTextView extends StatelessWidget {
  const FirstTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tradition",
          style: TextStyle(
            fontFamily: AssetsFonts.fLuminari,
            fontSize: 60,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "ally",
          style: TextStyle(
            fontFamily: AssetsFonts.fLuminari,
            fontSize: 60,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
