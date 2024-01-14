import 'package:boots_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/dimensions_of_screen.dart';
import '../appbar/_0_home_appbar_view.dart';
import '../list_views/_0_item_list_view.dart';
import '../widgets/_0_category_and_search_row.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> catOneAnimation;
  late Animation<Offset> catTwoAnimation;
  late Animation<Offset> filterButtonAnimation;
  late Animation<Offset> searchButtonAnimation;

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
        children: [
          const Padding(
            padding: EdgeInsets.only(
              right: 17,
              top: 20,
            ),
            child: HomeAppBarView(),
          ),
          const Gap(36),
          Padding(
            padding: const EdgeInsets.only(
              right: 32,
              //bottom: 35,
            ),
            child: CategoryAndSearchRow(
              catOneAnimation: catOneAnimation,
              catTwoAnimation: catTwoAnimation,
              filterButtonAnimation: filterButtonAnimation,
              searchButtonAnimation: searchButtonAnimation,
            ),
          ),
          SizedBox(
            height: DimensionsOfScreen.dimensionsOfHeight(context, kHeight),
            child: const ItemListView(),
          ),
        ],
      ),
    );
  }

  void initSildingText() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );
    catOneAnimation = Tween<Offset>(
      begin: const Offset(-40, 0),
      end: Offset.zero,
    ).animate(animationController);

    catTwoAnimation = Tween<Offset>(
      begin: const Offset(-130, 0),
      end: Offset.zero,
    ).animate(animationController);

    filterButtonAnimation = Tween<Offset>(
      begin: const Offset(-267, 0),
      end: Offset.zero,
    ).animate(animationController);

    searchButtonAnimation = Tween<Offset>(
      begin: const Offset(-329, 0),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }
}

// class HomeViewBodyCustomScroll extends StatelessWidget {
//   const HomeViewBodyCustomScroll({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       physics: const NeverScrollableScrollPhysics(),
//       slivers: [
//         const SliverToBoxAdapter(
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(
//                   right: 17,
//                   left: 32,
//                   top: 20,
//                 ),
//                 child: HomeAppBarView(),
//               ),
//               Gap(36),
//               Padding(
//                 padding: EdgeInsets.only(
//                   right: 32,
//                   left: 32,
//                   bottom: 35,
//                 ),
//                 child: CategoryAndSearchRow(),
//               ),
//               // Padding(
//               //   padding: const EdgeInsets.only(left: 18, right: 18),
//               //   child: SizedBox(
//               //     height:
//               //         DimensionsOfScreen.dimensionsOfHeight(context, kHeight),
//               //     child: const ItemListView(),
//               //   ),
//               // )
//             ],
//           ),
//         ),
//         SliverToBoxAdapter(
//           child: Padding(
//             padding: const EdgeInsets.only(
//               left: 18,
//               right: 18,
//               bottom: 8,
//             ),
//             child: SizedBox(
//               height: DimensionsOfScreen.dimensionsOfHeight(context, kHeight),
//               child: const ItemListView(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
