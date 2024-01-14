import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.txtSize,
    required this.isSelected,
  });

  final Size txtSize;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return SizedBox(
        width: txtSize.width,
        child: const Divider(
          height: 2,
          color: AppColor.divierColor,
          thickness: 2,
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
