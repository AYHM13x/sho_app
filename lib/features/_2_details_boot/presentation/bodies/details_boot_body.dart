import 'package:boots_app/core/widgets/custom_animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../appbars/details_boot_appbar_view.dart';
import '../widgets/_1_0_user_choice.dart';
import '../widgets/_0_item_details_boot_view.dart';
import '../widgets/_2_desc_details_boot_view.dart';
import '../widgets/_3_0_custom_360_and_add_cert_view.dart';

class DetailsBootBody extends StatefulWidget {
  const DetailsBootBody({super.key});

  @override
  State<DetailsBootBody> createState() => _DetailsBootBodyState();
}

class _DetailsBootBodyState extends State<DetailsBootBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> backgroundAnimation;
  late Animation<Offset> bootImageAnimation;
  late Animation<Offset> bootTextAnimation;
  late Animation<Offset> choiceAndDescSectionAnimation;

  @override
  void initState() {
    super.initState();

    initSildingText();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetailsBootAppBarView(),
          const Gap(34),
          SizedBox(
            height: 350,
            child: ItemDetailsBootView(
              backgroundAnimation: backgroundAnimation,
              bootImageAnimation: bootImageAnimation,
              bootTextAnimation: bootTextAnimation,
            ),
          ),
          CustomAnimatedWidget(
            animation: choiceAndDescSectionAnimation,
            child: const ChoiceAndDescSection(),
          ),
        ],
      ),
    );
  }

  void initSildingText() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
      // animationBehavior: AnimationBehavior.preserve,
    );
    backgroundAnimation = Tween<Offset>(
      begin: const Offset(-50, 0),
      end: Offset.zero,
    ).animate(animationController);

    bootImageAnimation = Tween<Offset>(
      begin: const Offset(-100, 0),
      end: Offset.zero,
    ).animate(animationController);

    bootTextAnimation = Tween<Offset>(
      begin: const Offset(50, 0),
      end: Offset.zero,
    ).animate(animationController);

    choiceAndDescSectionAnimation = Tween<Offset>(
      begin: const Offset(0, 50),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }
}

class ChoiceAndDescSection extends StatelessWidget {
  const ChoiceAndDescSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserChoice(),
        Gap(24.2),
        DescDetailsBootView(),
        Gap(32),
        Custom360AndAddCertView(),
      ],
    );
  }
}
