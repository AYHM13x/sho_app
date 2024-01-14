import 'package:boots_app/core/utils/app_assets.dart';
import 'package:boots_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class SearchButtonView extends StatelessWidget {
  const SearchButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: AppColor.searchButtonColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: borderRadiusOfSearchButton(),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadiusOfSearchButton(),
          ),
        ),
        child: const Text(
          "Search….",
          style: TextStyle(
            fontFamily: AssetsFonts.fPoppins,
            fontSize: 8,
            fontWeight: FontWeight.w500,
            color: AppColor.searchTextColor,
          ),
        ),
      ),
    );
  }

  BorderRadius borderRadiusOfSearchButton() {
    return const BorderRadius.only(
      topLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
      topRight: Radius.circular(8),
      bottomLeft: Radius.circular(8),
    );
  }
}
