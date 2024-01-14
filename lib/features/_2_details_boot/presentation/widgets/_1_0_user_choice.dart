import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '_1_1_color_details_boot_view.dart';
import '_1_3_size_details_boot_view.dart';

class UserChoice extends StatelessWidget {
  const UserChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ColorDetailsBootView(),
        SizedBox(
          width: 5,
          height: 160,
          child: VerticalDivider(
            width: 5,
            color: AppColor.verticalDivierColor,
            thickness: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: SizeDetailsBootView(),
        ),
      ],
    );
  }
}
