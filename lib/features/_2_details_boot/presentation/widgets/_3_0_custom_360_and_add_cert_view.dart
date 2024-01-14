import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_assets.dart';
import '_3_1_add_to_cert_button_view.dart';

class Custom360AndAddCertView extends StatelessWidget {
  const Custom360AndAddCertView({super.key});
  static const bigradius = 90.0, smallRaduis = 15.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(smallRaduis),
          bottomRight: Radius.circular(smallRaduis),
          topRight: Radius.circular(bigradius),
          bottomLeft: Radius.circular(bigradius),
        ),
        color: Color(0xff727D7C),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Gap(5),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                ImagesAssets.image360,
                height: 73,
              ),
            ),
            const SizedBox(
              height: 46,
              width: 154,
              child: AddToCertButtonView(),
            ),
            const Gap(5),
          ],
        ),
      ),
    );
  }
}
