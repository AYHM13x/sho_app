import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    super.key,
    required this.image,
    this.height = 30,
  });
  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      height: height,
    );
  }
}
