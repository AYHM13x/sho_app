import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../_2_details_boot/presentation/details_boot.dart';
import '_1_item_view.dart';

class ItemListView extends StatefulWidget {
  const ItemListView({super.key});

  @override
  State<ItemListView> createState() => _ItemListViewState();
}

class _ItemListViewState extends State<ItemListView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> backgroundAnimation;
  late Animation<Offset> bootImageAnimation;
  late Animation<Offset> bootTextAnimation;

  @override
  void initState() {
    super.initState();
    initSildingText();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   animationController.dispose();
  // }

  void initSildingText() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    backgroundAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-50, 0),
    ).animate(animationController);

    bootImageAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-100, 0),
    ).animate(animationController);

    bootTextAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(50, 0),
    ).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: EdgeInsets.zero,
      crossAxisSpacing: 22,
      itemCount: 20,
      crossAxisCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () async {
            animationController.forward();
            await Future.delayed(const Duration(milliseconds: 100), () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const DetailsBoot();
                  },
                ),
              );
            });
            animationController.reset();
          },
          child: ItemView(
            index: index,
            backgroundAnimation: backgroundAnimation,
            bootImageAnimation: bootImageAnimation,
            bootTextAnimation: bootTextAnimation,
          ),
        );
      },
    );
  }
}

// class OldItemListView extends StatelessWidget {
//   const OldItemListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       //physics: const NeverScrollableScrollPhysics(),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           SizedBox(
//             width: DimensionsOfScreen.dimensionsOfWidth(context, kWidth),
//             height: DimensionsOfScreen.dimensionsOfHeight(context, kHeight),
//             child: ListView.builder(
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: kNum,
//               itemBuilder: (context, index) {
//                 return ItemView(
//                   index: index,
//                 );
//               },
//             ),
//           ),
//           const Gap(5),
//           Padding(
//             padding: const EdgeInsets.only(top: 87),
//             child: SizedBox(
//               width: DimensionsOfScreen.dimensionsOfWidth(context, kWidth),
//               height: DimensionsOfScreen.dimensionsOfHeight(context, kHeight),
//               child: ListView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: kNum,
//                 itemBuilder: (context, index) {
//                   return ItemView(
//                     index: index,
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
