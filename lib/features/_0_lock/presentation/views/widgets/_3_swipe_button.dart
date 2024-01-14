import 'dart:ui';

import 'package:boots_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../../../../_1_home/presentation/blank_home_view.dart';
import '../lock_view.dart';

class SwipeButton extends StatefulWidget {
  const SwipeButton({super.key});

  @override
  State<SwipeButton> createState() => _SwipeButtonState();
}

class _SwipeButtonState extends State<SwipeButton> {
  bool isFinished = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: SwipeableButtonView(
          buttonText: "           Swipe      >>>",
          buttonColor: Colors.grey.withOpacity(0.2),
          buttontextstyle: const TextStyle(
            fontFamily: AssetsFonts.fRoboto,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          buttonWidget: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
          activeColor: Colors.white.withOpacity(0.2),
          isFinished: isFinished,
          onWaitingProcess: () {
            Future.delayed(const Duration(milliseconds: 100), () {
              setState(() {
                isFinished = true;
              });
            });
          },
          onFinish: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.bottomToTopPop,
                duration: const Duration(milliseconds: 2000),
                childCurrent: const LockView(),
                child: const BlankHomeView(),
              ),
            );
            setState(() {
              isFinished = false;
            });
          },
        ),
      ),
    );
  }
}
