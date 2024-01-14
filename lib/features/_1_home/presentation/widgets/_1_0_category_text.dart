import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_color.dart';
import '_1_1_custom_divider.dart';

class CategoryText extends StatelessWidget {
  const CategoryText({
    super.key,
    required this.text,
    this.isSelected = false,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontFamily: AssetsFonts.fPoppins,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: isSelected ? Colors.white : AppColor.notSelectaedCategory,
    );

    final Size txtSize = _getTextSize(text, textStyle);

    return Column(
      children: [
        Text(
          text,
          style: textStyle,
        ),
        const Gap(4),
        CustomDivider(
          txtSize: txtSize,
          isSelected: isSelected,
        ),
      ],
    );
  }

  Size _getTextSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
