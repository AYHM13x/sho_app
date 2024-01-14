import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';
import 'appbar/_1_custom_buttom_navigation_bar.dart';
import 'bodies/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 32,
          ),
          child: HomeViewBody(),
        ),
      ),
      bottomNavigationBar: CustomButtomBartwo(),
    );
  }
}
