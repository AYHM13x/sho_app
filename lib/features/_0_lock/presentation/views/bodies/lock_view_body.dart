import 'package:boots_app/core/widgets/title_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/_0_lock_image_view.dart';
import '../widgets/_1_first_text_view.dart';
import '../widgets/_2_second_text_view.dart';
import '../widgets/_3_swipe_button.dart';

class LockViewBody extends StatelessWidget {
  const LockViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        LockImageView(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 26, left: 32),
              child: TitleView(
                text1: "S h o .",
                text2: "The design of shoes",
              ),
            ),
            Expanded(flex: 8, child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(
                left: 32,
              ),
              child: FirstTextView(),
            ),
            Gap(5),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
              ),
              child: SecondTextView(),
              // child: SecondTextView(),
            ),
            Expanded(flex: 3, child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 51,
                    width: 190,
                    child: SwipeButton(),
                  ),
                ],
              ),
            ),
            Expanded(flex: 1, child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
