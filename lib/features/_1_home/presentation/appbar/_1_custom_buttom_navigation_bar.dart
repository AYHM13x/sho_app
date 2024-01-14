import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../widgets/custom_svg_picture.dart';

class CustomButtomBartwo extends StatelessWidget {
  const CustomButtomBartwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          height: 85.64,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomSvgPicture(
                image: ImagesAssets.buttomHomeIcon,
              ),
              CustomSvgPicture(
                image: ImagesAssets.buttomUserIcon,
              ),
              CustomSvgPicture(
                image: ImagesAssets.buttomCrownIcon,
              ),
              CustomSvgPicture(
                image: ImagesAssets.buttomNotificationIcon,
              ),
              CustomSvgPicture(
                image: ImagesAssets.buttomSettingIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomButtomNavigationBar extends StatelessWidget {
//   const CustomButtomNavigationBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: BackdropFilter(
//         filter: ImageFilter.blur(
//           sigmaX: 30,
//           sigmaY: 30,
//         ),
//         child: BottomNavigationBar(
//           showSelectedLabels: false,
//           showUnselectedLabels: false,
//           //backgroundColor: Colors.transparent,
//           items: [
//             BottomNavigationBarItem(
//               label: "Home",
//               icon: SvgPicture.asset(
//                 ImagesAssets.buttomHomeIcon,
//                 colorFilter:
//                     const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//               ),
//             ),
//             BottomNavigationBarItem(
//               label: "User",
//               icon: SvgPicture.asset(
//                 ImagesAssets.buttomUserIcon,
//                 colorFilter:
//                     const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//               ),
//             ),
//             BottomNavigationBarItem(
//               label: "Crown",
//               icon: SvgPicture.asset(
//                 ImagesAssets.buttomCrownIcon,
//                 colorFilter:
//                     const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//               ),
//             ),
//             BottomNavigationBarItem(
//               label: "Notification",
//               icon: SvgPicture.asset(
//                 ImagesAssets.buttomNotificationIcon,
//                 colorFilter:
//                     const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//               ),
//             ),
//             BottomNavigationBarItem(
//               label: "Setting",
//               icon: SvgPicture.asset(
//                 ImagesAssets.buttomSettingIcon,
//                 colorFilter:
//                     const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }