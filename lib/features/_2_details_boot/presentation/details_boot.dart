import 'package:boots_app/features/_2_details_boot/presentation/bodies/details_boot_body.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_color.dart';

class DetailsBoot extends StatelessWidget {
  const DetailsBoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 29,
          ),
          child: DetailsBootBody(),
        ),
      ),
    );
  }
}
