import 'package:boots_app/core/utils/app_color.dart';
import 'package:boots_app/features/_1_home/presentation/home_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class BlankHomeView extends StatefulWidget {
  const BlankHomeView({super.key});

  @override
  State<BlankHomeView> createState() => _BlankHomeViewState();
}

class _BlankHomeViewState extends State<BlankHomeView> {
  @override
  void initState() {
    super.initState();

    navigateToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primaryColor,
    );
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(milliseconds: 100), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 1000),
          childCurrent: const BlankHomeView(),
          child: const HomeView(),
        ),
      );
    });
  }
}
