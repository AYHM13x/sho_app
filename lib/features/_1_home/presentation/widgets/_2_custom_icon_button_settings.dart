import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_color.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.iconPath,
    this.onPressed,
  });
  final String iconPath;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: const BoxDecoration(
        color: AppColor.primaryColor,
        shape: BoxShape.rectangle,
      ),
      //button in app bar
      child: Center(
        child: SvgPicture.asset(
          iconPath,
        ),
      ),
    );
  }
}
