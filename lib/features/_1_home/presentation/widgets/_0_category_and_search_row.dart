import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/widgets/custom_animated_widgets.dart';
import '_1_0_category_text.dart';
import '_2_custom_icon_button_settings.dart';
import '_3_search_button_view.dart';

class CategoryAndSearchRow extends StatelessWidget {
  const CategoryAndSearchRow({
    super.key,
    required this.catOneAnimation,
    required this.catTwoAnimation,
    required this.filterButtonAnimation,
    required this.searchButtonAnimation,
  });

  final Animation<Offset> catOneAnimation,
      catTwoAnimation,
      filterButtonAnimation,
      searchButtonAnimation;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAnimatedWidget(
          animation: catOneAnimation,
          child: const CategoryText(
            text: "shoes",
            isSelected: true,
          ),
        ),
        CustomAnimatedWidget(
          animation: catTwoAnimation,
          child: const CategoryText(text: "Unisex socks"),
        ),
        CustomAnimatedWidget(
          animation: filterButtonAnimation,
          child: const CustomIconButton(iconPath: ImagesAssets.filterIcon),
        ),
        CustomAnimatedWidget(
          animation: searchButtonAnimation,
          child: const SearchButtonView(),
        ),
      ],
    );
  }
}
